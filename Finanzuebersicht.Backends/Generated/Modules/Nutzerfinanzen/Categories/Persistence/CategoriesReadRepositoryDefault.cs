using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public class CategoriesReadRepositoryDefault : ICategoriesReadRepositoryDefault
    {
        protected readonly IPaginationContext paginationContext;

        protected readonly FinanzuebersichtDbContextRaw dbContext;

        public CategoriesReadRepositoryDefault(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContextRaw dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public CategoryDto GetCategory(Guid categoryId)
        {
            EfCategoryDto efCategoryDto = dbContext.Categories
                .Where(efCategoryDto => efCategoryDto.Id == categoryId)
                .SingleOrDefault();

            if (efCategoryDto == null)
            {
                throw new NotFoundResultException("Category ({id}) konnte nicht gefunden werden.", categoryId);
            }

            return CategoryDto.FromEfCategoryDto(efCategoryDto);
        }

        public CategoryDtoExpanded GetCategoryDetail(Guid categoryId)
        {
            EfCategoryDto efCategoryDto = this.dbContext.Categories
                .Include(efCategoryDto => efCategoryDto.SuperCategory)
                .Include(efCategoryDto => efCategoryDto.ChildCategories)
                .Include(efCategoryDto => efCategoryDto.AccountingEntries)
                .Include(efCategoryDto => efCategoryDto.CategorySearchTerms)
                .Where(efCategoryDto => efCategoryDto.Id == categoryId)
                .SingleOrDefault();

            if (efCategoryDto == null)
            {
                throw new NotFoundResultException("Category ({id}) konnte nicht gefunden werden.", categoryId);
            }

            return CategoryDtoExpanded.FromEfCategoryDto(efCategoryDto);
        }

        public IDbPagedResult<CategoryDtoExpanded> GetPagedCategories()
        {
            var efCategories = this.dbContext.Categories
                .Include(efCategoryDto => efCategoryDto.SuperCategory);

            return Pagination.Execute(
                efCategories,
                this.paginationContext,
                efCategoryDto => CategoryDtoExpanded.FromEfCategoryDto(efCategoryDto));
        }
    }
}
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    internal class CategoriesCrudRepository : ICategoriesCrudRepository
    {
        private readonly IPaginationContext paginationContext;

        private readonly FinanzuebersichtDbContext dbContext;

        public CategoriesCrudRepository(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContext dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public void CreateCategory(CategoryDto category)
        {
            EfCategoryDto efCategoryDto = CategoryDto.ToEfCategoryDto(category);

            this.dbContext.Categories.Add(efCategoryDto);
            this.dbContext.SaveChanges();
        }

        public void DeleteCategory(Guid categoryId)
        {
            EfCategoryDto efCategoryDto = this.dbContext.Categories
                .Where(efCategoryDto => efCategoryDto.Id == categoryId)
                .SingleOrDefault();

            if (efCategoryDto == null)
            {
                throw new NotFoundResultException("Category ({id}) konnte nicht gefunden werden.", categoryId);
            }

            this.dbContext.Categories.Remove(efCategoryDto);
            this.dbContext.SaveChanges();
        }

        public CategoryDto GetCategory(Guid categoryId)
        {
            EfCategoryDto efCategoryDto = this.dbContext.Categories
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
                .Include(efCategoryDto => efCategoryDto.Category)
                .Include(efCategoryDto => efCategoryDto.Categories)
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
                .Include(efCategoryDto => efCategoryDto.Category);

            return Pagination.Execute(
                efCategories,
                this.paginationContext,
                efCategoryDto => CategoryDtoExpanded.FromEfCategoryDto(efCategoryDto));
        }

        public void UpdateCategory(CategoryDtoDefaultUpdate category)
        {
            EfCategoryDto efCategoryDto = this.dbContext.Categories
                .Where(efCategoryDto => efCategoryDto.Id == category.Id)
                .SingleOrDefault();

            if (efCategoryDto == null)
            {
                throw new NotFoundResultException("Category ({id}) konnte nicht gefunden werden.", category.Id);
            }

            CategoryDtoData.UpdateEfCategoryDto(efCategoryDto, category);

            this.dbContext.SaveChanges();
        }
    }
}
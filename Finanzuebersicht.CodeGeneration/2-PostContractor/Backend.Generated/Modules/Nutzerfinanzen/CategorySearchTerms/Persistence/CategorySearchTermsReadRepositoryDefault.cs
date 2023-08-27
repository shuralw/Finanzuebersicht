using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class CategorySearchTermsReadRepositoryDefault : ICategorySearchTermsReadRepositoryDefault
    {
        protected readonly IPaginationContext paginationContext;

        protected readonly FinanzuebersichtDbContextRaw dbContext;

        public CategorySearchTermsReadRepositoryDefault(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContextRaw dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public CategorySearchTermDto GetCategorySearchTerm(Guid categorySearchTermId)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = dbContext.CategorySearchTerms
                .Where(efCategorySearchTermDto => efCategorySearchTermDto.Id == categorySearchTermId)
                .SingleOrDefault();

            if (efCategorySearchTermDto == null)
            {
                throw new NotFoundResultException("CategorySearchTerm ({id}) konnte nicht gefunden werden.", categorySearchTermId);
            }

            return CategorySearchTermDto.FromEfCategorySearchTermDto(efCategorySearchTermDto);
        }

        public CategorySearchTermDtoExpanded GetCategorySearchTermDetail(Guid categorySearchTermId)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = this.dbContext.CategorySearchTerms
                .Include(efCategorySearchTermDto => efCategorySearchTermDto.Category)
                .Where(efCategorySearchTermDto => efCategorySearchTermDto.Id == categorySearchTermId)
                .SingleOrDefault();

            if (efCategorySearchTermDto == null)
            {
                throw new NotFoundResultException("CategorySearchTerm ({id}) konnte nicht gefunden werden.", categorySearchTermId);
            }

            return CategorySearchTermDtoExpanded.FromEfCategorySearchTermDto(efCategorySearchTermDto);
        }

        public IDbPagedResult<CategorySearchTermDtoExpanded> GetPagedCategorySearchTerms()
        {
            var efCategorySearchTerms = this.dbContext.CategorySearchTerms
                .Include(efCategorySearchTermDto => efCategorySearchTermDto.Category);

            return Pagination.Execute(
                efCategorySearchTerms,
                this.paginationContext,
                efCategorySearchTermDto => CategorySearchTermDtoExpanded.FromEfCategorySearchTermDto(efCategorySearchTermDto));
        }
    }
}
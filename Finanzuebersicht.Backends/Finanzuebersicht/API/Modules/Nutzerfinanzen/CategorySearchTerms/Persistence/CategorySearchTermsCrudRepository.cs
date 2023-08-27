using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms;
using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms
{
    internal class CategorySearchTermsCrudRepository : ICategorySearchTermsCrudRepository
    {
        private readonly IPaginationContext paginationContext;

        private readonly FinanzuebersichtDbContext dbContext;

        public CategorySearchTermsCrudRepository(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContext dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public void CreateCategorySearchTerm(CategorySearchTermDto categorySearchTerm)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = CategorySearchTermDto.ToEfCategorySearchTermDto(categorySearchTerm);

            this.dbContext.CategorySearchTerms.Add(efCategorySearchTermDto);
            this.dbContext.SaveChanges();
        }

        public void DeleteCategorySearchTerm(Guid categorySearchTermId)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = this.dbContext.CategorySearchTerms
                .Where(efCategorySearchTermDto => efCategorySearchTermDto.Id == categorySearchTermId)
                .SingleOrDefault();

            if (efCategorySearchTermDto == null)
            {
                throw new NotFoundResultException("Category Search Term ({id}) konnte nicht gefunden werden.", categorySearchTermId);
            }

            this.dbContext.CategorySearchTerms.Remove(efCategorySearchTermDto);
            this.dbContext.SaveChanges();
        }

        public CategorySearchTermDto GetCategorySearchTerm(Guid categorySearchTermId)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = this.dbContext.CategorySearchTerms
                .Where(efCategorySearchTermDto => efCategorySearchTermDto.Id == categorySearchTermId)
                .SingleOrDefault();

            if (efCategorySearchTermDto == null)
            {
                throw new NotFoundResultException("Category Search Term ({id}) konnte nicht gefunden werden.", categorySearchTermId);
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
                throw new NotFoundResultException("Category Search Term ({id}) konnte nicht gefunden werden.", categorySearchTermId);
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

        public void UpdateCategorySearchTerm(CategorySearchTermDtoDefaultUpdate categorySearchTerm)
        {
            EfCategorySearchTermDto efCategorySearchTermDto = this.dbContext.CategorySearchTerms
                .Where(efCategorySearchTermDto => efCategorySearchTermDto.Id == categorySearchTerm.Id)
                .SingleOrDefault();

            if (efCategorySearchTermDto == null)
            {
                throw new NotFoundResultException("Category Search Term ({id}) konnte nicht gefunden werden.", categorySearchTerm.Id);
            }

            CategorySearchTermDtoData.UpdateEfCategorySearchTermDto(efCategorySearchTermDto, categorySearchTerm);

            this.dbContext.SaveChanges();
        }
    }
}
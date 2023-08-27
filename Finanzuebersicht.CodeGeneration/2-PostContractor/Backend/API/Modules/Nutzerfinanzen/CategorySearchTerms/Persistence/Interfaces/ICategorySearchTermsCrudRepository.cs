using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;
using System.Collections.Generic;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public interface ICategorySearchTermsCrudRepository
    {
        void CreateCategorySearchTerm(CategorySearchTermDto categorySearchTerm);

        void DeleteCategorySearchTerm(Guid categorySearchTermId);

        CategorySearchTermDto GetCategorySearchTerm(Guid categorySearchTermId);

        CategorySearchTermDtoExpanded GetCategorySearchTermDetail(Guid categorySearchTermId);

        IDbPagedResult<CategorySearchTermDtoExpanded> GetPagedCategorySearchTerms();

        void UpdateCategorySearchTerm(CategorySearchTermDtoDefaultUpdate categorySearchTerm);
    }
}
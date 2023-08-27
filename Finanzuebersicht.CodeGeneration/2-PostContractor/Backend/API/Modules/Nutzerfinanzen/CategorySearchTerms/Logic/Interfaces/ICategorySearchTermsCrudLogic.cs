using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public interface ICategorySearchTermsCrudLogic
    {
        Guid CreateCategorySearchTerm(CategorySearchTermDtoData categorySearchTermCreate);

        void DeleteCategorySearchTerm(Guid categorySearchTermId);

        CategorySearchTermDtoExpanded GetCategorySearchTermDetail(Guid categorySearchTermId);

        IDbPagedResult<CategorySearchTermDtoExpanded> GetPagedCategorySearchTerms();

        void UpdateCategorySearchTerm(CategorySearchTermDtoDefaultUpdate categorySearchTermUpdate);
    }
}
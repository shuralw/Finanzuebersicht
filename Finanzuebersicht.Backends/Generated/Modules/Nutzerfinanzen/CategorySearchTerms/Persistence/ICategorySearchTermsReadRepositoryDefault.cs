using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public interface ICategorySearchTermsReadRepositoryDefault
    {
        CategorySearchTermDto GetCategorySearchTerm(Guid categorySearchTermId);

        CategorySearchTermDtoExpanded GetCategorySearchTermDetail(Guid categorySearchTermId);

        IDbPagedResult<CategorySearchTermDtoExpanded> GetPagedCategorySearchTerms();
    }
}
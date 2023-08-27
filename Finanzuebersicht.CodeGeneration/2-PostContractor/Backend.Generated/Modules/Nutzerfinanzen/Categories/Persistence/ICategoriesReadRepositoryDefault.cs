using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public interface ICategoriesReadRepositoryDefault
    {
        CategoryDto GetCategory(Guid categoryId);

        CategoryDtoExpanded GetCategoryDetail(Guid categoryId);

        IDbPagedResult<CategoryDtoExpanded> GetPagedCategories();
    }
}
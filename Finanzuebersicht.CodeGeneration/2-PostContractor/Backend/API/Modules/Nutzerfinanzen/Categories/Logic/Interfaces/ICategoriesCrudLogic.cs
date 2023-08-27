using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    public interface ICategoriesCrudLogic
    {
        Guid CreateCategory(CategoryDtoData categoryCreate);

        void DeleteCategory(Guid categoryId);

        CategoryDtoExpanded GetCategoryDetail(Guid categoryId);

        IDbPagedResult<CategoryDtoExpanded> GetPagedCategories();

        void UpdateCategory(CategoryDtoDefaultUpdate categoryUpdate);
    }
}
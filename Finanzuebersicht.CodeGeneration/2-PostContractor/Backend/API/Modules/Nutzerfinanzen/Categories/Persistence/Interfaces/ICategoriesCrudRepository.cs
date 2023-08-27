using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;
using System.Collections.Generic;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    public interface ICategoriesCrudRepository
    {
        void CreateCategory(CategoryDto category);

        void DeleteCategory(Guid categoryId);

        CategoryDto GetCategory(Guid categoryId);

        CategoryDtoExpanded GetCategoryDetail(Guid categoryId);

        IDbPagedResult<CategoryDtoExpanded> GetPagedCategories();

        void UpdateCategory(CategoryDtoDefaultUpdate category);
    }
}
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.Logic.Interfaces
{
    public interface ISummedCategoriesLogic
    {
        IEnumerable<CategoryDto>? GetSummedCategories();
    }
}
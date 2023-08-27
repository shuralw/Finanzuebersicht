using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public class CategoryDtoExpanded : CategoryDto
    {
        public CategoryDto Category { get; set; }

        public CategoryDtoExpanded() { }

        public CategoryDtoExpanded(CategoryDtoExpanded category) : base(category)
        {
            this.Category = category.Category;
        }

        protected CategoryDtoExpanded(EfCategoryDto efCategoryDto) : base(efCategoryDto)
        {
            this.Category = CategoryDto
                .FromEfCategoryDto(efCategoryDto.SuperCategory);
        }

        public static new CategoryDtoExpanded FromEfCategoryDto(EfCategoryDto efCategoryDto)
        {
            if (efCategoryDto == null)
            {
                return null;
            }

            return new CategoryDtoExpanded(efCategoryDto);
        }
    }
}
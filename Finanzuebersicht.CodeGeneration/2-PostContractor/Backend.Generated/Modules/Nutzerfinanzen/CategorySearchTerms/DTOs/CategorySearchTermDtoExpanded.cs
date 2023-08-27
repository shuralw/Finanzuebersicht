using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class CategorySearchTermDtoExpanded : CategorySearchTermDto
    {
        public CategoryDto Category { get; set; }

        public CategorySearchTermDtoExpanded() { }

        public CategorySearchTermDtoExpanded(CategorySearchTermDtoExpanded categorySearchTerm) : base(categorySearchTerm)
        {
            this.Category = categorySearchTerm.Category;
        }

        protected CategorySearchTermDtoExpanded(EfCategorySearchTermDto efCategorySearchTermDto) : base(efCategorySearchTermDto)
        {
            this.Category = CategoryDto
                .FromEfCategoryDto(efCategorySearchTermDto.Category);
        }

        public static new CategorySearchTermDtoExpanded FromEfCategorySearchTermDto(EfCategorySearchTermDto efCategorySearchTermDto)
        {
            if (efCategorySearchTermDto == null)
            {
                return null;
            }

            return new CategorySearchTermDtoExpanded(efCategorySearchTermDto);
        }
    }
}
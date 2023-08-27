using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using System;
using System.ComponentModel.DataAnnotations;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public class CategoryDtoData
    {
        [Required]
        [StringLength(200, MinimumLength = 1)]
        public string Title { get; set; }

        [Required]
        [StringLength(30, MinimumLength = 1)]
        public string Color { get; set; }

        [Required]
        public Guid CategoryId { get; set; }

        public CategoryDtoData() { }

        public CategoryDtoData(CategoryDtoData categoryDtoData)
        {
            this.Title = categoryDtoData.Title;
            this.Color = categoryDtoData.Color;
            this.CategoryId = categoryDtoData.CategoryId;
        }

        protected CategoryDtoData(EfCategoryDto efCategoryDto)
        {
            this.Title = efCategoryDto.Title;
            this.Color = efCategoryDto.Color;
            this.CategoryId = efCategoryDto.CategoryId;
        }

        public static CategoryDtoData FromEfCategoryDto(EfCategoryDto efCategoryDto)
        {
            if (efCategoryDto == null)
            {
                return null;
            }

            return new CategoryDtoData(efCategoryDto);
        }

        public static void UpdateEfCategoryDto(EfCategoryDto efCategoryDto, CategoryDtoData categoryDtoData)
        {
            efCategoryDto.Title = categoryDtoData.Title;
            efCategoryDto.Color = categoryDtoData.Color;
            efCategoryDto.CategoryId = categoryDtoData.CategoryId;
        }

        public override string ToString()
        {
            return $"{this.Title}";
        }
    }
}
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public class CategoryDto : CategoryDtoData
    {
        public Guid Id { get; set; }

        public CategoryDto() { }

        public CategoryDto(CategoryDto categoryDto) : base(categoryDto)
        {
            this.Id = categoryDto.Id;
        }

        protected CategoryDto(EfCategoryDto efCategoryDto) : base(efCategoryDto)
        {
            this.Id = efCategoryDto.Id;
        }

        protected CategoryDto(Guid id, CategoryDtoData categoryDtoData) : base(categoryDtoData)
        {
            this.Id = id;
        }

        public static new CategoryDto FromEfCategoryDto(EfCategoryDto efCategoryDto)
        {
            if (efCategoryDto == null)
            {
                return null;
            }

            return new CategoryDto(efCategoryDto);
        }

        public static CategoryDto FromCategoryDtoData(Guid id, CategoryDtoData categoryDtoData)
        {
            return new CategoryDto(id, categoryDtoData);
        }

        public static EfCategoryDto ToEfCategoryDto(CategoryDto categoryDto)
        {
            return new EfCategoryDto()
            {
                Id = categoryDto.Id,
                Title = categoryDto.Title,
                Color = categoryDto.Color,
                CategoryId = categoryDto.CategoryId,
            };
        }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
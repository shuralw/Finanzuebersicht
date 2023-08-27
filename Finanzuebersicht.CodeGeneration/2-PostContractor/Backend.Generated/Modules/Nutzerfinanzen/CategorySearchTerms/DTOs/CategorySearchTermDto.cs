using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class CategorySearchTermDto : CategorySearchTermDtoData
    {
        public Guid Id { get; set; }

        public CategorySearchTermDto() { }

        public CategorySearchTermDto(CategorySearchTermDto categorySearchTermDto) : base(categorySearchTermDto)
        {
            this.Id = categorySearchTermDto.Id;
        }

        protected CategorySearchTermDto(EfCategorySearchTermDto efCategorySearchTermDto) : base(efCategorySearchTermDto)
        {
            this.Id = efCategorySearchTermDto.Id;
        }

        protected CategorySearchTermDto(Guid id, CategorySearchTermDtoData categorySearchTermDtoData) : base(categorySearchTermDtoData)
        {
            this.Id = id;
        }

        public static new CategorySearchTermDto FromEfCategorySearchTermDto(EfCategorySearchTermDto efCategorySearchTermDto)
        {
            if (efCategorySearchTermDto == null)
            {
                return null;
            }

            return new CategorySearchTermDto(efCategorySearchTermDto);
        }

        public static CategorySearchTermDto FromCategorySearchTermDtoData(Guid id, CategorySearchTermDtoData categorySearchTermDtoData)
        {
            return new CategorySearchTermDto(id, categorySearchTermDtoData);
        }

        public static EfCategorySearchTermDto ToEfCategorySearchTermDto(CategorySearchTermDto categorySearchTermDto)
        {
            return new EfCategorySearchTermDto()
            {
                Id = categorySearchTermDto.Id,
                CategoryId = categorySearchTermDto.CategoryId,
                Term = categorySearchTermDto.Term,
            };
        }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
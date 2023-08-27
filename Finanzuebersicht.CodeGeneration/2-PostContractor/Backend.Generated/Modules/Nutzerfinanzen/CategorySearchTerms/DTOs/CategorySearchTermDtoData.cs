using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using System;
using System.ComponentModel.DataAnnotations;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class CategorySearchTermDtoData
    {
        [Required]
        public Guid CategoryId { get; set; }

        [Required]
        [StringLength(100, MinimumLength = 1)]
        public string Term { get; set; }

        public CategorySearchTermDtoData() { }

        public CategorySearchTermDtoData(CategorySearchTermDtoData categorySearchTermDtoData)
        {
            this.CategoryId = categorySearchTermDtoData.CategoryId;
            this.Term = categorySearchTermDtoData.Term;
        }

        protected CategorySearchTermDtoData(EfCategorySearchTermDto efCategorySearchTermDto)
        {
            this.CategoryId = efCategorySearchTermDto.CategoryId;
            this.Term = efCategorySearchTermDto.Term;
        }

        public static CategorySearchTermDtoData FromEfCategorySearchTermDto(EfCategorySearchTermDto efCategorySearchTermDto)
        {
            if (efCategorySearchTermDto == null)
            {
                return null;
            }

            return new CategorySearchTermDtoData(efCategorySearchTermDto);
        }

        public static void UpdateEfCategorySearchTermDto(EfCategorySearchTermDto efCategorySearchTermDto, CategorySearchTermDtoData categorySearchTermDtoData)
        {
            efCategorySearchTermDto.CategoryId = categorySearchTermDtoData.CategoryId;
            efCategorySearchTermDto.Term = categorySearchTermDtoData.Term;
        }

        public override string ToString()
        {
            return $"{this.Term}";
        }
    }
}
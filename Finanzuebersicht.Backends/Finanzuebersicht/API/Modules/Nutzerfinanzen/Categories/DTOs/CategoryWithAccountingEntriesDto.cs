using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.DTOs
{
    public class CategoryWithAccountingEntriesDto : CategoryDto
    {
        public IEnumerable<AccountingEntryDtoData> AccountingEntries { get; set; }

        public CategoryWithAccountingEntriesDto() { }

        public CategoryWithAccountingEntriesDto(CategoryWithAccountingEntriesDto categoryDto) : base(categoryDto)
        {
            this.AccountingEntries = categoryDto.AccountingEntries;
        }

        protected CategoryWithAccountingEntriesDto(CategoryDto categoryDto, IEnumerable<AccountingEntryDto> accountingEntries) : base(categoryDto)
        {
            this.AccountingEntries = accountingEntries;
        }

        public static new CategoryWithAccountingEntriesDto FromCategoryDto(CategoryDto category, IEnumerable<AccountingEntryDto> accountingEntries)
        {
            if (category == null)
            {
                return null;
            }

            return new CategoryWithAccountingEntriesDto(category, accountingEntries);
        }
    }
}

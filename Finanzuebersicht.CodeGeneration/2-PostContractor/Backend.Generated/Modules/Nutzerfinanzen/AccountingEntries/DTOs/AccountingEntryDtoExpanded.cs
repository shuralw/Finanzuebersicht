using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public class AccountingEntryDtoExpanded : AccountingEntryDto
    {
        public CategoryDto Category { get; set; }

        public AccountingEntryDtoExpanded() { }

        public AccountingEntryDtoExpanded(AccountingEntryDtoExpanded accountingEntry) : base(accountingEntry)
        {
            this.Category = accountingEntry.Category;
        }

        protected AccountingEntryDtoExpanded(EfAccountingEntryDto efAccountingEntryDto) : base(efAccountingEntryDto)
        {
            this.Category = CategoryDto
                .FromEfCategoryDto(efAccountingEntryDto.Category);
        }

        public static new AccountingEntryDtoExpanded FromEfAccountingEntryDto(EfAccountingEntryDto efAccountingEntryDto)
        {
            if (efAccountingEntryDto == null)
            {
                return null;
            }

            return new AccountingEntryDtoExpanded(efAccountingEntryDto);
        }
    }
}
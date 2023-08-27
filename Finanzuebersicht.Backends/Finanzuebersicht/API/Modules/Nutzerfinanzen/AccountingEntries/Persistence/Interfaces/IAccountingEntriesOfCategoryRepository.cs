using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Persistence.Interfaces
{
    internal interface IAccountingEntriesOfCategoryRepository
    {
        IEnumerable<AccountingEntryDtoExpanded>? GetAccountingEntriesOfCategories(IEnumerable<Guid> categoryIds);
    }
}
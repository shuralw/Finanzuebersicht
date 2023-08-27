using Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Persistence.Interfaces;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Persistence
{
    internal class AccountingEntriesOfCategoryRepository : IAccountingEntriesOfCategoryRepository
    {
        private readonly FinanzuebersichtDbContext dbContext;

        public AccountingEntriesOfCategoryRepository(FinanzuebersichtDbContext dbContext)
        {
            this.dbContext = dbContext;
        }

        public IEnumerable<AccountingEntryDtoExpanded>? GetAccountingEntriesOfCategories(IEnumerable<Guid> categoryIds)
        {
            throw new NotImplementedException();
        }
    }
}
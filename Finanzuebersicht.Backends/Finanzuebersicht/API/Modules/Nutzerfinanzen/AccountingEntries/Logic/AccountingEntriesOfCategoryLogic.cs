using Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Logic.Interfaces;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Persistence
{
    internal class AccountingEntriesOfCategoryLogic : IAccountingEntriesOfCategoryLogic
    {
        private readonly ILogger<AccountingEntriesOfCategoryLogic> logger;

        public AccountingEntriesOfCategoryLogic(ILogger<AccountingEntriesOfCategoryLogic> logger)
        {
            this.logger = logger;
        }

        public IEnumerable<AccountingEntryDtoExpanded>? GetIdentifiedAccountingEntriesOfCategories(IEnumerable<Guid> categoryIds)
        {
            throw new NotImplementedException();
        }
    }
}
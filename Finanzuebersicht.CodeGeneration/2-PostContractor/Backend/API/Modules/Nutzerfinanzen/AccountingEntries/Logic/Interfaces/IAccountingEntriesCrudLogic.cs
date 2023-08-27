using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries
{
    public interface IAccountingEntriesCrudLogic
    {
        Guid CreateAccountingEntry(AccountingEntryDtoData accountingEntryCreate);

        void DeleteAccountingEntry(Guid accountingEntryId);

        AccountingEntryDtoExpanded GetAccountingEntryDetail(Guid accountingEntryId);

        IDbPagedResult<AccountingEntryDtoExpanded> GetPagedAccountingEntries();

        void UpdateAccountingEntry(AccountingEntryDtoDefaultUpdate accountingEntryUpdate);
    }
}
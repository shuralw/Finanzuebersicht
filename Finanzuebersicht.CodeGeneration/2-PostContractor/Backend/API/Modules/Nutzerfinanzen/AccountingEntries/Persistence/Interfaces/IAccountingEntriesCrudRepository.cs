using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;
using System.Collections.Generic;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries
{
    public interface IAccountingEntriesCrudRepository
    {
        void CreateAccountingEntry(AccountingEntryDto accountingEntry);

        void DeleteAccountingEntry(Guid accountingEntryId);

        AccountingEntryDto GetAccountingEntry(Guid accountingEntryId);

        AccountingEntryDtoExpanded GetAccountingEntryDetail(Guid accountingEntryId);

        IDbPagedResult<AccountingEntryDtoExpanded> GetPagedAccountingEntries();

        void UpdateAccountingEntry(AccountingEntryDtoDefaultUpdate accountingEntry);
    }
}
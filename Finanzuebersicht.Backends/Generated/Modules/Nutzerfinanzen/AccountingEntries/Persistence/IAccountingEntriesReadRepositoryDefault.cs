using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public interface IAccountingEntriesReadRepositoryDefault
    {
        AccountingEntryDto GetAccountingEntry(Guid accountingEntryId);

        AccountingEntryDtoExpanded GetAccountingEntryDetail(Guid accountingEntryId);

        IDbPagedResult<AccountingEntryDtoExpanded> GetPagedAccountingEntries();
    }
}
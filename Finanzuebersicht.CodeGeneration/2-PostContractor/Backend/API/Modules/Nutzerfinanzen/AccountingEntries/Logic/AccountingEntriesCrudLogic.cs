using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common.Contract.Logic;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Logic;
using Microsoft.Extensions.Logging;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries
{
    internal class AccountingEntriesCrudLogic : IAccountingEntriesCrudLogic
    {
        private readonly IAccountingEntriesCrudRepository accountingEntriesCrudRepository;

        private readonly IGuidGenerator guidGenerator;
        private readonly ILogger<AccountingEntriesCrudLogic> logger;

        public AccountingEntriesCrudLogic(
            IAccountingEntriesCrudRepository accountingEntriesCrudRepository,
            IGuidGenerator guidGenerator,
            ILogger<AccountingEntriesCrudLogic> logger)
        {
            this.accountingEntriesCrudRepository = accountingEntriesCrudRepository;

            this.guidGenerator = guidGenerator;
            this.logger = logger;
        }

        public Guid CreateAccountingEntry(AccountingEntryDtoData accountingEntryDtoData)
        {
            Guid newAccountingEntryId = this.guidGenerator.NewGuid();
            AccountingEntryDto accountingEntryToCreate = AccountingEntryDto.FromAccountingEntryDtoData(newAccountingEntryId, accountingEntryDtoData);
            this.accountingEntriesCrudRepository.CreateAccountingEntry(accountingEntryToCreate);

            this.logger.LogInformation("AccountingEntry ({id}) angelegt", newAccountingEntryId);
            return newAccountingEntryId;
        }

        public void DeleteAccountingEntry(Guid accountingEntryId)
        {
            this.accountingEntriesCrudRepository.DeleteAccountingEntry(accountingEntryId);

            this.logger.LogInformation("AccountingEntry ({id}) gelöscht", accountingEntryId);
        }

        public AccountingEntryDtoExpanded GetAccountingEntryDetail(Guid accountingEntryId)
        {
            AccountingEntryDtoExpanded accountingEntryDtoExpanded = this.accountingEntriesCrudRepository.GetAccountingEntryDetail(accountingEntryId);

            this.logger.LogDebug("Details für AccountingEntry ({id}) wurde geladen", accountingEntryId);
            return accountingEntryDtoExpanded;
        }

        public IDbPagedResult<AccountingEntryDtoExpanded> GetPagedAccountingEntries()
        {
            IDbPagedResult<AccountingEntryDtoExpanded> accountingEntriesPagedResult =
                this.accountingEntriesCrudRepository.GetPagedAccountingEntries();

            this.logger.LogDebug("AccountingEntries wurden geladen");
            return accountingEntriesPagedResult;
        }

        public void UpdateAccountingEntry(AccountingEntryDtoDefaultUpdate accountingEntryDto)
        {
            this.accountingEntriesCrudRepository.UpdateAccountingEntry(accountingEntryDto);

            this.logger.LogInformation("AccountingEntry ({id}) aktualisiert", accountingEntryDto.Id);
        }
    }
}
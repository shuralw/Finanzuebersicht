using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries
{
    internal class AccountingEntriesCrudRepository : IAccountingEntriesCrudRepository
    {
        private readonly IPaginationContext paginationContext;

        private readonly FinanzuebersichtDbContext dbContext;

        public AccountingEntriesCrudRepository(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContext dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public void CreateAccountingEntry(AccountingEntryDto accountingEntry)
        {
            EfAccountingEntryDto efAccountingEntryDto = AccountingEntryDto.ToEfAccountingEntryDto(accountingEntry);

            this.dbContext.AccountingEntries.Add(efAccountingEntryDto);
            this.dbContext.SaveChanges();
        }

        public void DeleteAccountingEntry(Guid accountingEntryId)
        {
            EfAccountingEntryDto efAccountingEntryDto = this.dbContext.AccountingEntries
                .Where(efAccountingEntryDto => efAccountingEntryDto.Id == accountingEntryId)
                .SingleOrDefault();

            if (efAccountingEntryDto == null)
            {
                throw new NotFoundResultException("Accounting Entry ({id}) konnte nicht gefunden werden.", accountingEntryId);
            }

            this.dbContext.AccountingEntries.Remove(efAccountingEntryDto);
            this.dbContext.SaveChanges();
        }

        public AccountingEntryDto GetAccountingEntry(Guid accountingEntryId)
        {
            EfAccountingEntryDto efAccountingEntryDto = this.dbContext.AccountingEntries
                .Where(efAccountingEntryDto => efAccountingEntryDto.Id == accountingEntryId)
                .SingleOrDefault();

            if (efAccountingEntryDto == null)
            {
                throw new NotFoundResultException("Accounting Entry ({id}) konnte nicht gefunden werden.", accountingEntryId);
            }

            return AccountingEntryDto.FromEfAccountingEntryDto(efAccountingEntryDto);
        }

        public AccountingEntryDtoExpanded GetAccountingEntryDetail(Guid accountingEntryId)
        {
            EfAccountingEntryDto efAccountingEntryDto = this.dbContext.AccountingEntries
                .Include(efAccountingEntryDto => efAccountingEntryDto.Category)
                .Where(efAccountingEntryDto => efAccountingEntryDto.Id == accountingEntryId)
                .SingleOrDefault();

            if (efAccountingEntryDto == null)
            {
                throw new NotFoundResultException("Accounting Entry ({id}) konnte nicht gefunden werden.", accountingEntryId);
            }

            return AccountingEntryDtoExpanded.FromEfAccountingEntryDto(efAccountingEntryDto);
        }

        public IDbPagedResult<AccountingEntryDtoExpanded> GetPagedAccountingEntries()
        {
            var efAccountingEntries = this.dbContext.AccountingEntries
                .Include(efAccountingEntryDto => efAccountingEntryDto.Category);

            return Pagination.Execute(
                efAccountingEntries,
                this.paginationContext,
                efAccountingEntryDto => AccountingEntryDtoExpanded.FromEfAccountingEntryDto(efAccountingEntryDto));
        }

        public void UpdateAccountingEntry(AccountingEntryDtoDefaultUpdate accountingEntry)
        {
            EfAccountingEntryDto efAccountingEntryDto = this.dbContext.AccountingEntries
                .Where(efAccountingEntryDto => efAccountingEntryDto.Id == accountingEntry.Id)
                .SingleOrDefault();

            if (efAccountingEntryDto == null)
            {
                throw new NotFoundResultException("Accounting Entry ({id}) konnte nicht gefunden werden.", accountingEntry.Id);
            }

            AccountingEntryDtoData.UpdateEfAccountingEntryDto(efAccountingEntryDto, accountingEntry);

            this.dbContext.SaveChanges();
        }
    }
}
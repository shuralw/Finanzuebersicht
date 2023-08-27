using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public class AccountingEntriesReadRepositoryDefault : IAccountingEntriesReadRepositoryDefault
    {
        protected readonly IPaginationContext paginationContext;

        protected readonly FinanzuebersichtDbContextRaw dbContext;

        public AccountingEntriesReadRepositoryDefault(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContextRaw dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public AccountingEntryDto GetAccountingEntry(Guid accountingEntryId)
        {
            EfAccountingEntryDto efAccountingEntryDto = dbContext.AccountingEntries
                .Where(efAccountingEntryDto => efAccountingEntryDto.Id == accountingEntryId)
                .SingleOrDefault();

            if (efAccountingEntryDto == null)
            {
                throw new NotFoundResultException("AccountingEntry ({id}) konnte nicht gefunden werden.", accountingEntryId);
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
                throw new NotFoundResultException("AccountingEntry ({id}) konnte nicht gefunden werden.", accountingEntryId);
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
    }
}
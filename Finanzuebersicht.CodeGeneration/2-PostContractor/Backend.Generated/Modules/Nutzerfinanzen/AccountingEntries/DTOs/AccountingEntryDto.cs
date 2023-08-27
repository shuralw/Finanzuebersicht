using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public class AccountingEntryDto : AccountingEntryDtoData
    {
        public Guid Id { get; set; }

        public AccountingEntryDto() { }

        public AccountingEntryDto(AccountingEntryDto accountingEntryDto) : base(accountingEntryDto)
        {
            this.Id = accountingEntryDto.Id;
        }

        protected AccountingEntryDto(EfAccountingEntryDto efAccountingEntryDto) : base(efAccountingEntryDto)
        {
            this.Id = efAccountingEntryDto.Id;
        }

        protected AccountingEntryDto(Guid id, AccountingEntryDtoData accountingEntryDtoData) : base(accountingEntryDtoData)
        {
            this.Id = id;
        }

        public static new AccountingEntryDto FromEfAccountingEntryDto(EfAccountingEntryDto efAccountingEntryDto)
        {
            if (efAccountingEntryDto == null)
            {
                return null;
            }

            return new AccountingEntryDto(efAccountingEntryDto);
        }

        public static AccountingEntryDto FromAccountingEntryDtoData(Guid id, AccountingEntryDtoData accountingEntryDtoData)
        {
            return new AccountingEntryDto(id, accountingEntryDtoData);
        }

        public static EfAccountingEntryDto ToEfAccountingEntryDto(AccountingEntryDto accountingEntryDto)
        {
            return new EfAccountingEntryDto()
            {
                Id = accountingEntryDto.Id,
                CategoryId = accountingEntryDto.CategoryId,
                Auftragskonto = accountingEntryDto.Auftragskonto,
                Buchungsdatum = accountingEntryDto.Buchungsdatum,
                ValutaDatum = accountingEntryDto.ValutaDatum,
                Buchungstext = accountingEntryDto.Buchungstext,
                Verwendungszweck = accountingEntryDto.Verwendungszweck,
                GlaeubigerId = accountingEntryDto.GlaeubigerId,
                Mandatsreferenz = accountingEntryDto.Mandatsreferenz,
                Sammlerreferenz = accountingEntryDto.Sammlerreferenz,
                LastschriftUrsprungsbetrag = accountingEntryDto.LastschriftUrsprungsbetrag,
                AuslagenersatzRuecklastschrift = accountingEntryDto.AuslagenersatzRuecklastschrift,
                Beguenstigter = accountingEntryDto.Beguenstigter,
                IBAN = accountingEntryDto.IBAN,
                BIC = accountingEntryDto.BIC,
                Betrag = accountingEntryDto.Betrag,
                Waehrung = accountingEntryDto.Waehrung,
                Info = accountingEntryDto.Info,
            };
        }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
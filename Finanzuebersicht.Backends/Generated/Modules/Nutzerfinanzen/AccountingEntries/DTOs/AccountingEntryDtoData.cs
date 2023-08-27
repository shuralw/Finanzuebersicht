using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using System;
using System.ComponentModel.DataAnnotations;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public class AccountingEntryDtoData
    {
        [Required]
        public Guid CategoryId { get; set; }

        [Required]
        [StringLength(30, MinimumLength = 1)]
        public string Auftragskonto { get; set; }

        [Required]
        public DateTime Buchungsdatum { get; set; }

        [Required]
        public DateTime ValutaDatum { get; set; }

        [Required]
        [StringLength(300, MinimumLength = 1)]
        public string Buchungstext { get; set; }

        [Required]
        [StringLength(4000, MinimumLength = 1)]
        public string Verwendungszweck { get; set; }

        [StringLength(100)]
        public string GlaeubigerId { get; set; }

        [StringLength(100)]
        public string Mandatsreferenz { get; set; }

        [StringLength(100)]
        public string Sammlerreferenz { get; set; }

        public double? LastschriftUrsprungsbetrag { get; set; }

        [StringLength(1000)]
        public string AuslagenersatzRuecklastschrift { get; set; }

        [Required]
        [StringLength(2000, MinimumLength = 1)]
        public string Beguenstigter { get; set; }

        [Required]
        [StringLength(50, MinimumLength = 1)]
        public string IBAN { get; set; }

        [Required]
        [StringLength(50, MinimumLength = 1)]
        public string BIC { get; set; }

        [Required]
        public double Betrag { get; set; }

        [Required]
        [StringLength(10, MinimumLength = 1)]
        public string Waehrung { get; set; }

        [Required]
        [StringLength(4000, MinimumLength = 1)]
        public string Info { get; set; }

        public AccountingEntryDtoData() { }

        public AccountingEntryDtoData(AccountingEntryDtoData accountingEntryDtoData)
        {
            this.CategoryId = accountingEntryDtoData.CategoryId;
            this.Auftragskonto = accountingEntryDtoData.Auftragskonto;
            this.Buchungsdatum = accountingEntryDtoData.Buchungsdatum;
            this.ValutaDatum = accountingEntryDtoData.ValutaDatum;
            this.Buchungstext = accountingEntryDtoData.Buchungstext;
            this.Verwendungszweck = accountingEntryDtoData.Verwendungszweck;
            this.GlaeubigerId = accountingEntryDtoData.GlaeubigerId;
            this.Mandatsreferenz = accountingEntryDtoData.Mandatsreferenz;
            this.Sammlerreferenz = accountingEntryDtoData.Sammlerreferenz;
            this.LastschriftUrsprungsbetrag = accountingEntryDtoData.LastschriftUrsprungsbetrag;
            this.AuslagenersatzRuecklastschrift = accountingEntryDtoData.AuslagenersatzRuecklastschrift;
            this.Beguenstigter = accountingEntryDtoData.Beguenstigter;
            this.IBAN = accountingEntryDtoData.IBAN;
            this.BIC = accountingEntryDtoData.BIC;
            this.Betrag = accountingEntryDtoData.Betrag;
            this.Waehrung = accountingEntryDtoData.Waehrung;
            this.Info = accountingEntryDtoData.Info;
        }

        protected AccountingEntryDtoData(EfAccountingEntryDto efAccountingEntryDto)
        {
            this.CategoryId = efAccountingEntryDto.CategoryId;
            this.Auftragskonto = efAccountingEntryDto.Auftragskonto;
            this.Buchungsdatum = efAccountingEntryDto.Buchungsdatum;
            this.ValutaDatum = efAccountingEntryDto.ValutaDatum;
            this.Buchungstext = efAccountingEntryDto.Buchungstext;
            this.Verwendungszweck = efAccountingEntryDto.Verwendungszweck;
            this.GlaeubigerId = efAccountingEntryDto.GlaeubigerId;
            this.Mandatsreferenz = efAccountingEntryDto.Mandatsreferenz;
            this.Sammlerreferenz = efAccountingEntryDto.Sammlerreferenz;
            this.LastschriftUrsprungsbetrag = efAccountingEntryDto.LastschriftUrsprungsbetrag;
            this.AuslagenersatzRuecklastschrift = efAccountingEntryDto.AuslagenersatzRuecklastschrift;
            this.Beguenstigter = efAccountingEntryDto.Beguenstigter;
            this.IBAN = efAccountingEntryDto.IBAN;
            this.BIC = efAccountingEntryDto.BIC;
            this.Betrag = efAccountingEntryDto.Betrag;
            this.Waehrung = efAccountingEntryDto.Waehrung;
            this.Info = efAccountingEntryDto.Info;
        }

        public static AccountingEntryDtoData FromEfAccountingEntryDto(EfAccountingEntryDto efAccountingEntryDto)
        {
            if (efAccountingEntryDto == null)
            {
                return null;
            }

            return new AccountingEntryDtoData(efAccountingEntryDto);
        }

        public static void UpdateEfAccountingEntryDto(EfAccountingEntryDto efAccountingEntryDto, AccountingEntryDtoData accountingEntryDtoData)
        {
            efAccountingEntryDto.CategoryId = accountingEntryDtoData.CategoryId;
            efAccountingEntryDto.Auftragskonto = accountingEntryDtoData.Auftragskonto;
            efAccountingEntryDto.Buchungsdatum = accountingEntryDtoData.Buchungsdatum;
            efAccountingEntryDto.ValutaDatum = accountingEntryDtoData.ValutaDatum;
            efAccountingEntryDto.Buchungstext = accountingEntryDtoData.Buchungstext;
            efAccountingEntryDto.Verwendungszweck = accountingEntryDtoData.Verwendungszweck;
            efAccountingEntryDto.GlaeubigerId = accountingEntryDtoData.GlaeubigerId;
            efAccountingEntryDto.Mandatsreferenz = accountingEntryDtoData.Mandatsreferenz;
            efAccountingEntryDto.Sammlerreferenz = accountingEntryDtoData.Sammlerreferenz;
            efAccountingEntryDto.LastschriftUrsprungsbetrag = accountingEntryDtoData.LastschriftUrsprungsbetrag;
            efAccountingEntryDto.AuslagenersatzRuecklastschrift = accountingEntryDtoData.AuslagenersatzRuecklastschrift;
            efAccountingEntryDto.Beguenstigter = accountingEntryDtoData.Beguenstigter;
            efAccountingEntryDto.IBAN = accountingEntryDtoData.IBAN;
            efAccountingEntryDto.BIC = accountingEntryDtoData.BIC;
            efAccountingEntryDto.Betrag = accountingEntryDtoData.Betrag;
            efAccountingEntryDto.Waehrung = accountingEntryDtoData.Waehrung;
            efAccountingEntryDto.Info = accountingEntryDtoData.Info;
        }

        public override string ToString()
        {
            return $"{this.Auftragskonto}";
        }
    }
}
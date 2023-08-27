using CsvHelper.Configuration;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.DTOs
{
    // Mapping Configuration
    public sealed class AccountingEntryDtoDataMap : ClassMap<AccountingEntryDtoData>
    {
        public AccountingEntryDtoDataMap()
        {
            Map(m => m.Buchungsdatum).Name("Buchungsdatum")
                  .TypeConverterOption.Format("dd.MM.yyyy");
            Map(m => m.ValutaDatum).Name("Wertstellung")
                  .TypeConverterOption.Format("dd.MM.yyyy");
            Map(m => m.Verwendungszweck).Name("Verwendungszweck");
            Map(m => m.GlaeubigerId).Name("Gläubiger-ID");
            Map(m => m.Mandatsreferenz).Name("Mandatsreferenz");
            Map(m => m.Sammlerreferenz).Name("Kundenreferenz");
            Map(m => m.Beguenstigter).Name("Zahlungsempfänger*in");
            Map(m => m.Betrag).Name("Betrag")
                .TypeConverter<CurrencyStringToDoubleConverter>();
            Map(m => m.Info).Name("Status");
        }
    }
}

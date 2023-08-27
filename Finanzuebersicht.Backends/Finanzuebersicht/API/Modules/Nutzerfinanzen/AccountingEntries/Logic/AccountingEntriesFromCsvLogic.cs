using CsvHelper;
using CsvHelper.Configuration;
using Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.DTOs;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using System.Globalization;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Logic
{
    public class AccountingEntriesFromCsvLogic
    {
        public void fromCsv(string path)
        {
            var config = new CsvConfiguration(CultureInfo.InvariantCulture)
            {
                Delimiter = ";",
                HasHeaderRecord = true,
            };

            using (var reader = new StreamReader(path))
            using (var csv = new CsvReader(reader, config))
            {
                csv.Context.RegisterClassMap<AccountingEntryDtoDataMap>();
                var records = csv.GetRecords<AccountingEntryDtoData>().ToList();

                // Your logic with records goes here
            }
        }
    }
}

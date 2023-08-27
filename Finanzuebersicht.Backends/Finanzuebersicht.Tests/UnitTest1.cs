using Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Logic;

namespace Finanzuebersicht.Tests
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            AccountingEntriesFromCsvLogic accountingEntriesFromCsvLogic = new AccountingEntriesFromCsvLogic();
            accountingEntriesFromCsvLogic.fromCsv("C:\\Users\\lukas\\Downloads\\mytest.csv");
        }
    }
}
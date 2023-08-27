using Krz.FullstackTemplate.Backend.Common.Persistence.InsertData;

namespace Finanzuebersicht.Database.Core.Generated.DbContext
{
    public class FinanzuebersichtDatabaseCoreConnectionStringOptions : ConnectionStringOptions
    {
        public override string Position => "DatabaseConnections:FinanzuebersichtDatabaseCore";

        public bool EnableSensitiveDataLogging { get; set; }
    }
}
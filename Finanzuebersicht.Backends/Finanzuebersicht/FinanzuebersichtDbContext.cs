using Finanzuebersicht.Database.Core.Generated.DbContext;
using Microsoft.Extensions.Options;

namespace Finanzuebersicht
{
    public class FinanzuebersichtDbContext : FinanzuebersichtDbContextRaw
    {
        public FinanzuebersichtDbContext(
            ILogger<FinanzuebersichtDbContextRaw> logger,
            IOptions<FinanzuebersichtDatabaseCoreConnectionStringOptions> options)
            : base(logger, options)
        {
        }
    }
}
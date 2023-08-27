using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Finanzuebersicht.Database.Core.Generated.DbContext
{
    public partial class FinanzuebersichtDbContextRaw : Microsoft.EntityFrameworkCore.DbContext
    {
        private readonly ILogger<FinanzuebersichtDbContextRaw> logger;

        private readonly FinanzuebersichtDatabaseCoreConnectionStringOptions options;

        public FinanzuebersichtDbContextRaw(
            ILogger<FinanzuebersichtDbContextRaw> logger,
            IOptions<FinanzuebersichtDatabaseCoreConnectionStringOptions> options)
        {
            this.logger = logger;
            this.options = options.Value;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(
                    this.options.GetConnectionString(),
                    optionsBuilder => optionsBuilder.MigrationsAssembly("Generated.DbContext.EfMigrations"));

                if (this.options.EnableSensitiveDataLogging)
                {
                    optionsBuilder.EnableSensitiveDataLogging(true);
                    optionsBuilder.LogTo(message => this.logger.LogInformation(message), LogLevel.Information);
                }
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("dbo");

            this.OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
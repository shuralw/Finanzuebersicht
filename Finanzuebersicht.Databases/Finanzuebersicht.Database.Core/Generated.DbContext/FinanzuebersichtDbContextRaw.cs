using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Finanzuebersicht.Database.Core.Generated.DbContext;

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

        public virtual DbSet<EfCategoryDto> Categories { get; set; }

        public virtual DbSet<EfAccountingEntryDto> AccountingEntries { get; set; }

        public virtual DbSet<EfCategorySearchTermDto> CategorySearchTerms { get; set; }

        public virtual DbSet<EfStartSaldoDto> StartSalden { get; set; }

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

            modelBuilder.Entity<EfCategoryDto>(entity =>
            {
                entity.ToTable("Categories");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();

                entity.Property(e => e.Title)
                    .IsRequired(true)
                    .HasMaxLength(200);

                entity.Property(e => e.Color)
                    .IsRequired(true)
                    .HasMaxLength(30);

                entity.Property(e => e.Title)
                    .IsRequired(true)
                    .HasMaxLength(200);

                entity.Property(e => e.Color)
                    .IsRequired(true)
                    .HasMaxLength(30);

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.SuperCategory)
                    .WithMany(p => p.ChildCategories)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_Categories_CategoryId");

                entity.Property(e => e.Title)
                    .IsRequired(true)
                    .HasMaxLength(200);

                entity.Property(e => e.Color)
                    .IsRequired(true)
                    .HasMaxLength(30);

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.SuperCategory)
                    .WithMany(p => p.ChildCategories)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_Categories_CategoryId");
            });

            modelBuilder.Entity<EfCategoryDto>(entity =>
            {
                entity.ToTable("Categories");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();
            });

            modelBuilder.Entity<EfAccountingEntryDto>(entity =>
            {
                entity.ToTable("AccountingEntries");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.AccountingEntries)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_AccountingEntries_CategoryId");

                entity.Property(e => e.Auftragskonto)
                    .IsRequired(true)
                    .HasMaxLength(30);

                entity.Property(e => e.Buchungsdatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");

                entity.Property(e => e.ValutaDatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");

                entity.Property(e => e.Buchungstext)
                    .IsRequired(true)
                    .HasMaxLength(300);

                entity.Property(e => e.Verwendungszweck)
                    .IsRequired(true)
                    .HasMaxLength(4000);

                entity.Property(e => e.GlaeubigerId)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.Mandatsreferenz)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.Sammlerreferenz)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.LastschriftUrsprungsbetrag)
                    .IsRequired(false);

                entity.Property(e => e.AuslagenersatzRuecklastschrift)
                    .IsRequired(false)
                    .HasMaxLength(1000);

                entity.Property(e => e.Beguenstigter)
                    .IsRequired(true)
                    .HasMaxLength(2000);

                entity.Property(e => e.IBAN)
                    .IsRequired(true)
                    .HasMaxLength(50);

                entity.Property(e => e.BIC)
                    .IsRequired(true)
                    .HasMaxLength(50);

                entity.Property(e => e.Betrag)
                    .IsRequired(true);

                entity.Property(e => e.Waehrung)
                    .IsRequired(true)
                    .HasMaxLength(10);

                entity.Property(e => e.Info)
                    .IsRequired(true)
                    .HasMaxLength(4000);

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.AccountingEntries)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_AccountingEntries_CategoryId");

                entity.Property(e => e.Auftragskonto)
                    .IsRequired(true)
                    .HasMaxLength(30);

                entity.Property(e => e.Buchungsdatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");

                entity.Property(e => e.ValutaDatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");

                entity.Property(e => e.Buchungstext)
                    .IsRequired(true)
                    .HasMaxLength(300);

                entity.Property(e => e.Verwendungszweck)
                    .IsRequired(true)
                    .HasMaxLength(4000);

                entity.Property(e => e.GlaeubigerId)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.Mandatsreferenz)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.Sammlerreferenz)
                    .IsRequired(false)
                    .HasMaxLength(100);

                entity.Property(e => e.LastschriftUrsprungsbetrag)
                    .IsRequired(false);

                entity.Property(e => e.AuslagenersatzRuecklastschrift)
                    .IsRequired(false)
                    .HasMaxLength(1000);

                entity.Property(e => e.Beguenstigter)
                    .IsRequired(true)
                    .HasMaxLength(2000);

                entity.Property(e => e.IBAN)
                    .IsRequired(true)
                    .HasMaxLength(50);

                entity.Property(e => e.BIC)
                    .IsRequired(true)
                    .HasMaxLength(50);

                entity.Property(e => e.Betrag)
                    .IsRequired(true);

                entity.Property(e => e.Waehrung)
                    .IsRequired(true)
                    .HasMaxLength(10);

                entity.Property(e => e.Info)
                    .IsRequired(true)
                    .HasMaxLength(4000);
            });

            modelBuilder.Entity<EfCategorySearchTermDto>(entity =>
            {
                entity.ToTable("CategorySearchTerms");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.CategorySearchTerms)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_CategorySearchTerms_CategoryId");

                entity.Property(e => e.Term)
                    .IsRequired(true)
                    .HasMaxLength(100);

                entity.Property(e => e.CategoryId)
                    .IsRequired(true);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.CategorySearchTerms)
                    .HasForeignKey(d => d.CategoryId)
                    .IsRequired(true)
                    .OnDelete(DeleteBehavior.NoAction)
                    .HasConstraintName("FK_CategorySearchTerms_CategoryId");

                entity.Property(e => e.Term)
                    .IsRequired(true)
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<EfStartSaldoDto>(entity =>
            {
                entity.ToTable("StartSalden");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();

                entity.Property(e => e.Betrag)
                    .IsRequired(true);

                entity.Property(e => e.AmDatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");

                entity.Property(e => e.Betrag)
                    .IsRequired(true);

                entity.Property(e => e.AmDatum)
                    .IsRequired(true)
                    .HasColumnType("datetime");
            });

            modelBuilder.Entity<EfCategoryDto>(entity =>
            {
                entity.ToTable("Categories");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();
            });

            modelBuilder.Entity<EfAccountingEntryDto>(entity =>
            {
                entity.ToTable("AccountingEntries");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();
            });

            modelBuilder.Entity<EfCategorySearchTermDto>(entity =>
            {
                entity.ToTable("CategorySearchTerms");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();
            });

            modelBuilder.Entity<EfStartSaldoDto>(entity =>
            {
                entity.ToTable("StartSalden");

                entity.HasKey(c => c.Id)
                    .IsClustered(true);

                entity.Property(e => e.Id)
                    .ValueGeneratedNever();
            });

            this.OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
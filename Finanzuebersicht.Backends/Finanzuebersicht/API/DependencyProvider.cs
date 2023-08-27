using Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries;
using Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms;
using Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden;

namespace Finanzuebersicht.Backend.Generated.Logic
{
    public static class DependencyProvider
    {
        public static void Startup(IServiceCollection services, IConfiguration configuration)
        {
            StartupNutzerfinanzen(services);
            StartupNutzerfinanzen(services);
            StartupNutzerfinanzen(services);
        }

        private static void StartupNutzerfinanzen(IServiceCollection services)
        {
            // Categories
            services.AddScoped<ICategoriesCrudLogic, CategoriesCrudLogic>();
            services.AddScoped<ICategoriesCrudRepository, CategoriesCrudRepository>();

            // Categories
            services.AddScoped<ICategoriesCrudLogic, CategoriesCrudLogic>();
            services.AddScoped<ICategoriesCrudRepository, CategoriesCrudRepository>();

            // AccountingEntries
            services.AddScoped<IAccountingEntriesCrudLogic, AccountingEntriesCrudLogic>();
            services.AddScoped<IAccountingEntriesCrudRepository, AccountingEntriesCrudRepository>();

            // CategorySearchTerms
            services.AddScoped<ICategorySearchTermsCrudLogic, CategorySearchTermsCrudLogic>();
            services.AddScoped<ICategorySearchTermsCrudRepository, CategorySearchTermsCrudRepository>();

            // StartSalden
            services.AddScoped<IStartSaldenCrudLogic, StartSaldenCrudLogic>();
            services.AddScoped<IStartSaldenCrudRepository, StartSaldenCrudRepository>();

            // Categories
            services.AddScoped<ICategoriesCrudLogic, CategoriesCrudLogic>();
            services.AddScoped<ICategoriesCrudRepository, CategoriesCrudRepository>();

            // AccountingEntries
            services.AddScoped<IAccountingEntriesCrudLogic, AccountingEntriesCrudLogic>();
            services.AddScoped<IAccountingEntriesCrudRepository, AccountingEntriesCrudRepository>();

            // CategorySearchTerms
            services.AddScoped<ICategorySearchTermsCrudLogic, CategorySearchTermsCrudLogic>();
            services.AddScoped<ICategorySearchTermsCrudRepository, CategorySearchTermsCrudRepository>();

            // StartSalden
            services.AddScoped<IStartSaldenCrudLogic, StartSaldenCrudLogic>();
            services.AddScoped<IStartSaldenCrudRepository, StartSaldenCrudRepository>();
        }
    }
}
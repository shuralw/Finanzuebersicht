using Finanzuebersicht.API.Modules.Nutzerfinanzen.AccountingEntries.Persistence.Interfaces;
using Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.DTOs;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    internal class CategoryWithDescendantsLogic : ICategoryWithDescendantsLogic
    {
        private readonly ICategoriesCrudRepository categoriesCrudRepository;
        private readonly IAccountingEntriesOfCategoryRepository accountingEntriesOfCategoryRepository;
        private readonly ILogger<CategoryWithDescendantsLogic> logger;

        public CategoryWithDescendantsLogic(
            ICategoriesCrudRepository categoriesCrudRepository,
            IAccountingEntriesOfCategoryRepository accountingEntriesOfCategoryRepository,
            ILogger<CategoryWithDescendantsLogic> logger)
        {
            this.categoriesCrudRepository = categoriesCrudRepository;
            this.accountingEntriesOfCategoryRepository = accountingEntriesOfCategoryRepository;
            this.logger = logger;
        }

        public IEnumerable<CategoryDto> GetCategoryAndDescendants(Guid categoryId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<CategoryWithAccountingEntriesDto>? GetCategoryWithDescendantsAndAccountingEntries(IEnumerable<Guid> categories)
        {
            var accountingEntriesOfCategories = this.accountingEntriesOfCategoryRepository.GetAccountingEntriesOfCategories(categories);
            var result = accountingEntriesOfCategories
                .GroupBy(accountingEntry => accountingEntry.Category)
                .Select(accountingEntryGroup => CategoryWithAccountingEntriesDto.FromCategoryDto(
                    accountingEntryGroup.First().Category,
                    accountingEntryGroup.Select(accountingEntryOfGroup => accountingEntryOfGroup)));

            this.logger.LogDebug("Kategorie ({categoryId}) und deren Descandants mit Accountingentries wurde geladen");
            throw new NotImplementedException();
        }
    }
}
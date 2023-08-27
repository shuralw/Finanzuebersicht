using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common.Contract.Logic;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Logic;
using Microsoft.Extensions.Logging;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    internal class CategoriesCrudLogic : ICategoriesCrudLogic
    {
        private readonly ICategoriesCrudRepository categoriesCrudRepository;

        private readonly IGuidGenerator guidGenerator;
        private readonly ILogger<CategoriesCrudLogic> logger;

        public CategoriesCrudLogic(
            ICategoriesCrudRepository categoriesCrudRepository,
            IGuidGenerator guidGenerator,
            ILogger<CategoriesCrudLogic> logger)
        {
            this.categoriesCrudRepository = categoriesCrudRepository;

            this.guidGenerator = guidGenerator;
            this.logger = logger;
        }

        public Guid CreateCategory(CategoryDtoData categoryDtoData)
        {
            Guid newCategoryId = this.guidGenerator.NewGuid();
            CategoryDto categoryToCreate = CategoryDto.FromCategoryDtoData(newCategoryId, categoryDtoData);
            this.categoriesCrudRepository.CreateCategory(categoryToCreate);

            this.logger.LogInformation("Category ({id}) angelegt", newCategoryId);
            return newCategoryId;
        }

        public void DeleteCategory(Guid categoryId)
        {
            this.categoriesCrudRepository.DeleteCategory(categoryId);

            this.logger.LogInformation("Category ({id}) gelöscht", categoryId);
        }

        public CategoryDtoExpanded GetCategoryDetail(Guid categoryId)
        {
            CategoryDtoExpanded categoryDtoExpanded = this.categoriesCrudRepository.GetCategoryDetail(categoryId);

            this.logger.LogDebug("Details für Category ({id}) wurde geladen", categoryId);
            return categoryDtoExpanded;
        }

        public IDbPagedResult<CategoryDtoExpanded> GetPagedCategories()
        {
            IDbPagedResult<CategoryDtoExpanded> categoriesPagedResult =
                this.categoriesCrudRepository.GetPagedCategories();

            this.logger.LogDebug("Categories wurden geladen");
            return categoriesPagedResult;
        }

        public void UpdateCategory(CategoryDtoDefaultUpdate categoryDto)
        {
            this.categoriesCrudRepository.UpdateCategory(categoryDto);

            this.logger.LogInformation("Category ({id}) aktualisiert", categoryDto.Id);
        }
    }
}
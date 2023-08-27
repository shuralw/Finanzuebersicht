using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common.Contract.Logic;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Logic;
using Microsoft.Extensions.Logging;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms
{
    internal class CategorySearchTermsCrudLogic : ICategorySearchTermsCrudLogic
    {
        private readonly ICategorySearchTermsCrudRepository categorySearchTermsCrudRepository;

        private readonly IGuidGenerator guidGenerator;
        private readonly ILogger<CategorySearchTermsCrudLogic> logger;

        public CategorySearchTermsCrudLogic(
            ICategorySearchTermsCrudRepository categorySearchTermsCrudRepository,
            IGuidGenerator guidGenerator,
            ILogger<CategorySearchTermsCrudLogic> logger)
        {
            this.categorySearchTermsCrudRepository = categorySearchTermsCrudRepository;

            this.guidGenerator = guidGenerator;
            this.logger = logger;
        }

        public Guid CreateCategorySearchTerm(CategorySearchTermDtoData categorySearchTermDtoData)
        {
            Guid newCategorySearchTermId = this.guidGenerator.NewGuid();
            CategorySearchTermDto categorySearchTermToCreate = CategorySearchTermDto.FromCategorySearchTermDtoData(newCategorySearchTermId, categorySearchTermDtoData);
            this.categorySearchTermsCrudRepository.CreateCategorySearchTerm(categorySearchTermToCreate);

            this.logger.LogInformation("CategorySearchTerm ({id}) angelegt", newCategorySearchTermId);
            return newCategorySearchTermId;
        }

        public void DeleteCategorySearchTerm(Guid categorySearchTermId)
        {
            this.categorySearchTermsCrudRepository.DeleteCategorySearchTerm(categorySearchTermId);

            this.logger.LogInformation("CategorySearchTerm ({id}) gelöscht", categorySearchTermId);
        }

        public CategorySearchTermDtoExpanded GetCategorySearchTermDetail(Guid categorySearchTermId)
        {
            CategorySearchTermDtoExpanded categorySearchTermDtoExpanded = this.categorySearchTermsCrudRepository.GetCategorySearchTermDetail(categorySearchTermId);

            this.logger.LogDebug("Details für CategorySearchTerm ({id}) wurde geladen", categorySearchTermId);
            return categorySearchTermDtoExpanded;
        }

        public IDbPagedResult<CategorySearchTermDtoExpanded> GetPagedCategorySearchTerms()
        {
            IDbPagedResult<CategorySearchTermDtoExpanded> categorySearchTermsPagedResult =
                this.categorySearchTermsCrudRepository.GetPagedCategorySearchTerms();

            this.logger.LogDebug("CategorySearchTerms wurden geladen");
            return categorySearchTermsPagedResult;
        }

        public void UpdateCategorySearchTerm(CategorySearchTermDtoDefaultUpdate categorySearchTermDto)
        {
            this.categorySearchTermsCrudRepository.UpdateCategorySearchTerm(categorySearchTermDto);

            this.logger.LogInformation("CategorySearchTerm ({id}) aktualisiert", categorySearchTermDto.Id);
        }
    }
}
using Finanzuebersicht.Backend.CodeGeneration.Security.Authorization;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms;
using Krz.FullstackTemplate.Backend.Common.API;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.CategorySearchTerms
{
    [ApiController]
    [Route("nutzerfinanzen/category-search-terms")]
    public class CategorySearchTermsCrudController : ControllerBase
    {
        private readonly ICategorySearchTermsCrudLogic categorySearchTermsCrudLogic;

        public CategorySearchTermsCrudController(ICategorySearchTermsCrudLogic categorySearchTermsCrudLogic)
        {
            this.categorySearchTermsCrudLogic = categorySearchTermsCrudLogic;
        }

        [HttpGet]
        [Authorized]
        [SwaggerOperation(Summary = "Get Category Search Terms with Pagination", Tags = new[] { "Nutzerfinanzen" })]
        [Pagination(FilterFields = new[] { "CategoryId", "Id" }, SortFields = new[] { "Id" })]
        public ActionResult<IDbPagedResult<CategorySearchTermDtoExpanded>> GetPagedCategorySearchTerms()
        {
            return this.Ok(this.categorySearchTermsCrudLogic.GetPagedCategorySearchTerms());
        }

        [HttpGet]
        [Authorized]
        [Route("{categorySearchTermId}")]
        [SwaggerOperation(Summary = "Get Category Search Term by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<CategorySearchTermDtoExpanded> GetCategorySearchTermDetail(Guid categorySearchTermId)
        {
            return this.Ok(this.categorySearchTermsCrudLogic.GetCategorySearchTermDetail(categorySearchTermId));
        }

        [HttpPost]
        [Authorized]
        [SwaggerOperation(Summary = "Create Category Search Term", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<DataBody<Guid>> CreateCategorySearchTerm([FromBody] CategorySearchTermDtoData categorySearchTerm)
        {
            return this.Ok(new DataBody<Guid>(this.categorySearchTermsCrudLogic.CreateCategorySearchTerm(categorySearchTerm)));
        }

        [HttpPut]
        [Authorized]
        [SwaggerOperation(Summary = "Update Category Search Term", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult UpdateCategorySearchTerm([FromBody] CategorySearchTermDtoDefaultUpdate categorySearchTerm)
        {
            this.categorySearchTermsCrudLogic.UpdateCategorySearchTerm(categorySearchTerm);
            return this.Ok();
        }

        [HttpDelete]
        [Authorized]
        [Route("{categorySearchTermId}")]
        [SwaggerOperation(Summary = "Delete Category Search Term by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult DeleteCategorySearchTerm(Guid categorySearchTermId)
        {
            this.categorySearchTermsCrudLogic.DeleteCategorySearchTerm(categorySearchTermId);
            return this.Ok();
        }
    }
}
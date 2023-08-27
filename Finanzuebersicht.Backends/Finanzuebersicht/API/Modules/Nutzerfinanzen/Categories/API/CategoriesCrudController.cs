using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories;
using Krz.FullstackTemplate.Backend.Common.API;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.Categories
{
    [ApiController]
    [Route("nutzerfinanzen/categories")]
    public class CategoriesCrudController : ControllerBase
    {
        private readonly ICategoriesCrudLogic categoriesCrudLogic;

        public CategoriesCrudController(ICategoriesCrudLogic categoriesCrudLogic)
        {
            this.categoriesCrudLogic = categoriesCrudLogic;
        }

        [HttpGet]
        [AuthorizeAttribute]
        [SwaggerOperation(Summary = "Get Categories with Pagination", Tags = new[] { "Nutzerfinanzen" })]
        [Pagination(FilterFields = new[] { "CategoryId", "Id" }, SortFields = new[] { "Id" })]
        public ActionResult<IDbPagedResult<CategoryDtoExpanded>> GetPagedCategories()
        {
            return this.Ok(this.categoriesCrudLogic.GetPagedCategories());
        }

        [HttpGet]
        [AuthorizeAttribute]
        [Route("{categoryId}")]
        [SwaggerOperation(Summary = "Get Category by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<CategoryDtoExpanded> GetCategoryDetail(Guid categoryId)
        {
            return this.Ok(this.categoriesCrudLogic.GetCategoryDetail(categoryId));
        }

        [HttpPost]
        [AuthorizeAttribute]
        [SwaggerOperation(Summary = "Create Category", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<DataBody<Guid>> CreateCategory([FromBody] CategoryDtoData category)
        {
            return this.Ok(new DataBody<Guid>(this.categoriesCrudLogic.CreateCategory(category)));
        }

        [HttpPut]
        [AuthorizeAttribute]
        [SwaggerOperation(Summary = "Update Category", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult UpdateCategory([FromBody] CategoryDtoDefaultUpdate category)
        {
            this.categoriesCrudLogic.UpdateCategory(category);
            return this.Ok();
        }

        [HttpDelete]
        [AuthorizeAttribute]
        [Route("{categoryId}")]
        [SwaggerOperation(Summary = "Delete Category by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult DeleteCategory(Guid categoryId)
        {
            this.categoriesCrudLogic.DeleteCategory(categoryId);
            return this.Ok();
        }
    }
}
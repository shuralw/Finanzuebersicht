using Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.Logic.Interfaces;
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
    [Route("nutzerfinanzen/summed-categories")]
    public class SummedCategoriesController : ControllerBase
    {
        private readonly ISummedCategoriesLogic summedCategoriesCrudLogic;

        public SummedCategoriesController(ISummedCategoriesLogic summedCategoriesCrudLogic)
        {
            this.summedCategoriesCrudLogic = summedCategoriesCrudLogic;
        }

        [HttpGet]
        [Authorize]
        [SwaggerOperation(Summary = "Get Categories with Pagination", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<CategoryDtoExpanded> GetSummedCategories()
        {
            return this.Ok(this.summedCategoriesCrudLogic.GetSummedCategories());
        }
    }
}
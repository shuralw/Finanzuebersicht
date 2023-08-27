using Microsoft.AspNetCore.Authorization;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common.API;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden
{
    [ApiController]
    [Route("nutzerfinanzen/start-salden")]
    public class StartSaldenCrudController : ControllerBase
    {
        private readonly IStartSaldenCrudLogic startSaldenCrudLogic;

        public StartSaldenCrudController(IStartSaldenCrudLogic startSaldenCrudLogic)
        {
            this.startSaldenCrudLogic = startSaldenCrudLogic;
        }

        [HttpGet]
        [Authorize]
        [SwaggerOperation(Summary = "Get Start Salden with Pagination", Tags = new[] { "Nutzerfinanzen" })]
        [Pagination(FilterFields = new[] { "Id" }, SortFields = new[] { "Id" })]
        public ActionResult<IDbPagedResult<StartSaldoDtoExpanded>> GetPagedStartSalden()
        {
            return this.Ok(this.startSaldenCrudLogic.GetPagedStartSalden());
        }

        [HttpGet]
        [Authorize]
        [Route("{startSaldoId}")]
        [SwaggerOperation(Summary = "Get Start Saldo by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<StartSaldoDtoExpanded> GetStartSaldoDetail(Guid startSaldoId)
        {
            return this.Ok(this.startSaldenCrudLogic.GetStartSaldoDetail(startSaldoId));
        }

        [HttpPost]
        [Authorize]
        [SwaggerOperation(Summary = "Create Start Saldo", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<DataBody<Guid>> CreateStartSaldo([FromBody] StartSaldoDtoData startSaldo)
        {
            return this.Ok(new DataBody<Guid>(this.startSaldenCrudLogic.CreateStartSaldo(startSaldo)));
        }

        [HttpPut]
        [Authorize]
        [SwaggerOperation(Summary = "Update Start Saldo", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult UpdateStartSaldo([FromBody] StartSaldoDtoDefaultUpdate startSaldo)
        {
            this.startSaldenCrudLogic.UpdateStartSaldo(startSaldo);
            return this.Ok();
        }

        [HttpDelete]
        [Authorize]
        [Route("{startSaldoId}")]
        [SwaggerOperation(Summary = "Delete Start Saldo by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult DeleteStartSaldo(Guid startSaldoId)
        {
            this.startSaldenCrudLogic.DeleteStartSaldo(startSaldoId);
            return this.Ok();
        }
    }
}
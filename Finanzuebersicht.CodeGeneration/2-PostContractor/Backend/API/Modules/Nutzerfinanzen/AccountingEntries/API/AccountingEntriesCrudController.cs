using Finanzuebersicht.Backend.CodeGeneration.Security.Authorization;
using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries;
using Krz.FullstackTemplate.Backend.Common.API;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.AccountingEntries
{
    [ApiController]
    [Route("nutzerfinanzen/accounting-entries")]
    public class AccountingEntriesCrudController : ControllerBase
    {
        private readonly IAccountingEntriesCrudLogic accountingEntriesCrudLogic;

        public AccountingEntriesCrudController(IAccountingEntriesCrudLogic accountingEntriesCrudLogic)
        {
            this.accountingEntriesCrudLogic = accountingEntriesCrudLogic;
        }

        [HttpGet]
        [Authorized]
        [SwaggerOperation(Summary = "Get Accounting Entries with Pagination", Tags = new[] { "Nutzerfinanzen" })]
        [Pagination(FilterFields = new[] { "CategoryId", "Id" }, SortFields = new[] { "Id" })]
        public ActionResult<IDbPagedResult<AccountingEntryDtoExpanded>> GetPagedAccountingEntries()
        {
            return this.Ok(this.accountingEntriesCrudLogic.GetPagedAccountingEntries());
        }

        [HttpGet]
        [Authorized]
        [Route("{accountingEntryId}")]
        [SwaggerOperation(Summary = "Get Accounting Entry by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<AccountingEntryDtoExpanded> GetAccountingEntryDetail(Guid accountingEntryId)
        {
            return this.Ok(this.accountingEntriesCrudLogic.GetAccountingEntryDetail(accountingEntryId));
        }

        [HttpPost]
        [Authorized]
        [SwaggerOperation(Summary = "Create Accounting Entry", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult<DataBody<Guid>> CreateAccountingEntry([FromBody] AccountingEntryDtoData accountingEntry)
        {
            return this.Ok(new DataBody<Guid>(this.accountingEntriesCrudLogic.CreateAccountingEntry(accountingEntry)));
        }

        [HttpPut]
        [Authorized]
        [SwaggerOperation(Summary = "Update Accounting Entry", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult UpdateAccountingEntry([FromBody] AccountingEntryDtoDefaultUpdate accountingEntry)
        {
            this.accountingEntriesCrudLogic.UpdateAccountingEntry(accountingEntry);
            return this.Ok();
        }

        [HttpDelete]
        [Authorized]
        [Route("{accountingEntryId}")]
        [SwaggerOperation(Summary = "Delete Accounting Entry by Id", Tags = new[] { "Nutzerfinanzen" })]
        public ActionResult DeleteAccountingEntry(Guid accountingEntryId)
        {
            this.accountingEntriesCrudLogic.DeleteAccountingEntry(accountingEntryId);
            return this.Ok();
        }
    }
}
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.AccountingEntries
{
    public class AccountingEntryDtoDefaultUpdate : AccountingEntryDtoData
    {
        public Guid Id { get; set; }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
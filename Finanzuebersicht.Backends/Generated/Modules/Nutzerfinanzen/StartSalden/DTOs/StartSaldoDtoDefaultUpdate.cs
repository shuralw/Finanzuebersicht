using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public class StartSaldoDtoDefaultUpdate : StartSaldoDtoData
    {
        public Guid Id { get; set; }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
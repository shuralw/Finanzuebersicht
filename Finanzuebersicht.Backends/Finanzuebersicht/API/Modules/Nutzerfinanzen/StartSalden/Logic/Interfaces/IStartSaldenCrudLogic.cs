using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden
{
    public interface IStartSaldenCrudLogic
    {
        Guid CreateStartSaldo(StartSaldoDtoData startSaldoCreate);

        void DeleteStartSaldo(Guid startSaldoId);

        StartSaldoDtoExpanded GetStartSaldoDetail(Guid startSaldoId);

        IDbPagedResult<StartSaldoDtoExpanded> GetPagedStartSalden();

        void UpdateStartSaldo(StartSaldoDtoDefaultUpdate startSaldoUpdate);
    }
}
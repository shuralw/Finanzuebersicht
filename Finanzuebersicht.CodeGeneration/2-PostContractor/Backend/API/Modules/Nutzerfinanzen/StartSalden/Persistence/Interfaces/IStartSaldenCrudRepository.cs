using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;
using System.Collections.Generic;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden
{
    public interface IStartSaldenCrudRepository
    {
        void CreateStartSaldo(StartSaldoDto startSaldo);

        void DeleteStartSaldo(Guid startSaldoId);

        StartSaldoDto GetStartSaldo(Guid startSaldoId);

        StartSaldoDtoExpanded GetStartSaldoDetail(Guid startSaldoId);

        IDbPagedResult<StartSaldoDtoExpanded> GetPagedStartSalden();

        void UpdateStartSaldo(StartSaldoDtoDefaultUpdate startSaldo);
    }
}
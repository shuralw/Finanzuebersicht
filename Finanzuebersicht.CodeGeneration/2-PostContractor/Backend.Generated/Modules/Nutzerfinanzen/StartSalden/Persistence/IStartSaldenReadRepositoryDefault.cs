using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public interface IStartSaldenReadRepositoryDefault
    {
        StartSaldoDto GetStartSaldo(Guid startSaldoId);

        StartSaldoDtoExpanded GetStartSaldoDetail(Guid startSaldoId);

        IDbPagedResult<StartSaldoDtoExpanded> GetPagedStartSalden();
    }
}
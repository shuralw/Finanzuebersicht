using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using System;
using System.Linq;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public class StartSaldenReadRepositoryDefault : IStartSaldenReadRepositoryDefault
    {
        protected readonly IPaginationContext paginationContext;

        protected readonly FinanzuebersichtDbContextRaw dbContext;

        public StartSaldenReadRepositoryDefault(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContextRaw dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public StartSaldoDto GetStartSaldo(Guid startSaldoId)
        {
            EfStartSaldoDto efStartSaldoDto = dbContext.StartSalden
                .Where(efStartSaldoDto => efStartSaldoDto.Id == startSaldoId)
                .SingleOrDefault();

            if (efStartSaldoDto == null)
            {
                throw new NotFoundResultException("StartSaldo ({id}) konnte nicht gefunden werden.", startSaldoId);
            }

            return StartSaldoDto.FromEfStartSaldoDto(efStartSaldoDto);
        }

        public StartSaldoDtoExpanded GetStartSaldoDetail(Guid startSaldoId)
        {
            EfStartSaldoDto efStartSaldoDto = this.dbContext.StartSalden
                .Where(efStartSaldoDto => efStartSaldoDto.Id == startSaldoId)
                .SingleOrDefault();

            if (efStartSaldoDto == null)
            {
                throw new NotFoundResultException("StartSaldo ({id}) konnte nicht gefunden werden.", startSaldoId);
            }

            return StartSaldoDtoExpanded.FromEfStartSaldoDto(efStartSaldoDto);
        }

        public IDbPagedResult<StartSaldoDtoExpanded> GetPagedStartSalden()
        {
            var efStartSalden = this.dbContext.StartSalden;

            return Pagination.Execute(
                efStartSalden,
                this.paginationContext,
                efStartSaldoDto => StartSaldoDtoExpanded.FromEfStartSaldoDto(efStartSaldoDto));
        }
    }
}
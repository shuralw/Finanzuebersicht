using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden;
using Finanzuebersicht.Database.Core.Generated.DbContext;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common;
using Krz.FullstackTemplate.Backend.Common.Contract;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden
{
    internal class StartSaldenCrudRepository : IStartSaldenCrudRepository
    {
        private readonly IPaginationContext paginationContext;

        private readonly FinanzuebersichtDbContext dbContext;

        public StartSaldenCrudRepository(
            IPaginationContext paginationContext,
            FinanzuebersichtDbContext dbContext)
        {
            this.paginationContext = paginationContext;

            this.dbContext = dbContext;
        }

        public void CreateStartSaldo(StartSaldoDto startSaldo)
        {
            EfStartSaldoDto efStartSaldoDto = StartSaldoDto.ToEfStartSaldoDto(startSaldo);

            this.dbContext.StartSalden.Add(efStartSaldoDto);
            this.dbContext.SaveChanges();
        }

        public void DeleteStartSaldo(Guid startSaldoId)
        {
            EfStartSaldoDto efStartSaldoDto = this.dbContext.StartSalden
                .Where(efStartSaldoDto => efStartSaldoDto.Id == startSaldoId)
                .SingleOrDefault();

            if (efStartSaldoDto == null)
            {
                throw new NotFoundResultException("Start Saldo ({id}) konnte nicht gefunden werden.", startSaldoId);
            }

            this.dbContext.StartSalden.Remove(efStartSaldoDto);
            this.dbContext.SaveChanges();
        }

        public StartSaldoDto GetStartSaldo(Guid startSaldoId)
        {
            EfStartSaldoDto efStartSaldoDto = this.dbContext.StartSalden
                .Where(efStartSaldoDto => efStartSaldoDto.Id == startSaldoId)
                .SingleOrDefault();

            if (efStartSaldoDto == null)
            {
                throw new NotFoundResultException("Start Saldo ({id}) konnte nicht gefunden werden.", startSaldoId);
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
                throw new NotFoundResultException("Start Saldo ({id}) konnte nicht gefunden werden.", startSaldoId);
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

        public void UpdateStartSaldo(StartSaldoDtoDefaultUpdate startSaldo)
        {
            EfStartSaldoDto efStartSaldoDto = this.dbContext.StartSalden
                .Where(efStartSaldoDto => efStartSaldoDto.Id == startSaldo.Id)
                .SingleOrDefault();

            if (efStartSaldoDto == null)
            {
                throw new NotFoundResultException("Start Saldo ({id}) konnte nicht gefunden werden.", startSaldo.Id);
            }

            StartSaldoDtoData.UpdateEfStartSaldoDto(efStartSaldoDto, startSaldo);

            this.dbContext.SaveChanges();
        }
    }
}
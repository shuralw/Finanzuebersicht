using Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden;
using Krz.FullstackTemplate.Backend.Common.Contract.Logic;
using Krz.FullstackTemplate.Backend.Common.Contract.Persistence;
using Krz.FullstackTemplate.Backend.Common.Logic;
using Microsoft.Extensions.Logging;
using System;

namespace Finanzuebersicht.Backend.CodeGeneration.Modules.Nutzerfinanzen.StartSalden
{
    internal class StartSaldenCrudLogic : IStartSaldenCrudLogic
    {
        private readonly IStartSaldenCrudRepository startSaldenCrudRepository;

        private readonly IGuidGenerator guidGenerator;
        private readonly ILogger<StartSaldenCrudLogic> logger;

        public StartSaldenCrudLogic(
            IStartSaldenCrudRepository startSaldenCrudRepository,
            IGuidGenerator guidGenerator,
            ILogger<StartSaldenCrudLogic> logger)
        {
            this.startSaldenCrudRepository = startSaldenCrudRepository;

            this.guidGenerator = guidGenerator;
            this.logger = logger;
        }

        public Guid CreateStartSaldo(StartSaldoDtoData startSaldoDtoData)
        {
            Guid newStartSaldoId = this.guidGenerator.NewGuid();
            StartSaldoDto startSaldoToCreate = StartSaldoDto.FromStartSaldoDtoData(newStartSaldoId, startSaldoDtoData);
            this.startSaldenCrudRepository.CreateStartSaldo(startSaldoToCreate);

            this.logger.LogInformation("StartSaldo ({id}) angelegt", newStartSaldoId);
            return newStartSaldoId;
        }

        public void DeleteStartSaldo(Guid startSaldoId)
        {
            this.startSaldenCrudRepository.DeleteStartSaldo(startSaldoId);

            this.logger.LogInformation("StartSaldo ({id}) gelöscht", startSaldoId);
        }

        public StartSaldoDtoExpanded GetStartSaldoDetail(Guid startSaldoId)
        {
            StartSaldoDtoExpanded startSaldoDtoExpanded = this.startSaldenCrudRepository.GetStartSaldoDetail(startSaldoId);

            this.logger.LogDebug("Details für StartSaldo ({id}) wurde geladen", startSaldoId);
            return startSaldoDtoExpanded;
        }

        public IDbPagedResult<StartSaldoDtoExpanded> GetPagedStartSalden()
        {
            IDbPagedResult<StartSaldoDtoExpanded> startSaldenPagedResult =
                this.startSaldenCrudRepository.GetPagedStartSalden();

            this.logger.LogDebug("StartSalden wurden geladen");
            return startSaldenPagedResult;
        }

        public void UpdateStartSaldo(StartSaldoDtoDefaultUpdate startSaldoDto)
        {
            this.startSaldenCrudRepository.UpdateStartSaldo(startSaldoDto);

            this.logger.LogInformation("StartSaldo ({id}) aktualisiert", startSaldoDto.Id);
        }
    }
}
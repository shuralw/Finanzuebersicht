using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public class StartSaldoDto : StartSaldoDtoData
    {
        public Guid Id { get; set; }

        public StartSaldoDto() { }

        public StartSaldoDto(StartSaldoDto startSaldoDto) : base(startSaldoDto)
        {
            this.Id = startSaldoDto.Id;
        }

        protected StartSaldoDto(EfStartSaldoDto efStartSaldoDto) : base(efStartSaldoDto)
        {
            this.Id = efStartSaldoDto.Id;
        }

        protected StartSaldoDto(Guid id, StartSaldoDtoData startSaldoDtoData) : base(startSaldoDtoData)
        {
            this.Id = id;
        }

        public static new StartSaldoDto FromEfStartSaldoDto(EfStartSaldoDto efStartSaldoDto)
        {
            if (efStartSaldoDto == null)
            {
                return null;
            }

            return new StartSaldoDto(efStartSaldoDto);
        }

        public static StartSaldoDto FromStartSaldoDtoData(Guid id, StartSaldoDtoData startSaldoDtoData)
        {
            return new StartSaldoDto(id, startSaldoDtoData);
        }

        public static EfStartSaldoDto ToEfStartSaldoDto(StartSaldoDto startSaldoDto)
        {
            return new EfStartSaldoDto()
            {
                Id = startSaldoDto.Id,
                Betrag = startSaldoDto.Betrag,
                AmDatum = startSaldoDto.AmDatum,
            };
        }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
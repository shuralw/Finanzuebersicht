using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;
using System;
using System.ComponentModel.DataAnnotations;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public class StartSaldoDtoData
    {
        [Required]
        public double Betrag { get; set; }

        [Required]
        public DateTime AmDatum { get; set; }

        public StartSaldoDtoData() { }

        public StartSaldoDtoData(StartSaldoDtoData startSaldoDtoData)
        {
            this.Betrag = startSaldoDtoData.Betrag;
            this.AmDatum = startSaldoDtoData.AmDatum;
        }

        protected StartSaldoDtoData(EfStartSaldoDto efStartSaldoDto)
        {
            this.Betrag = efStartSaldoDto.Betrag;
            this.AmDatum = efStartSaldoDto.AmDatum;
        }

        public static StartSaldoDtoData FromEfStartSaldoDto(EfStartSaldoDto efStartSaldoDto)
        {
            if (efStartSaldoDto == null)
            {
                return null;
            }

            return new StartSaldoDtoData(efStartSaldoDto);
        }

        public static void UpdateEfStartSaldoDto(EfStartSaldoDto efStartSaldoDto, StartSaldoDtoData startSaldoDtoData)
        {
            efStartSaldoDto.Betrag = startSaldoDtoData.Betrag;
            efStartSaldoDto.AmDatum = startSaldoDtoData.AmDatum;
        }

        public override string ToString()
        {
            return $"{this.Betrag}";
        }
    }
}
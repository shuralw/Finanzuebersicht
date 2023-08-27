using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.StartSalden;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.StartSalden
{
    public class StartSaldoDtoExpanded : StartSaldoDto
    {
        public StartSaldoDtoExpanded() { }

        public StartSaldoDtoExpanded(StartSaldoDtoExpanded startSaldo) : base(startSaldo)
        {
        }

        protected StartSaldoDtoExpanded(EfStartSaldoDto efStartSaldoDto) : base(efStartSaldoDto)
        {
        }

        public static new StartSaldoDtoExpanded FromEfStartSaldoDto(EfStartSaldoDto efStartSaldoDto)
        {
            if (efStartSaldoDto == null)
            {
                return null;
            }

            return new StartSaldoDtoExpanded(efStartSaldoDto);
        }
    }
}
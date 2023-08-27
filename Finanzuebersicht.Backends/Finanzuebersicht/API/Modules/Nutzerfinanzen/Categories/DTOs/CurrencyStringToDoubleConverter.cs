using CsvHelper;
using CsvHelper.Configuration;
using CsvHelper.TypeConversion;

namespace Finanzuebersicht.API.Modules.Nutzerfinanzen.Categories.DTOs
{
    public class CurrencyStringToDoubleConverter : DefaultTypeConverter
    {
        public override object ConvertFromString(string text, IReaderRow row, MemberMapData memberMapData)
        {
            if (text.EndsWith("€"))
            {
                text = text.TrimEnd('€').Trim();
            }

            if (double.TryParse(text, out double parsedValue))
            {
                return parsedValue;
            }
            else
            {
                throw new TypeConverterException(this, memberMapData, text, row.Context, "Cannot convert to double.");
            }
        }
    }
}
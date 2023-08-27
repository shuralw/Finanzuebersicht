using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class CategorySearchTermDtoDefaultUpdate : CategorySearchTermDtoData
    {
        public Guid Id { get; set; }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
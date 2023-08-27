using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using System;

namespace Finanzuebersicht.Backend.Generated.Modules.Nutzerfinanzen.Categories
{
    public class CategoryDtoDefaultUpdate : CategoryDtoData
    {
        public Guid Id { get; set; }

        public override string ToString()
        {
            return $"{this.Id} ({this.Id})";
        }
    }
}
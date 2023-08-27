using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using System;

namespace Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms
{
    public class EfCategorySearchTermDto
    {
        public EfCategorySearchTermDto()
        {
        }

        public Guid Id { get; set; }

        public Guid CategoryId { get; set; }

        public virtual EfCategoryDto Category { get; set; }

        public string Term { get; set; }
    }
}
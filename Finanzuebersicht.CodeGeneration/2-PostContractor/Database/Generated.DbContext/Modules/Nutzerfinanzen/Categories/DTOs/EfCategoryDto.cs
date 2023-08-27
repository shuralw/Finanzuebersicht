using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.AccountingEntries;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories;
using Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.CategorySearchTerms;
using System;

namespace Finanzuebersicht.Database.Core.Generated.DbContext.Modules.Nutzerfinanzen.Categories
{
    public class EfCategoryDto
    {
        public EfCategoryDto()
        {
            this.Categories = new HashSet<EfCategoryDto>();
            this.AccountingEntries = new HashSet<EfAccountingEntryDto>();
            this.CategorySearchTerms = new HashSet<EfCategorySearchTermDto>();
        }

        public Guid Id { get; set; }

        public string Title { get; set; }

        public string Color { get; set; }

        public Guid CategoryId { get; set; }

        public virtual EfCategoryDto Category { get; set; }

        public virtual ICollection<EfCategoryDto> Categories { get; set; }

        public virtual ICollection<EfAccountingEntryDto> AccountingEntries { get; set; }

        public virtual ICollection<EfCategorySearchTermDto> CategorySearchTerms { get; set; }
    }
}
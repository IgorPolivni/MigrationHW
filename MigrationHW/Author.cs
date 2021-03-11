using System;
using System.Collections.Generic;

#nullable disable

namespace MigrationHW
{
    public partial class Author
    {
        public Author()
        {
            Articles = new HashSet<Article>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Lastname { get; set; }

        public virtual ICollection<Article> Articles { get; set; }
    }
}

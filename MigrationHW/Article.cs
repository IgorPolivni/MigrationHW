using System;
using System.Collections.Generic;

#nullable disable

namespace MigrationHW
{
    public partial class Article
    {
        public Guid Id { get; set; }
        public Guid AuthorId { get; set; }
        public Guid CategoryId { get; set; }
        public string Content { get; set; }

        public virtual Author Author { get; set; }
        public virtual Category Category { get; set; }
    }
}

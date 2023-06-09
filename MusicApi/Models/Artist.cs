﻿using Newtonsoft.Json;

namespace MusicApi.Models
{
    public partial class Artist
    {
        public Artist()
        {
            Albums = new HashSet<Album>();
        }

        public Guid Id { get; set; }
        public string? Name { get; set; }
        [JsonIgnore]
        public virtual ICollection<Album> Albums { get; set; }
    }
}

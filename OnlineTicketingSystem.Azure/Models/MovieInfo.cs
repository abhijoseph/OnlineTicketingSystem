using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Azure.Models
{
    public class MovieInfo
    {
        public int MovieKey { get; set; }
        public string MovieName {get; set;}

        public string DirectorName { get; set; }

        public string ActorName { get; set; }

        public string ActressName { get; set; }

        public string Description { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.AzureWeb.Models
{
    public class MovieTheater
    {
        public int MovieTheaterKey { get; set; }

        public int MovieKey { get; set; }

        public string MovieName { get; set; }

        public int TheaterKey { get; set; }

        public string TheaterName { get; set; }

        public DateTime FromDateKey { get; set; }

        public DateTime ToDateKey { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.AzureWeb.Models
{
    public class MasterTheater
    {
        public int TheaterKey { get; set; }

        public string TheaterName { get; set; }

        public string City { get; set; }

        public int seatingCapacity { get; set; } 

    }
}

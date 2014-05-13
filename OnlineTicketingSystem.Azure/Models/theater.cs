using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Azure.Models
{
    public class Theater
    {
        public int TheaterKey { get; set; }
        public string TheaterName { get; set; }

        public string TheaterCode { get; set; }

        public int TheaterOwnerKey { get; set; }

        public string TheaterOwnerUsername { get; set; }

        public string Password { get; set; }

        public string EmailId { get; set; }

        public string City { get; set; }

        public string Location { get; set; }

        public string SeatingCapacity { get; set; }

        public string ImagePath { get; set; }
       
    }
}

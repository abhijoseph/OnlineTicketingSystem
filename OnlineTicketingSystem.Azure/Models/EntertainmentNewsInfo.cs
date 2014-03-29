using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Azure.Models
{
    public class EntertainmentNewsInfo
    {
        public int NewsKey { get; set; }

        public string Heading { get; set; }

        public string Description { get; set; }

        public string PostedOn { get; set; }

        public string PostedBy { get; set; }
    }
}

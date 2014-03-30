using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Web.Models
{
    public class BookedTicket
    {
        public int TicketKey { get; set; }

        public int MovieTheaterKey { get; set; }

        public int ShowTimeKey { get; set; }

        public int UserKey { get; set; }

        public int Seat { get; set; }

        public int DateKey { get; set; }
    }
}
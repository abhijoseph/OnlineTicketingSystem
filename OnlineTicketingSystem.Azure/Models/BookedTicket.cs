using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Azure.Models
{
    public class BookedTicket
    {
       public int TicketKey {get; set;}
      public int MovieTheaterKey {get; set;}
      public int ShowTimeKey {get; set;}
      public int UserKey {get; set;}
      public string Seat {get; set;}
      public int DateKey { get; set; }
      public string MovieName { get; set; }
      public string TheaterName { get; set; }
      public string Time { get; set; }
      public int NoOfSeats { get; set; }
      public string Date
      {
          get
          {
              string dateString = DateKey.ToString();
              return dateString.Substring(dateString.Length - 2, 2) + "-" + dateString.Substring(dateString.Length - 4, 2) + "-" + dateString.Substring(0, 4);
          }
      }
    }
}
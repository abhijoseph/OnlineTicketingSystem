using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.Web.Models
{
    public class User
    {
        public string FirstName { get; set; }


        public string LastName { get; set; }


        public string UserName { get; set; }

        public string DateOfBirth { get; set; }

        public string Password { get; set; }

        public string EmailId { get; set; }
    }
}

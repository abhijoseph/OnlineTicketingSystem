using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketSystem.AzureWeb.Models
{
    public class User
    {
        public int UserKey { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string UserName { get; set; }

        public string DateOfBirth { get; set; }

        public string Password { get; set; }

        public string EmailId { get; set; }

        public int RoleKey { get; set; }

        public string RoleName { get; set; }

        public string RoleDescription { get; set; }

    }
}

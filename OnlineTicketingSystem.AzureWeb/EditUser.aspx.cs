using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OnlineTicketSystem.AzureWeb.Models;
using OnlineTicketSystem.AzureWeb.Database;

namespace OnlineTicketSystem.AzureWeb
{
    public partial class EditUser : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //string userKey = Request.QueryString["userid"].ToString();
            //User user = _dbContext.GetUserById(Int32.Parse(userKey));
            //TxtbxFirst.Text = user.FirstName;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database;

namespace OnlineTicketSystem.Web
{
    public partial class EditUser : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string userKey = Request.QueryString["userid"].ToString();
            User user = _dbContext.GetUserById(userKey);
            TxtbxFirst.Text = user.FirstName;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
        }
    }
}

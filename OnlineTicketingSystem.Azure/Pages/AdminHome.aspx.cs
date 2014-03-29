using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicketSystem.Azure
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void LinkAddTheater_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThetrReg.aspx");
        }

        protected void LinkChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void LinkUpdateAccount_Click(object sender, EventArgs e)
        {

        }
    }
}

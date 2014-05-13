using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

namespace OnlineTicketSystem.Azure
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null && ((User)Session["user"]).RoleKey == 3)
            {
                adminDiv.Visible = false;
            }
            //if (Session["user"] != null && ((User)Session["user"]).RoleKey == 2)
            //{
            //    theaterDiv.Visible = true;
            //}
            //else
            //{
            //    theaterDiv.Visible = false;
            //}
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

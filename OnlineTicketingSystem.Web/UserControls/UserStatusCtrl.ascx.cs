using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicketSystem.Web.UserControls
{
    public partial class UserStatusCtrl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                divMyaccount.Visible = true;
                divAdmin.Visible = false;
                divLoggedIn.Visible = true;
                divLoggedOut.Visible = false;
                lblUserName.Text = Convert.ToString(Session["uid"]);
            }
            else
            {
                divMyaccount.Visible = false;
                divAdmin.Visible = false;
                divLoggedIn.Visible = false;
                divLoggedOut.Visible = true;
            }
            if (Convert.ToInt32(Session["Rolekey"]) == 2)
            {
                divAdmin.Visible = true;
                divAddMovie.Visible = false;
            }
            else if (Convert.ToInt32(Session["Rolekey"]) == 3)
            {
                divAdmin.Visible = false;
                divAddMovie.Visible = true;
            }
            else
            {
                divAddMovie.Visible = false;
            }
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session["uid"] = null;
            Response.Redirect("/Login.aspx");
        }
    }
}
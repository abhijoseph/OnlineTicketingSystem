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
                divAdmin.Visible = true;
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
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session["uid"] = null;
            Response.Redirect("/Login.aspx");
        }
    }
}
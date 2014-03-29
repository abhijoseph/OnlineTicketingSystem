using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace OnlineTicketSystem.Azure
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ticket.aspx");
        }
        protected void btlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void btlatestmovies_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetLatestMovies.aspx");
        }
        protected void btfilmreviews_Click(object sender, EventArgs e)
        {
            Response.Redirect("filmRev.aspx");
        }
        protected void btenews_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enews.aspx");
        }
    }
}
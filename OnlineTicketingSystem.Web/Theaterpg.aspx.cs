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
using System.Data.SqlClient;

namespace OnlineTicketSystem.Web
{
    public partial class Theaterpg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //string str = "insert into Theaterpg values('" + txtbxname.Text + "','" + txtbxdetails.text + "','" + path + "')";
        }
    }
}
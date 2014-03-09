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
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string usr = Session["uid"].ToString();
            string str = "select count(*) from Login where Username='" + usr + "'and Password='" + TxtbxPsd.Text + "'";

            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {

                int cnt = (int)rd[0];

                if (cnt == 1)
                {

                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
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
    public partial class Ticket : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select distinct City from register";
                SqlDataAdapter adpt = new SqlDataAdapter(str, con);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Ddlcity.DataSource = ds.Tables[0];
                    Ddlcity.DataValueField = "City";
                    Ddlcity.DataBind();


                }
            }


        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "select distinct TheaterName from register where City='" + Ddlcity.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Ddltheater.DataSource = ds.Tables[0];
                Ddltheater.DataValueField = "TheaterName";
                Ddltheater.DataBind();
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }
        protected void Ddltheater_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Ddllanguage_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void BtCnfirm_Click(object sender, EventArgs e)
        {
            String str = "insert into Ticket values('" + Ddlcity.SelectedValue + "','" + Ddltheater.SelectedValue + "','" + Ddllanguage.SelectedValue + "','" + Ddlmovie.SelectedValue + "','" + Txtbxdate.Text + "','" + Ddltime.SelectedValue + "','" + Txtbxseat.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void Btnselect_Click(object sender, EventArgs e)
        {

        }
        protected void Ddlmovie_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

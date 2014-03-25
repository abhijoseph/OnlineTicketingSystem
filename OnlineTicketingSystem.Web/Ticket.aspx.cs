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
using System.Data;
using System.Data.SqlClient;

namespace OnlineTicketSystem.Web
{
    public partial class Ticket : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        private static string _connectionString = ConfigurationManager.ConnectionStrings["onlineticketConnectionString"].ConnectionString;//ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection = new SqlConnection(_connectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select distinct City from register";
                SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Ddlcity.DataSource = ds.Tables[0];
                    Ddlcity.DataValueField = "City";
                    Ddlcity.DataBind();


                }

                seatSelectionGrid.DataSource = GetSeatMatrixTable();
                seatSelectionGrid.DataBind();
            }


        }

        public DataTable SeatMatrix
        {
            get
            {
                DataTable dt = (DataTable)Session["DataTable"];
                if (dt == null)
                {
                    dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ID", typeof(string)));
                    dt.Columns.Add(new DataColumn("Item", typeof(string)));
                    dt.Columns.Add(new DataColumn("Price", typeof(string)));


                    dt.Rows.Add(new object[] { "1", "XX", "12.43", });
                    dt.Rows.Add(new object[] { "2", "XX1", "11.43", });
                    dt.Rows.Add(new object[] { "3", "XX2", "13.43", });
                    Session["DataTable"] = dt;
                }
                return dt;
            }
            set
            {
                Session["DataTable"] = value;
            }
        }

        public DataTable GetSeatMatrixTable()
        {
            DataTable dt = new DataTable();
            string[] col = new string[7] { "A", "B", "C", "D", "E", "F", "G"};
            for (int i = 0; i < col.Count(); i++)
            {
                dt.Columns.Add(new DataColumn(col[i], typeof(string)));
            }
            for (int j = 0; j < 30; j++)
            {
                string[] colCell = new string[col.Count()];
                for (int i = 0; i < col.Count(); i++)
                {
                    colCell[i] = col[i] + j;
                }
                dt.Rows.Add(colCell);
            }
            return dt;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "select distinct TheaterName from register where City='" + Ddlcity.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
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
            SqlCommand cmd = new SqlCommand(str, _sqlConnection);
            _sqlConnection.Open();
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                cell.Attributes["onclick"] = "javascript:SelectCell(this);";
            }
        }
    }
}

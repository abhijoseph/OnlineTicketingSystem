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
using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

namespace OnlineTicketSystem.Azure
{
    public partial class Ticket : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        private static string _connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;//ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection = new SqlConnection(_connectionString);
        public DatabaseContext _dbContext = new DatabaseContext();
        string seatsBooked = string.Empty;
        string mySeats = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select distinct City from [dbo].[MasterTheater]";
                SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Ddlcity.DataSource = ds.Tables[0];
                    Ddlcity.DataValueField = "City";
                    Ddlcity.DataBind();

                    Ddlcity.SelectedIndex = 0;
                }

                

                string str1 = "select distinct ShowTimeKey, Time, ShowName from dbo.ShowTime";
                SqlDataAdapter adpt1 = new SqlDataAdapter(str1, _sqlConnection);
                DataSet ds1 = new DataSet();
                adpt1.Fill(ds1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Ddltime.DataSource = ds1.Tables[0];
                    Ddltime.DataValueField = "ShowTimeKey";
                    Ddltime.DataTextField = "Time";
                    Ddltime.DataBind();


                }
                CalendarExtender1.StartDate = DateTime.Today.AddDays(1);
                CalendarExtender1.EndDate = DateTime.Today.AddDays(30);
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
            string str = "select distinct TheaterKey, TheaterName from MasterTheater where City='" + Ddlcity.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Ddltheater.DataSource = ds.Tables[0];
                Ddltheater.DataValueField = "TheaterKey";
                Ddltheater.DataTextField = "TheaterName";
                Ddltheater.DataBind();
            }
            else
            {
                Ddltheater.Items.Clear();
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
            string seatMatrix = hiddenSeatMatrix.Value;
            int theaterKey = Int32.Parse(Ddltheater.SelectedValue);
            User user = Session["user"] as User;
            int userKey = user == null ? -1 : user.UserKey; 
            DateTime selectedDate = CalendarExtender1.SelectedDate.Value;
            string dateKey = selectedDate.Year.ToString() + selectedDate.Month.ToString("00") + selectedDate.Day.ToString("00");
            int showTimeKey = Int32.Parse(Ddltime.SelectedValue);
            _dbContext.BookTicket(theaterKey, showTimeKey, userKey, Int32.Parse(dateKey), seatMatrix);

            RefreshSeats();
            //String str = "insert into Ticket values('" + Ddlcity.SelectedValue + "','" + Ddltheater.SelectedValue + "','" + Ddllanguage.SelectedValue + "','" + Ddlmovie.SelectedValue + "','" + Txtbxdate.Text + "','" + Ddltime.SelectedValue + "','" + Txtbxseat.Text + "')";
            //SqlCommand cmd = new SqlCommand(str, _sqlConnection);
            //_sqlConnection.Open();
            //cmd.ExecuteNonQuery();
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
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                foreach (TableCell cell in e.Row.Cells)
                {
                    if (Array.IndexOf(seatsBooked.Split(','), cell.Text) == -1 || Array.IndexOf( mySeats.Split(','), cell.Text) > -1)
                    {
                        cell.Attributes["onclick"] = "javascript:SelectCell(this);";
                        if (Array.IndexOf(mySeats.Split(','), cell.Text) > -1)
                        {
                            cell.CssClass = "seat-selected";
                        }
                    }
                    else
                    {
                        //cell.Attributes["class"] = "seat-notavailable";
                        cell.CssClass = "seat-notavailable";
                    }
                }
            }
        }

        protected void btnGetSeats_Click(object sender, EventArgs e)
        {
            RefreshSeats();
        }

        public void RefreshSeats()
        {
            User user = Session["user"] as User;
            int userKey = user == null ? -1 : user.UserKey; 
            string theaterSelectedValue = Ddltheater.SelectedValue;
            CalendarExtender1.SelectedDate = Convert.ToDateTime(txtDate.Text);
            DateTime dateSelectedValue = CalendarExtender1.SelectedDate.Value;
            string showTimeSelectedValue = Ddltime.SelectedValue;
            if (theaterSelectedValue != null &&theaterSelectedValue != string.Empty && 
                dateSelectedValue != null && 
                showTimeSelectedValue != null && showTimeSelectedValue != string.Empty)
            {
                int theaterKey = Int32.Parse(Ddltheater.SelectedValue);
                DateTime selectedDate = CalendarExtender1.SelectedDate.Value;
                string dateKey = selectedDate.Year.ToString() + selectedDate.Month.ToString("00") + selectedDate.Day.ToString("00");
                int showTimeKey = Int32.Parse(Ddltime.SelectedValue);
                seatsBooked = _dbContext.GetBookedSeatsforMovieTheater(theaterKey, showTimeKey, Int32.Parse(dateKey));
                mySeats = _dbContext.GetBookedSeatsforUserforMovieTheater(theaterKey, showTimeKey, Int32.Parse(dateKey), userKey);
                hiddenMySeats.Value = mySeats;
                seatSelectionGrid.DataSource = GetSeatMatrixTable();
                seatSelectionGrid.DataBind();
            }
        }
    }
}

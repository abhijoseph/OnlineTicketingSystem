using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

using OnlineTicketSystem.Azure.Database.Helper;

namespace OnlineTicketingSystem.Azure.Pages
{
    public partial class MovieTheaterPage : System.Web.UI.Page
    {
        private static string _connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;//ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection = new SqlConnection(_connectionString);
        public DatabaseContext _dbContext = new DatabaseContext();

        public List<MovieInfo> movieList;
        public List<Theater> theaterList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                bindMovieTheaterGrid();
                //fromCalendar.StartDate = DateTime.Now.Date;
                //fromCalendar.EndDate = DateTime.Now.Date.AddDays(60);
                //fromCalendar.SelectedDate = DateTime.Now.Date;

                //toCalendar.StartDate = DateTime.Now.Date.AddDays(7);
                //toCalendar.EndDate = DateTime.Now.Date.AddDays(67);
                //toCalendar.SelectedDate = DateTime.Now.Date.AddDays(7);

                //string str = "select distinct TheaterName from [dbo].[MasterTheater]";
                //SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
                //DataSet ds = new DataSet();
                //adpt.Fill(ds);
                //if (ds.Tables[0].Rows.Count > 0)
                //{
                //    ddlTheater.DataSource = ds.Tables[0];
                //    ddlTheater.DataValueField = "TheaterName";
                //    ddlTheater.DataBind();

                //    ddlTheater.SelectedIndex = 0;
                //}
            }
        }

        protected void ddlTheater_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtFromDate_TextChanged(object sender, EventArgs e)
        {
            //toCalendar.StartDate = fromCalendar.SelectedDate;// DateTime.Now.Date.AddDays(7);
            //toCalendar.EndDate = fromCalendar.SelectedDate.Value.AddDays(60);
            //toCalendar.SelectedDate = fromCalendar.SelectedDate.Value.AddDays(7);
        }

        protected void button_Click(object sender, EventArgs e)
        {
            //toCalendar.StartDate = fromCalendar.SelectedDate;// DateTime.Now.Date.AddDays(7);
            //toCalendar.EndDate = fromCalendar.SelectedDate.Value.AddDays(60);
            //toCalendar.SelectedDate = fromCalendar.SelectedDate.Value.AddDays(7);
            //label.Text = text.Text;
        }

        public void bindMovieTheaterGrid()
        {
            List<MovieTheater> movieTheaters = new List<MovieTheater>(); //_dbContext.GetUsers();
            string str = @"select MT.MovieTheaterKey, MO.MovieName, TH.TheaterName, FromDateKey, ToDateKey  from dbo.MovieTheater MT
	                INNER JOIN dbo.Movies MO ON MT.MovieKey = MO.MovieKey
	                INNER JOIN dbo.MasterTheater TH ON MT.TheaterKey = TH.TheaterKey";
            DataSet ds = SqlHelper.ExecuteDataset(_sqlConnection, CommandType.Text, str);
            //while (reader.Read())
            //{
            //    MovieTheater movieTheater = new MovieTheater();
            //    movieTheater.MovieTheaterKey = DBNull.Value == reader["MovieTheaterKey"] ? -1 : Convert.ToInt32(reader["MovieTheaterKey"]);
            //    movieTheater.MovieName = DBNull.Value == reader["MovieName"] ? string.Empty : reader["MovieName"].ToString();
            //    movieTheater.TheaterName = DBNull.Value == reader["TheaterName"] ? string.Empty : reader["TheaterName"].ToString();
            //    movieTheater.FromDateKey = DBNull.Value == reader["FromDateKey"] ? DateTime.MinValue : DateTime.ParseExact(reader["FromDateKey"].ToString(), "yyyyMMdd", CultureInfo.InvariantCulture);
            //    movieTheater.ToDateKey = DBNull.Value == reader["ToDateKey"] ? DateTime.MinValue : DateTime.ParseExact(reader["ToDateKey"].ToString(), "yyyyMMdd", CultureInfo.InvariantCulture);
            //    movieTheaters.Add(movieTheater);
            //}
            //reader.Close();
            //reader.Dispose();
            //SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
            movieTheaterGridView.DataSource = ds;
            movieTheaterGridView.DataBind();
        }

        protected void movieTheaterGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            movieTheaterGridView.EditIndex = -1;
            bindMovieTheaterGrid();
        }

        protected void movieTheaterGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int retVal = 0;
            Label movieTheaterKey =  (Label)movieTheaterGridView.Rows[e.RowIndex].FindControl("MovieTheaterKeyLabel");
            string str = @"DELETE FROM dbo.MovieTheater 
                    WHERE MovieTheaterKey = " + movieTheaterKey.Text;
            retVal = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.Text, str);
            if (retVal > 0)
            {
                movieTheaterGridView.EditIndex = -1;

                bindMovieTheaterGrid();
                lblMsg.Text = "Movie deleted successfully";
            }
            else
            {
                lblMsg.Text = "Unable to delete Movie Show";
            }
        }

        protected void movieTheaterGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void movieTheaterGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //lblMsg.Text = "";
            movieTheaterGridView.EditIndex = e.NewEditIndex;
            bindMovieTheaterGrid();
        }

        protected void movieTheaterGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            UpdateMoviesTheaters();
            DropDownList movieNameDropDown = (DropDownList)e.Row.FindControl("movieDropDown");
            TextBox movieKeyTextBox = (TextBox)e.Row.FindControl("movieKey");
            if (movieNameDropDown != null)
            {
                movieNameDropDown.DataSource = movieList;
                //movieNameDropDown.SelectedIndex = Convert.ToInt32(movieKeyTextBox.Text) - 1;
                movieNameDropDown.DataBind();
            }

            DropDownList theaterNameDropDown = (DropDownList)e.Row.FindControl("theaterDropDown");
            TextBox theaterKeyTextBox = (TextBox)e.Row.FindControl("theaterKey");
            if (theaterNameDropDown != null)
            {
                theaterNameDropDown.DataSource = theaterList;
                //theaterNameDropDown.SelectedIndex = Convert.ToInt32(movieKeyTextBox.Text) - 1;
                theaterNameDropDown.DataBind();
            }
            if(e.Row.RowType == DataControlRowType.Footer)
            {
                DropDownList addMovieDropDown = (DropDownList)e.Row.FindControl("addMovieDropDown");
                DropDownList addTheaterDropDown = (DropDownList)e.Row.FindControl("addTheaterDropDown");
                if (addMovieDropDown != null)
                {
                    addMovieDropDown.DataSource = movieList;
                    addMovieDropDown.DataBind();
                }
                if (addTheaterDropDown != null)
                {
                    addTheaterDropDown.DataSource = theaterList;
                    addTheaterDropDown.DataBind();
                }
            }
        }

        private void UpdateMoviesTheaters()
        {
            string str = "select distinct TheaterKey, TheaterName from [dbo].[MasterTheater]";
            SqlDataAdapter adpt = new SqlDataAdapter(str, _sqlConnection);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                theaterList = ds.Tables[0].AsEnumerable().Select(dataRow => new Theater { TheaterName = dataRow.Field<string>("TheaterName"), TheaterKey = dataRow.Field<int>("TheaterKey") }).ToList();
            }

            string str2 = "select distinct MovieKey, MovieName from dbo.Movies";
            SqlDataAdapter adpt2 = new SqlDataAdapter(str2, _sqlConnection);
            DataSet ds2 = new DataSet();
            adpt2.Fill(ds2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                movieList = ds2.Tables[0].AsEnumerable().Select(dataRow => new MovieInfo { MovieName = dataRow.Field<string>("MovieName"), MovieKey = dataRow.Field<int>("MovieKey") }).ToList();
            }
        }

        protected void movieTheaterGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                int retVal = 0;

                TextBox fromDate = (TextBox)movieTheaterGridView.FooterRow.FindControl("txtFromDateAdd");
                TextBox toDate = (TextBox)movieTheaterGridView.FooterRow.FindControl("txtToDateAdd");
                DropDownList addMovieDropDown = (DropDownList)movieTheaterGridView.FooterRow.FindControl("addMovieDropDown");
                DropDownList addTheaterDropDown = (DropDownList)movieTheaterGridView.FooterRow.FindControl("addTheaterDropDown");

                DateTime fromDateTime = Convert.ToDateTime(fromDate.Text);
                DateTime toDateTime = Convert.ToDateTime(toDate.Text);
                

                string str = @"INSERT INTO dbo.MovieTheater 
                    VALUES(" + addMovieDropDown.SelectedValue + "," + addTheaterDropDown.SelectedValue + "," + ToDateKey(fromDateTime) + "," + ToDateKey(toDateTime) + ")";
                retVal = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.Text, str);
                if(retVal > 0)
                {
                    movieTheaterGridView.EditIndex = -1;

                    bindMovieTheaterGrid();
                    lblMsg.Text = "Movie Show added successfully";
                }
                else
                {
                    lblMsg.Text = "Unable to add Movie Show";
                }
            }
        }

        private static string ToDateKey(DateTime value)
        {
            return Convert.ToString(value.Year) + value.Month.ToString("00") + value.Day.ToString("00");
        }
    }
}
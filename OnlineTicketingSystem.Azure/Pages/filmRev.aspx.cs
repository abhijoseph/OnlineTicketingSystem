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
using System.Collections.Generic;

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;


namespace OnlineTicketSystem.Azure
{
    public partial class filmRev : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                List<LatestMovies> movies = _dbContext.GetLatestMovies();
                ddlMovieReview.DataSource = movies;
                ddlMovieReview.DataTextField = "MovieName";
                ddlMovieReview.DataValueField = "MovieKey";
                ddlMovieReview.SelectedIndex = 0;
                ddlMovieReview.DataBind();
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
           
        }



        protected void ddlMovieReview_SelectedIndexChanged(object sender, EventArgs e)
        {
            LatestMovies movie = _dbContext.GetMovie(Convert.ToInt32(ddlMovieReview.SelectedItem.Value));
            TextReview.Text = movie.Review;
        }
    }
}
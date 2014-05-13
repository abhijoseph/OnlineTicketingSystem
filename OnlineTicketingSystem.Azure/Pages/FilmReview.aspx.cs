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

namespace OnlineTicketingSystem.Azure.Pages
{
    public partial class FilmReview : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {

                List<LatestMovies> movies = _dbContext.GetLatestMovies();
                ddlMovieReview.DataSource = movies;
                ddlMovieReview.DataTextField = "MovieName";
                ddlMovieReview.DataValueField = "MovieKey";
                var movieId = Request.QueryString["MovieId"];
                if (movieId != null)
                {
                    var ind = movies.IndexOf(movies.Where(r => r.Moviekey == Convert.ToInt32(movieId)).FirstOrDefault());
                    ddlMovieReview.SelectedIndex = ind;
                }
                else
                {
                    ddlMovieReview.SelectedIndex = 0;
                }
                ddlMovieReview.DataBind();
                RefreshMovie();
            }
        }

        protected void ddlMovieReview_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshMovie();
        }

        public void RefreshMovie()
        {
            LatestMovies movie = _dbContext.GetMovie(Convert.ToInt32(ddlMovieReview.SelectedItem.Value));
            TextReview.Text = movie.Review == string.Empty? "Not Available" : movie.Review;
            txtLanguage.Text = movie.Language;
            txtDir.Text = movie.Director;
            txtStar.Text = movie.Actor + ", " + movie.Actress;
        }

        //protected void ButtonSubmit_Click(object sender, EventArgs e)
        //{
        //    FilmReview review = new FilmReview();
        //    review.MovieKey = Convert.ToInt32(ddlMovieReview.SelectedItem.Value);
        //    review.MovieName = ddlMovieReview.SelectedItem.Text;
        //    review.Review = TextReview.Text;
        //    bool success = _dbContext.AddOrUpdateFilmReview(review);
        //    if (success)
        //    {
        //        Lblstatus.Text = "Add/Update completed successfully!";
        //    }
        //    else
        //    {
        //        Lblstatus.Text = "Add/Update failed!";
        //    }
        //}
    }
}
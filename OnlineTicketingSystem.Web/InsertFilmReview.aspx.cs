using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database;

namespace OnlineTicketSystem.Web
{
    public partial class InsertFilmReview : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            
                List<LatestMovies> movieslist = _dbContext.GetLatestMovies();
                DdlMovieName.DataSource = movieslist;
                DdlMovieName.DataTextField = "MovieName";
                
                DdlMovieName.DataBind();
            
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            FilmReview review = new FilmReview();
            review.MovieName = DdlMovieName.SelectedItem.Text;
            review.Review = TextReview.Text;
            //review.PostedOn = TextPostedOn.Text;
            //enewsInfo.PostedBy = TextPostedBy.Text;
            bool returnVal = _dbContext.InsertFilmReview(review);
            if (returnVal == true)
            {
                Lblstatus.Text = " Film Review Added Successfully";
            }
            else
            {
                Lblstatus.Text = "Unable to Add";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextReview_TextChanged(object sender, EventArgs e)
        {

         

        }
    }
}

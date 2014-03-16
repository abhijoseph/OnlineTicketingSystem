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

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database;

namespace OnlineTicketSystem.Web
{
    public partial class latestmovie : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            LatestMovies movies = new LatestMovies();
            movies.MovieName = TextMovieName.Text;
            movies.Language = TextLanguage.Text;
            movies.Director = TextDirector.Text;
            movies.Actor = TextActor.Text;
            movies.Actress = TextActress.Text;
            bool returnVal = _dbContext.InsertLatestMovies(movies);
        }
    }
}
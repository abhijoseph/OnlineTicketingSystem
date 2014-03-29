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
            
                List<LatestMovies> movies = _dbContext.GetLatestMovies();
                DdlMovie.DataSource = movies;
                DdlMovie.DataTextField = "MovieName";
                
                DdlMovie.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

      
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void TextReview_TextChanged(object sender, EventArgs e)
        {

            
        }
    }
}
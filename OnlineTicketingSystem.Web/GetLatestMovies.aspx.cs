﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database;


namespace OnlineTicketSystem.Web
{
    public partial class GetLatestMovies : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<LatestMovies> enewsList = _dbContext.GetLatestMovies();
            eNewsRepeater.DataSource = enewsList;
            eNewsRepeater.DataBind();
        }
    }
}
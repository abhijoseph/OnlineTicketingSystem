﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicketSystem.AzureWeb
{
    public partial class TheaterHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void ButtonUpdateMovie_Click(object sender, EventArgs e)
        {
            Response.Redirect("Theaterpg.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Theaterpg.aspx");
        }

        protected void LinkChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }
    }
}

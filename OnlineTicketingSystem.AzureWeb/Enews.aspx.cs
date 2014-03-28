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

using OnlineTicketSystem.AzureWeb.Models;
using OnlineTicketSystem.AzureWeb.Database;

namespace OnlineTicketSystem.AzureWeb
{
    public partial class Enews : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<EntertainmentNewsInfo> enewsList = _dbContext.GetEntertainmentNews();
                eNewsRepeater.DataSource = enewsList;
                eNewsRepeater.DataBind();
            }
        }
    }
}
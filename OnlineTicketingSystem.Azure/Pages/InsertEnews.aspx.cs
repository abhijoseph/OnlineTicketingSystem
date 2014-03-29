using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

namespace OnlineTicketSystem.Azure
{
    public partial class InsertEnews : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            EntertainmentNewsInfo enewsInfo = new  EntertainmentNewsInfo();
            enewsInfo.Heading = TextHeading.Text;
            enewsInfo.Description=TextDescription.Text;
            enewsInfo.PostedOn=TextPostedOn.Text;
            enewsInfo.PostedBy=TextPostedBy.Text;
            bool returnVal = _dbContext.InsertEntertainmentNews(enewsInfo);
            if (returnVal == true)
            {
                Lblstatus.Text = "Entertainment News Added Successfully";
            }
            else
            {
                Lblstatus.Text = "Unable to Add News Item";
            }
           
        }
    }
}

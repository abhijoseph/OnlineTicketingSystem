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
using System.Data.SqlClient;

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

namespace OnlineTicketSystem.Azure
{
    public partial class Theaterpg : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        String path;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //string str = "insert into Theaterpg values('" + txtbxname.Text + "','" + txtbxdetails.text + "','" + path + "')";
        }

        protected void txtbxdetails_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
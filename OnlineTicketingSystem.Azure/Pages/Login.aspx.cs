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
    public partial class _Login : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtbxusr_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Txtbxpswd_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Btnsign_Click(object sender, EventArgs e)
        {
            try
            {
                User user = _dbContext.GetUser(txtbxusr.Text, Txtbxpswd.Text);
                if (user != null)
                {
                    Session["user"] = user;
                    Session["uid"] = user.UserName;
                    Session["Rolekey"] = user.RoleKey;
                    //_dbContext.InsertUserLog(user.UserKey, Session.SessionID);
                    
                    Response.Redirect("../Pages/UserHome.aspx");
                }
                else
                {
                    label1.Text = "Invalid Username or Password !";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                if (ex.InnerException != null)
                {
                    Response.Write(ex.InnerException.Message);
                }
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/Create.aspx");

        }
    }
}
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
            User user = _dbContext.GetUser(txtbxusr.Text, Txtbxpswd.Text);
            if (user != null)
            {
                Session["user"] = user;
                Session["uid"] = user.UserName;
                Session["Rolekey"]=user.RoleKey;
                _dbContext.InsertUserLog(user.UserKey, HttpContext.Current.Session.SessionID);
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                label1.Text = "Invalid Username or Password !";
            }

            //String str = "select count(Username )from UserLogin where Username='" + txtbxusr.Text + "'and Password='" + Txtbxpswd.Text + "'";

            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //rd = cmd.ExecuteReader();
            //if (rd.Read())
            //{
            //    int count = Convert.ToInt32(rd[0]);
            //    if (count == 1)
            //    {
            //        Session["uid"] = txtbxusr.Text;
            //        string login_dt = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
            //        Response.Write(login_dt);
            //        string logout_dt = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
            //        Response.Write(logout_dt);
            //        string log = "insert into UserDisp(Eid,LoginTime,LogoutTime) values('" + txtbxusr.Text + "','" + login_dt + "','" + logout_dt + "')";

            //        // String str = "select count(Username )from UserLogin where Username='" + txtbxusr.Text + "'and Password='" + Txtbxpswd.Text + "'";
            //        SqlCommand cmd1 = new SqlCommand(log, con1);
            //        con1.Open();
            //        cmd1.ExecuteNonQuery();
            //        con1.Close();
            //        Response.Redirect("UserHome.aspx");

            //    }
            //    else
            //    {
            //        label1.Text = "Invalid Username or Password !";
            //    }
            //}
            //con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");

        }
    }
}
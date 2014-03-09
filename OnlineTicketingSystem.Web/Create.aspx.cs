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

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database;

namespace OnlineTicketSystem.Web
{
    public partial class Create : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        public DatabaseContext _dbContext = new DatabaseContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TxtbxFirst_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Btregister_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.FirstName = TxtbxFirst.Text;
            user.LastName=TxtBxLast.Text;
            user.UserName=TextBxUsername.Text;
            user.EmailId = TxtEid.Text;
            user.Password = TxtBxpswd.Text;
            user.DateOfBirth = Ddldate.SelectedItem.Text + "/" + Ddlmnth.SelectedItem.Text + "/" + Ddlyr.SelectedItem.Text;

            _dbContext.InsertUser(user);
            //string str = "insert into UserReg values('" + TxtbxFirst.Text + "','" + TxtBxLast.Text + "','" + TextBxUsername.Text + "','" + TxtEid.Text + "','" + TxtBxpswd.Text + "','" + dob + "')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            ////  Response.Write(""+str);
            //Label11.Text = "Registered successfully";
            //con.Close();
            Label11.Text = "Registered successfully";
        }
        protected void TextBxrenter_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
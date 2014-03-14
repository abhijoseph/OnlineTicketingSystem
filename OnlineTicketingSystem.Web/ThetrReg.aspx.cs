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
    public partial class _ThetrReg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
        public DatabaseContext _dbContext = new DatabaseContext();
        
        string path;
        protected void Page_Load(object sender, EventArgs e)
        {
            path = "~//theaterId//" + Txtbxthetrcd.Text + ".jpg";
            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {


        }
        protected void Button2_Click(object sender, EventArgs e)
        {



        }
        protected void Btsub_Click(object sender, EventArgs e)
        {
            Theater theater = new Theater();
            theater.TheaterName = Txtbxthetrnm.Text;
            theater.TheaterCode = Txtbxthetrcd.Text;
            theater.TheaterCode = txtusername.Text;
            theater.Password = Txtthtrpd.Text;
            theater.EmailId = TxtthtrEml.Text;
            theater.City = Ddlcity.SelectedItem.Text;
            theater.Location = Ddlloc.SelectedItem.Text;
            theater.SeatingCapacity = Txtcap.Text;
            theater.ImagePath = "~//theaterId//" + Txtbxthetrcd.Text + ".jpg";
            //
            _dbContext.RegisterTheater(theater);


            //String str = "insert into Register values('" + Txtbxthetrnm.Text + "'," + Txtbxthetrcd.Text + ",'" + txtusername.Text + "','" + Txtthtrpd.Text + "','" + TxtthtrEml.Text + "','" + Ddlcity.SelectedValue + "','" + Ddlloc.SelectedValue + "'," + Txtcap.Text + ",'" + path + "')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //  Response.Write(""+str);
            Label9.Text = "Registered successfully";
            //con.Close();
        }
        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                Label8.Text = "";
                FileUpload1.SaveAs(Server.MapPath(path));
                Image1.ImageUrl = path;
            }
            else
            {
                Label8.Text = "Pls Select file";
            }
        }
        protected void Txtbxthetrnm_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Txtbxthetrcd_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Ddlcity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Txtcap_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
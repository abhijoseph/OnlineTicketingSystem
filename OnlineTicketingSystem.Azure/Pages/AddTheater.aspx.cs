using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;

namespace OnlineTicketingSystem.Azure.Pages
{
    public partial class AddTheater : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        private List<Theater> _allTheaters;

        public List<Theater> AllTheaters
        {
            get
            {
                if(Session["theaters"] == null)
                {
                    AllTheaters = _dbContext.GetAllTheaters();
                    Session["theaters"] =_allTheaters;
                }
                return Session["theaters"] as List<Theater>;
            }
            set
            {
                _allTheaters = value;
                Session["theaters"] = _allTheaters;
            }
        }
             
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                RefreshTheaters();

                List<User> users = _dbContext.GetUsers();
                ddlUser.DataSource = users;
                ddlUser.DataTextField = "UserName";
                ddlUser.DataValueField = "UserKey";
                ddlUser.DataBind();
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Theater theater = new Theater();
            if (ddlTheater.SelectedIndex == 0)
            {
                theater.TheaterKey = -1;
            }
            else
            {
                theater.TheaterKey = Convert.ToInt32(ddlTheater.SelectedValue);
            }
            theater.TheaterName = txtTheaterName.Text;
            theater.Location = txtTheaterCity.Text;
            theater.SeatingCapacity = txtSeatingCapacity.Text;
            theater.TheaterOwnerUsername = ddlUser.SelectedItem.Text;
            theater.TheaterOwnerKey = Convert.ToInt32(ddlUser.SelectedValue);
            
            bool returnVal = _dbContext.InsertOrUpdateTheater(theater);
            if (returnVal == true)
            {
                Lblstatus.Text = "Theater Added/Updated Successfully";
            }
            else
            {
                Lblstatus.Text = "Unable to Add/Update Theater";
            }
            RefreshTheaters();
            
    }

        protected void ddlTheater_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if(ddlTheater.SelectedIndex == 0)
            {
                txtTheaterName.Text = string.Empty;
                txtTheaterCity.Text = string.Empty;
                txtSeatingCapacity.Text = string.Empty;
            }
            else
            {
                Theater selTheater = AllTheaters.Where(x => x.TheaterKey == Convert.ToInt32(ddlTheater.SelectedValue)).First();
                if(selTheater != null)
                {
                    txtTheaterName.Text = selTheater.TheaterName;
                    txtTheaterCity.Text = selTheater.City;
                    txtSeatingCapacity.Text = selTheater.SeatingCapacity;
                    //int userIndex = 
                    ddlUser.SelectedIndex = ddlUser.Items.IndexOf(ddlUser.Items.FindByValue(selTheater.TheaterOwnerKey.ToString()));
                }
            }
        }

        public void RefreshTheaters()
        {
            AllTheaters = _dbContext.GetAllTheaters();
            //Session["theaters"] = allTheaters;
            ddlTheater.DataSource = AllTheaters;
            ddlTheater.DataTextField = "TheaterName";
            ddlTheater.DataValueField = "TheaterKey";
            ddlTheater.DataBind();
            ddlTheater.Items.Insert(0, "Add Theater");
        }
    }
}
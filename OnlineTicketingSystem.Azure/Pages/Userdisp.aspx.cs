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

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database;


namespace OnlineTicketSystem.Azure
{
    public partial class Userdisp : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();

        public Dictionary<int, string> RoleList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvBind();
                roleBind();
            }

        }
        

        protected void usersGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            usersGridView.EditIndex = -1;
            gvBind();
        }

        protected void usersGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView gv = (GridView)sender;
            GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
            //GridViewRow  = (GridViewRow)usersGridView.Rows[e.RowIndex];
            Label UserKeyLabel = (Label)row.FindControl("UserKeyLabel");
            TextBox FirstNameTextBox = (TextBox)row.FindControl("txtFirstName");
            TextBox LastNameTextBox = (TextBox)row.FindControl("txtLastName");
            TextBox RoleKeyTextBox = (TextBox)row.FindControl("txtRoleKey");
            DropDownList RoleDropDown = (DropDownList)row.FindControl("roleDropDown");
            
            User user = new User();
            user.UserKey = Convert.ToInt32(UserKeyLabel.Text);
            user.FirstName = FirstNameTextBox.Text;
            user.LastName = LastNameTextBox.Text;
            user.RoleKey = Convert.ToInt32(RoleDropDown.SelectedItem.Value);// Convert.ToInt32(RoleKeyTextBox.Text);
            bool result = _dbContext.UpdateUser(user);
            if (result)
            {
                lblMsg.Text = "Record is updated successfully.";
            }
            usersGridView.EditIndex = -1;
            gvBind();
        }

        protected void usersGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void usersGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
           // GridView gridView1 = (GridView)sender;
            // Change the row state
            //gridView1.Rows[e.NewEditIndex].RowState = DataControlRowState.Edit;
            lblMsg.Text = "";
            usersGridView.EditIndex = e.NewEditIndex;
            gvBind();
        }

        public void gvBind()
        {
            List<User> users = _dbContext.GetUsers();
            usersGridView.DataSource = users;
            usersGridView.DataBind();
        }

        public void roleBind()
        {
            RoleList = Enum.GetValues(typeof(UserRoleEnum))
               .Cast<UserRoleEnum>()
               .ToDictionary(t => (int)t, t => t.ToString() );
            //var array = (Enum.GetValues(typeof(UserRoleEnum)).Cast<UserRoleEnum>());
            //RoleList = array.ToDictionary(a =>  { Convert.ToInt32(a), a.ToString()});
        //    RoleList = array.Select(a => new Dictionary<int, string>() {
        //    {Convert.ToInt32(a),
        //    a.ToString()}
            
        //});

        }

        protected void usersGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            roleBind();
            DropDownList drop = (DropDownList)e.Row.FindControl("roleDropDown");
            TextBox RoleKeyTextBox = (TextBox)e.Row.FindControl("txtRoleKey");
            if (drop != null)
            {
                drop.DataSource = RoleList;
                drop.SelectedIndex = Convert.ToInt32(RoleKeyTextBox.Text) - 1;
                drop.DataBind();
            }
        }
    }
}
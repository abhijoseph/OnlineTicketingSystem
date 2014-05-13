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
    public partial class CancelTickets : System.Web.UI.Page
    {
        public DatabaseContext _dbContext = new DatabaseContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<BookedTicket> bookedTickets = new List<BookedTicket>();
                User user = Session["user"] as User;
                if (user != null)
                {
                    bookedTickets = _dbContext.GetBookedSeatsforUser(user.UserKey);
                    cancelTicketGridView.DataSource = bookedTickets;
                    cancelTicketGridView.DataBind();
                }
            }
        }

        protected void cancelTicketGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            User user = Session["user"] as User;
                if (user != null)
                {
            if (e.CommandName.Equals("Cancel"))
            {
                //Label ticketKey = (Label)e.CommandSource.FindControl("lblTicketKey");
                //_dbContext.CancelAllTicketsForTheater(user.UserKey)
            }
                }
        }
    }
}
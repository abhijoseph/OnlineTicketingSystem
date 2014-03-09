using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

using OnlineTicketSystem.Web.Models;

namespace OnlineTicketSystem.Web.Database
{
    public class DatabaseContext
    {
        private static string _connectionString = ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection con = new SqlConnection(_connectionString);

        public DatabaseContext()
        {
        }

        public void InsertUser(User user)
        {
            string str = "insert into UserReg values('" + user.FirstName + "','" + user.LastName + "','" + user.UserName + "','" + user.EmailId + "','" + user.Password + "','" + user.DateOfBirth + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            //  Response.Write(""+str);
            
            con.Close();
        }
        public void RegisterTheater(Theater theater)
        {
            String str = "insert into Register values('" + theater.TheaterName + "','" + theater.TheaterCode + "','" + theater.TheaterCode + "','" + theater.Password + "','" + theater.EmailId + "','" + theater.City + "','" + theater.Location + "','" + theater.SeatingCapacity + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}

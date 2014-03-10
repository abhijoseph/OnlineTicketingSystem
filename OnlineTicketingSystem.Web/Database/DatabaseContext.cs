using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database.Helper;

namespace OnlineTicketSystem.Web.Database
{
    public class DatabaseContext
    {
        private static string _connectionString = ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection;

        public DatabaseContext()
        {
            _sqlConnection = new SqlConnection(_connectionString);
        }

        public bool InsertUser(User user)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertUser", new SqlParameter[] { 
                new SqlParameter("@FirstName", user.FirstName), 
                new SqlParameter("@LastName", user.LastName),
                new SqlParameter("@UserName", user.UserName),
                new SqlParameter("@Password", user.Password),
                new SqlParameter("@EmailId", user.EmailId),
                new SqlParameter("@DateOfBirth", user.DateOfBirth)});
            return ret > 0;
            //string str = "insert into UserReg values('" + user.FirstName + "','" + user.LastName + "','" + user.UserName + "','" + user.EmailId + "','" + user.Password + "','" + user.DateOfBirth + "')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            ////  Response.Write(""+str);
            
            //con.Close();
        }

        public User GetUser(string userId, string password)
        {
            SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetUser", new SqlParameter[] { });

            //string str = "insert into UserReg values('" + user.FirstName + "','" + user.LastName + "','" + user.UserName + "','" + user.EmailId + "','" + user.Password + "','" + user.DateOfBirth + "')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            ////  Response.Write(""+str);

            //con.Close();
            return new User();
        }

        public void RegisterTheater(Theater theater)
        {
            String str = "insert into Register values('" + theater.TheaterName + "','" + theater.TheaterCode + "','" + theater.TheaterCode + "','" + theater.Password + "','" + theater.EmailId + "','" + theater.City + "','" + theater.Location + "','" + theater.SeatingCapacity + "')";
            SqlCommand cmd = new SqlCommand(str, _sqlConnection);
            _sqlConnection.Open();
            cmd.ExecuteNonQuery();
            _sqlConnection.Close();

        }


    }
}

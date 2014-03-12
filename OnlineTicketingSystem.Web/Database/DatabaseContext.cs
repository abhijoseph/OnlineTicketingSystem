using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

using OnlineTicketSystem.Web.Models;
using OnlineTicketSystem.Web.Database.Helper;

namespace OnlineTicketSystem.Web.Database
{
    public class DatabaseContext
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["onlineticketConnectionString"].ConnectionString;//ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection;

        public DatabaseContext()
        {
            _sqlConnection = new SqlConnection(_connectionString);
        }

        public bool InsertUser(User user)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertUser",  
                new SqlParameter("@FirstName", SqlDbType.VarChar).Value = user.FirstName, 
                new SqlParameter("@LastName", SqlDbType.VarChar).Value = user.LastName,
                new SqlParameter("@UserName", SqlDbType.VarChar).Value = user.UserName,
                new SqlParameter("@Password", SqlDbType.VarChar).Value = user.Password,
                new SqlParameter("@EmailId", SqlDbType.VarChar).Value = user.EmailId,
                new SqlParameter("@DateOfBirth",SqlDbType.DateTime).Value = DateTime.Parse(user.DateOfBirth));
            return ret > 0;
        }

        public User GetUser(string userId, string password)
        {
            SqlDataReader reader = null;
            User user = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetUser",  
                new SqlParameter("@UserName", SqlDbType.VarChar).Value = userId, 
                new SqlParameter("@Password", SqlDbType.VarChar).Value = password);
            while (reader.Read())
            {
                user = new User();
                user.FirstName = DBNull.Value == reader["FirstName"] ? string.Empty : reader["FirstName"].ToString();
                user.LastName = DBNull.Value == reader["LastName"] ? string.Empty : reader["LastName"].ToString();
                user.EmailId = DBNull.Value == reader["EmailId"] ? string.Empty : reader["EmailId"].ToString();
                user.Password = DBNull.Value == reader["Password"] ? string.Empty : reader["Password"].ToString();
                user.UserName = DBNull.Value == reader["UserName"] ? string.Empty : reader["UserName"].ToString();
                user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
            }
            reader.Close();
            reader.Dispose();
            //string str = "insert into UserReg values('" + user.FirstName + "','" + user.LastName + "','" + user.UserName + "','" + user.EmailId + "','" + user.Password + "','" + user.DateOfBirth + "')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            ////  Response.Write(""+str);

            //con.Close();
            return user;
        }

        public bool InsertUserLog(int userKey, string sessionId)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertUserLog",
                new SqlParameter("@UserName", SqlDbType.Int).Value = userKey,
                new SqlParameter("@SessionId", SqlDbType.VarChar).Value = sessionId,
                new SqlParameter("@LoginDate", SqlDbType.VarChar).Value = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());
            return ret > 0;
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

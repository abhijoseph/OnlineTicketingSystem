﻿using System;
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
                new SqlParameter("@Password", SqlDbType.VarChar).Value =password);
            while (reader.Read())
            {
                user = new User();
                user.FirstName = DBNull.Value == reader["FirstName"] ? string.Empty : reader["FirstName"].ToString();
                user.LastName = DBNull.Value == reader["LastName"] ? string.Empty : reader["LastName"].ToString();
                user.EmailId = DBNull.Value == reader["EmailId"] ? string.Empty : reader["EmailId"].ToString();
                user.Password = DBNull.Value == reader["Password"] ? string.Empty : reader["Password"].ToString();
                user.UserName = DBNull.Value == reader["UserName"] ? string.Empty : reader["UserName"].ToString();
                user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
                user.RoleKey = DBNull.Value == reader["RoleKey"] ? 1 : Convert.ToInt32(reader["RoleKey"].ToString());
              
            }
            reader.Close();
            reader.Dispose();
            return user;
        }

        public User GetUserById(int userId)
        {
            SqlDataReader reader = null;
            User user = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetUserById",
                new SqlParameter("@UserName", SqlDbType.VarChar).Value = userId);
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
           // cmd.ExecuteNonQuery();
            _sqlConnection.Close();

        }

        #region ENews Functions
        public List<EntertainmentNewsInfo> GetEntertainmentNews()
        {
            List<EntertainmentNewsInfo> entertainmentNewsList = new List<EntertainmentNewsInfo>();
            SqlDataReader reader = null;
            //User user = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetEntertainmentNews");
            while (reader.Read())
            {
                EntertainmentNewsInfo newsInfo = new EntertainmentNewsInfo();
                newsInfo.Heading = DBNull.Value == reader["Heading"] ? string.Empty : reader["Heading"].ToString();
                newsInfo.Description = DBNull.Value == reader["Description"] ? string.Empty : reader["Description"].ToString();
                newsInfo.PostedOn = DBNull.Value == reader["PostedOn"] ? string.Empty : reader["PostedOn"].ToString();
                newsInfo.PostedBy = DBNull.Value == reader["PostedBy"] ? string.Empty : reader["PostedBy"].ToString();
                //user.UserName = DBNull.Value == reader["UserName"] ? string.Empty : reader["UserName"].ToString();
                //user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
                entertainmentNewsList.Add(newsInfo);
            }
            reader.Close();
            reader.Dispose();
            return entertainmentNewsList;
        }
        public bool InsertEntertainmentNews(EntertainmentNewsInfo enewsInfo)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertEntertainmentNews",
                new SqlParameter("@Heading", SqlDbType.VarChar).Value = enewsInfo.Heading,
                new SqlParameter("@Description", SqlDbType.VarChar).Value = enewsInfo.Description,
                new SqlParameter("@PostedOn", SqlDbType.DateTime).Value = enewsInfo.PostedOn,
                new SqlParameter("@PostedBy", SqlDbType.VarChar).Value = enewsInfo.PostedBy);
               
            return ret > 0;
        }
        #endregion

        public bool InsertLatestMovies(LatestMovies movies)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertLatestMovies",
                new SqlParameter("@MovieName", SqlDbType.VarChar).Value = movies.MovieName,
                new SqlParameter("@Language", SqlDbType.VarChar).Value = movies.Language,
                new SqlParameter("@Director", SqlDbType.DateTime).Value = movies.Director,
                new SqlParameter("@Actor", SqlDbType.VarChar).Value = movies.Actor,
                new SqlParameter("@Actress", SqlDbType.VarChar).Value = movies.Actress);
            return ret > 0;
        }
        public List<LatestMovies> GetLatestMovies()
        {
            List<LatestMovies> LatestMoviesList = new List<LatestMovies>();
            SqlDataReader reader = null;
            //User user = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetLatestMovies");
            while (reader.Read())
            {
                LatestMovies movies = new LatestMovies();
                movies.MovieName = DBNull.Value == reader["MovieName"] ? string.Empty : reader["MovieName"].ToString();
                movies.Language = DBNull.Value == reader["Language"] ? string.Empty : reader["Language"].ToString();
                movies.Director = DBNull.Value == reader["Director"] ? string.Empty : reader["Director"].ToString();
                movies.Actor = DBNull.Value == reader["Actor"] ? string.Empty : reader["Actor"].ToString();
                movies.Actress = DBNull.Value == reader["Actress"] ? string.Empty : reader["Actress"].ToString();
                //user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
                LatestMoviesList.Add(movies);
            }
            reader.Close();
            reader.Dispose();
            return LatestMoviesList;
     
       }
        public bool InsertFilmReview(FilmReview review)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertFilmReview",
                new SqlParameter("@MovieName", SqlDbType.VarChar).Value = review.MovieName,
                new SqlParameter("@Review", SqlDbType.VarChar).Value = review.Review);
               // new SqlParameter("@UserName", SqlDbType.VarChar).Value = user.UserName,
                //new SqlParameter("@Password", SqlDbType.VarChar).Value = user.Password,
                //new SqlParameter("@EmailId", SqlDbType.VarChar).Value = user.EmailId);
            return ret > 0;
        }
    }
}

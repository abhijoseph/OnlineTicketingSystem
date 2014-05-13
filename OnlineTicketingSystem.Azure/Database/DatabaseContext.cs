using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

using OnlineTicketSystem.Azure.Models;
using OnlineTicketSystem.Azure.Database.Helper;

namespace OnlineTicketSystem.Azure.Database
{
    public class DatabaseContext
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;//ConfigurationManager.AppSettings["onlineticketConnectionString"].ToString();
        SqlConnection _sqlConnection;

        public DatabaseContext()
        {
            _sqlConnection = new SqlConnection(_connectionString);
        }

        #region User
        public bool InsertUser(User user)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertUser",
                new SqlParameter("@FirstName", SqlDbType.VarChar).Value = user.FirstName,
                new SqlParameter("@LastName", SqlDbType.VarChar).Value = user.LastName,
                new SqlParameter("@UserName", SqlDbType.VarChar).Value = user.UserName,
                new SqlParameter("@Password", SqlDbType.VarChar).Value = user.Password,
                new SqlParameter("@EmailId", SqlDbType.VarChar).Value = user.EmailId,
                new SqlParameter("@DateOfBirth", SqlDbType.DateTime).Value = DateTime.Parse(user.DateOfBirth));
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
                user.UserKey = DBNull.Value == reader["UserKey"] ? -1 : Convert.ToInt32(reader["UserKey"]);
                user.FirstName = DBNull.Value == reader["FirstName"] ? string.Empty : reader["FirstName"].ToString();
                user.LastName = DBNull.Value == reader["LastName"] ? string.Empty : reader["LastName"].ToString();
                user.EmailId = DBNull.Value == reader["EmailId"] ? string.Empty : reader["EmailId"].ToString();
                user.Password = DBNull.Value == reader["Password"] ? string.Empty : reader["Password"].ToString();
                user.UserName = DBNull.Value == reader["UserName"] ? string.Empty : reader["UserName"].ToString();
                user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
                user.RoleKey = DBNull.Value == reader["RoleKey"] ? 1 : Convert.ToInt32(reader["RoleKey"].ToString());
                //UserRoleEnum role = (UserRoleEnum)Enum.GetName(typeof(UserRoleEnum), user.RoleKey);
                user.RoleName = Enum.GetName(typeof(UserRoleEnum), user.RoleKey);

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
                user.RoleName = Enum.GetName(typeof(UserRoleEnum), user.RoleKey);
            }
            reader.Close();
            reader.Dispose();
            return user;
        }

        public List<User> GetUsers()
        {
            List<User> users = new List<User>();
            SqlDataReader reader = null;
            User user = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetUsers");
            while (reader.Read())
            {
                user = new User();
                user.UserKey = DBNull.Value == reader["UserKey"] ? -1 : Convert.ToInt32(reader["UserKey"]);
                user.FirstName = DBNull.Value == reader["FirstName"] ? string.Empty : reader["FirstName"].ToString();
                user.LastName = DBNull.Value == reader["LastName"] ? string.Empty : reader["LastName"].ToString();
                user.EmailId = DBNull.Value == reader["EmailId"] ? string.Empty : reader["EmailId"].ToString();
                user.Password = DBNull.Value == reader["Password"] ? string.Empty : reader["Password"].ToString();
                user.UserName = DBNull.Value == reader["UserName"] ? string.Empty : reader["UserName"].ToString();
                user.DateOfBirth = DBNull.Value == reader["DateOfBirth"] ? string.Empty : reader["DateOfBirth"].ToString();
                user.RoleKey = DBNull.Value == reader["RoleKey"] ? 1 : Convert.ToInt32(reader["RoleKey"].ToString());
                user.RoleName = Enum.GetName(typeof(UserRoleEnum), user.RoleKey);
                users.Add(user);
            }
            reader.Close();
            reader.Dispose();
            return users;
        }

        public bool UpdateUser(User user)
        {            
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_UpdateUser",
                new SqlParameter("@UserKey", SqlDbType.Int).Value = user.UserKey,
                new SqlParameter("@FirstName", SqlDbType.VarChar).Value = user.FirstName,
                new SqlParameter("@LastName", SqlDbType.VarChar).Value = user.LastName,
                new SqlParameter("@RoleKey", SqlDbType.Int).Value = user.RoleKey);
            return ret > 0;
        }

        public bool InsertUserLog(int userKey, string sessionId)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertUserLog",
                new SqlParameter("@UserName", SqlDbType.Int).Value = userKey,
                new SqlParameter("@SessionId", SqlDbType.VarChar).Value = sessionId,
                new SqlParameter("@LoginDate", SqlDbType.VarChar).Value = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());
            return ret > 0;
        }

        #endregion

        #region Theater
        public void RegisterTheater(Theater theater)
        {
            String str = "insert into Register values('" + theater.TheaterName + "','" + theater.TheaterCode + "','" + theater.TheaterCode + "','" + theater.Password + "','" + theater.EmailId + "','" + theater.City + "','" + theater.Location + "','" + theater.SeatingCapacity + "')";
            SqlCommand cmd = new SqlCommand(str, _sqlConnection);
            _sqlConnection.Open();
            // cmd.ExecuteNonQuery();
            _sqlConnection.Close();

        }

        public bool InsertOrUpdateTheater(Theater theater)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertTheater",
                new SqlParameter("@TheaterKey", SqlDbType.Int).Value = Convert.ToInt32(theater.TheaterKey),
                new SqlParameter("@TheaterName", SqlDbType.VarChar).Value = theater.TheaterName,
                new SqlParameter("@City", SqlDbType.VarChar).Value = theater.Location,
                new SqlParameter("@SeatingCapacity", SqlDbType.Int).Value = Convert.ToInt32(theater.SeatingCapacity),
                new SqlParameter("@TheaterOwnerKey", SqlDbType.Int).Value = Convert.ToInt32(theater.TheaterOwnerKey));
            return ret > 0;
        }

        public List<Theater> GetAllTheaters()
        {
            List<Theater> allTheaters = new List<Theater>();
            
            string str = @"select distinct TheaterKey, TheaterName, City, SeatingCapacity, TheaterOwnerKey, U.UserName AS TheaterOwner from MasterTheater T INNER JOIN dbo.UserReg U ON T.TheaterOwnerKey = U.UserKey";
            SqlDataReader reader = SqlHelper.ExecuteReader(_sqlConnection, CommandType.Text, str);
            while (reader.Read())
            {
                Theater theater= new Theater();
                theater.TheaterKey = DBNull.Value == reader["TheaterKey"] ? -1 : Convert.ToInt32(reader["TheaterKey"]);
                theater.TheaterName = DBNull.Value == reader["TheaterName"] ? string.Empty : reader["TheaterName"].ToString();
                theater.City = DBNull.Value == reader["City"] ? string.Empty : reader["City"].ToString();
                theater.SeatingCapacity = DBNull.Value == reader["SeatingCapacity"] ? string.Empty : reader["SeatingCapacity"].ToString();
                theater.TheaterOwnerUsername = DBNull.Value == reader["TheaterOwner"] ? string.Empty : reader["TheaterOwner"].ToString();
                theater.TheaterOwnerKey = DBNull.Value == reader["TheaterOwnerKey"] ? -1 : Convert.ToInt32(reader["TheaterOwnerKey"]);
                allTheaters.Add(theater);

            }
            reader.Close();
            reader.Dispose();
            
            return allTheaters;
        }
        #endregion

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

        #region LatestMovies
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
                movies.Moviekey = DBNull.Value == reader["Moviekey"] ? 0 : Convert.ToInt32(reader["Moviekey"]);
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

        public bool AddOrUpdateFilmReview(FilmReview review)
        {
            string strSQL = @"IF EXISTS(SELECT 1 FROM dbo.FilmReview) 
                                UPDATE dbo.FilmReview SET Review = N'" + review.Review + "' WHERE MovieKey = " + review.MovieKey +
                                @" ELSE 
                                    INSERT INTO dbo.FilmReview VALUES ("+ review.MovieKey + "," + review.MovieName + ",N'" + review.Review + "'";
           
            //User user = null;
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.TableDirect, strSQL);
            
            return ret > 0;
        }

        public LatestMovies GetMovie(int movieKey)
        {
            LatestMovies movie = new LatestMovies();
            string strSQL = @"SELECT M.*, F.Review FROM dbo.Movies M LEFT JOIN dbo.FilmReview F ON M.MovieKey = F.MovieKey WHERE M.MovieKey = " + movieKey;
            SqlDataReader reader = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, CommandType.Text, strSQL);
            while (reader.Read())
            {
                movie.Moviekey = DBNull.Value == reader["Moviekey"] ? 0 : Convert.ToInt32(reader["Moviekey"]);
                movie.MovieName = DBNull.Value == reader["MovieName"] ? string.Empty : reader["MovieName"].ToString();
                movie.Language = DBNull.Value == reader["Language"] ? string.Empty : reader["Language"].ToString();
                movie.Director = DBNull.Value == reader["Director"] ? string.Empty : reader["Director"].ToString();
                movie.Actor = DBNull.Value == reader["Actor"] ? string.Empty : reader["Actor"].ToString();
                movie.Actress = DBNull.Value == reader["Actress"] ? string.Empty : reader["Actress"].ToString();
                movie.Review = DBNull.Value == reader["Review"] ? string.Empty : reader["Review"].ToString();
            }
            reader.Close();
            reader.Dispose();
            return movie;
        }
        #endregion

        #region FilmReviews
        public bool InsertFilmReview(FilmReview review)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_InsertFilmReview",
                new SqlParameter("@MovieKey", SqlDbType.Int).Value = review.MovieKey,
                new SqlParameter("@MovieName", SqlDbType.VarChar).Value = review.MovieName,
                new SqlParameter("@Review", SqlDbType.VarChar).Value = review.Review);
            // new SqlParameter("@UserName", SqlDbType.VarChar).Value = user.UserName,
            //new SqlParameter("@Password", SqlDbType.VarChar).Value = user.Password,
            //new SqlParameter("@EmailId", SqlDbType.VarChar).Value = user.EmailId);
            return ret > 0;
        }
        public FilmReview GetFilmReview()
        {

            SqlDataReader reader = null;
            FilmReview review = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, "dbo.usp_GetFilmReview");
            while (reader.Read())
            {
                review = new FilmReview();
                review.MovieName = DBNull.Value == reader["MovieName"] ? string.Empty : reader["MovieName"].ToString();
                review.Review = DBNull.Value == reader["Review"] ? string.Empty : reader["Review"].ToString();
                //movies.Director = DBNull.Value == reader["Director"] ? string.Empty : reader["Director"].ToString();
                //movies.Actor = DBNull.Value == reader["Actor"] ? string.Empty : reader["Actor"].ToString();
                //movies.Actress = DBNull.Value == reader["Actress"] ? string.Empty : reader["Actress"].ToString();


            }
            reader.Close();
            reader.Dispose();
            return review;
        }
        #endregion

        #region TicketBooking

        public string GetBookedSeatsforMovieTheater(int theaterKey, int showTimeKey, int dateKey)
        {
            string seats = string.Empty;
            SqlParameter seatOut = new SqlParameter("@Seats", SqlDbType.VarChar);
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = new SqlParameter("@TheaterKey", SqlDbType.Int);
            parameters[0].Value = theaterKey;
            parameters[1] = new SqlParameter("@ShowTimeKey", SqlDbType.Int);
            parameters[1].Value = showTimeKey;
            parameters[2] = new SqlParameter("@DateKey", SqlDbType.Int);
            parameters[2].Value = dateKey;
            parameters[3] = new SqlParameter("@Seats", SqlDbType.VarChar, 500);
            parameters[3].Direction = ParameterDirection.Output;
            seatOut.Direction = ParameterDirection.Output;
            SqlDataReader reader = SqlHelper.ExecuteReader(_sqlConnection, CommandType.StoredProcedure, "dbo.usp_getBookedSeatsforMovieTheater", parameters);

            while (reader.Read())
            {
                seats = seats + "," + Convert.ToString(reader["Seat"]);
            }
            //int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.StoredProcedure, "dbo.usp_getBookedSeats",
            //    new SqlParameter("@TheaterKey", SqlDbType.Int).Value = theaterKey,
            //    new SqlParameter("@ShowTimeKey", SqlDbType.Int).Value = showTimeKey,
            //    new SqlParameter("@DateKey", SqlDbType.Int).Value = dateKey,
            //    seats);
            reader.Close();
            reader.Dispose();
            return seats;
            //return parameters[3].Value == DBNull.Value ? string.Empty : parameters[3].Value as string;
        }

        public string GetBookedSeatsforUserforMovieTheater(int theaterKey, int showTimeKey, int dateKey, int userKey)
        {
            string seats = string.Empty;
            SqlParameter seatOut = new SqlParameter("@Seats", SqlDbType.VarChar);
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = new SqlParameter("@TheaterKey", SqlDbType.Int);
            parameters[0].Value = theaterKey;
            parameters[1] = new SqlParameter("@ShowTimeKey", SqlDbType.Int);
            parameters[1].Value = showTimeKey;
            parameters[2] = new SqlParameter("@DateKey", SqlDbType.Int);
            parameters[2].Value = dateKey;
            parameters[3] = new SqlParameter("@UserKey", SqlDbType.Int);
            parameters[3].Value = userKey;
            parameters[4] = new SqlParameter("@Seats", SqlDbType.VarChar, 500);
            parameters[4].Direction = ParameterDirection.Output;
            seatOut.Direction = ParameterDirection.Output;
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.StoredProcedure, "dbo.usp_getBookedSeatsforUserforMovieTheater", parameters);
            return parameters[4].Value == DBNull.Value ? string.Empty : parameters[4].Value as string;
        }

        public List<BookedTicket> GetBookedSeatsforUser(int userKey)
        {
            List<BookedTicket> bookedTickets = new List<BookedTicket>();
            string strSQL = @"SELECT [TicketKey]
                  ,T.[MovieTheaterKey]
                  ,T.[ShowTimeKey]
                  ,[UserKey]
                  ,[Seat]
                  ,[DateKey],
                  M.MovieName,
                  THEAT.TheaterName,
                  ST.Time
                  ,LEN(Seat) - LEN(REPLACE(Seat, ',', '')) AS NoOfSeats
              FROM [onlineticket].[dbo].[Ticket] T
	            INNER JOIN dbo.MovieTheater MT ON T.MovieTheaterKey = MT.MovieTheaterKey
	            INNER JOIN dbo.Movies M ON M.MovieKey = MT.MovieKey
	            INNER JOIN dbo.ShowTime ST ON T.ShowTimeKey = ST.ShowTimeKey
	            INNER JOIN dbo.MasterTheater THEAT ON MT.TheaterKey = THEAT.TheaterKey
	
              WHERE UserKey = " + userKey;

            SqlDataReader reader = null;
            reader = SqlHelper.ExecuteReader(_sqlConnection, CommandType.Text, strSQL);
            while (reader.Read())
            {
                BookedTicket ticket = new BookedTicket();
                ticket.TicketKey = DBNull.Value == reader["TicketKey"] ? 0 : Convert.ToInt32(reader["TicketKey"]);
                ticket.MovieTheaterKey = DBNull.Value == reader["MovieTheaterKey"] ? 0 : Convert.ToInt32(reader["MovieTheaterKey"]);
                ticket.ShowTimeKey = DBNull.Value == reader["ShowTimeKey"] ? 0 : Convert.ToInt32(reader["ShowTimeKey"]);
                ticket.UserKey = DBNull.Value == reader["UserKey"] ? 0 : Convert.ToInt32(reader["UserKey"]);
                ticket.Seat = DBNull.Value == reader["Seat"] ? string.Empty : reader["Seat"].ToString();
                ticket.DateKey = DBNull.Value == reader["DateKey"] ? 0 : Convert.ToInt32(reader["DateKey"]);
                ticket.MovieName = DBNull.Value == reader["MovieName"] ? string.Empty : reader["MovieName"].ToString();
                ticket.TheaterName = DBNull.Value == reader["TheaterName"] ? string.Empty : reader["TheaterName"].ToString();
                ticket.Time = DBNull.Value == reader["Time"] ? string.Empty : reader["Time"].ToString();
                ticket.NoOfSeats = DBNull.Value == reader["NoOfSeats"] ? 0 : Convert.ToInt32(reader["NoOfSeats"]);

                bookedTickets.Add(ticket);
            }
            reader.Close();
            reader.Dispose();
            return bookedTickets;
        
        }

        public bool BookTicket(int theaterKey, int showTimeKey, int userKey, int dateKey, string seats)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_bookTicket",
                new SqlParameter("@TheaterKey", SqlDbType.Int).Value = theaterKey,
                new SqlParameter("@ShowTimeKey", SqlDbType.Int).Value = showTimeKey,
                new SqlParameter("@UserKey", SqlDbType.Int).Value = userKey,
                new SqlParameter("@DateKey", SqlDbType.Int).Value = dateKey,
                new SqlParameter("@Seats", SqlDbType.VarChar).Value = seats);
            return ret > 0;
        }

        public bool CancelAllTicketsForTheater(int movieTheaterKey, int showTimeKey, int userKey, int dateKey)
        {
            string strSQL = @"DELETE FROM dbo.[Ticket] WHERE UserKey = " + userKey + " AND MovieTheaterKey = " + movieTheaterKey + " AND ShowTimeKey = " + showTimeKey;
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, CommandType.Text, strSQL);
            return ret > 0;
        }

        public bool CancelTicketsForTheater(int movieTheaterKey, int showTimeKey, int userKey, int dateKey, string seats)
        {
            int ret = SqlHelper.ExecuteNonQuery(_sqlConnection, "dbo.usp_cancelTicketsForTheater",
                new SqlParameter("@MovieTheaterKey", SqlDbType.Int).Value = movieTheaterKey,
                new SqlParameter("@ShowTimeKey", SqlDbType.Int).Value = showTimeKey,
                new SqlParameter("@UserKey", SqlDbType.Int).Value = userKey,
                new SqlParameter("@DateKey", SqlDbType.Int).Value = dateKey,
                new SqlParameter("@Seats", SqlDbType.VarChar).Value = seats);
            return ret > 0;
        }
        #endregion
    }
}

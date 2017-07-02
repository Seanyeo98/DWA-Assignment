using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Assignment
{
    public class Response
    {
        //Properties
        public int responseID { get; set; }
        public int feedbackID { get; set; }
        public string memberID { get; set; }
        public string staffID { get; set; }
        public DateTime datetimePosted { get; set; }
        public string text { get; set; }

        public int add()
        {
            string strConn = ConfigurationManager.ConnectionStrings["ZZFashionConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand
                ("INSERT INTO Staff (ResponseID, FeedbackID, MemberID, StaffID, datetimePosted,text " +
                "VALUES(@responseID, @feedbackID, @nemberID,@staffID, @datetimePosted, @text )", conn);

            cmd.Parameters.AddWithValue("@responseID", responseID);
            cmd.Parameters.AddWithValue("@FeedbackID", feedbackID);
            cmd.Parameters.AddWithValue("@memberID", memberID);
            cmd.Parameters.AddWithValue("@staffID", staffID);
            cmd.Parameters.AddWithValue("@text", text);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            return 0;
        }


    }
}

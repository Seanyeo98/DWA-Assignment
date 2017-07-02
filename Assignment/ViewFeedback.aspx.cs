using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Assignment
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayFeedbackList();
        }

        public void displayFeedbackList()
        {
            //read connection string from web.config file
            string strConn = ConfigurationManager.ConnectionStrings["ZZFashionConnectionString"].ToString();

            //instantiate a new sqlconnection obj with conn string
            SqlConnection conn = new SqlConnection(strConn);

            //instantiate a sqlcommand obj and supply with sql statement
            SqlCommand cmd = new SqlCommand("SELECT * FROM Feedback ORDER BY FeedbackID", conn);

            //instantiate a dataadapter obj and pass sqlcommand obj created as parameter
            SqlDataAdapter daFeedback = new SqlDataAdapter(cmd);

            //create a dataset obj to contain the records retrieved from db
            DataSet result = new DataSet();

            //a connectoin must be opened before any operations made
            conn.Open();
             
            //use datadapter to fetch data to a table "staffdetails" in dataset
            daFeedback.Fill(result, "Feedback");

            //a connection should always be closed, whether error occurs or not
            conn.Close();

            //specify gridview to get data from table "StaffDetails"
            gvFeedback.DataSource = result.Tables["Feedback"];

            //counts number of rows created in staff
            SqlCommand comm = new SqlCommand("SELECT COUNT (*) FROM Feedback", conn);
            conn.Open();

            //converts the number of rows into a int32 value
            Int32 count = (Int32)comm.ExecuteScalar();
            if (count < 1)
            {
                lblMessage.Text = "No Feedback Record";
            }
            else
            {
                lblMessage.Text = "Total Number of Feedback: " + count;
            }
            conn.Close();
            //display the list of data in gridview
            gvFeedback.DataBind();
        }

        protected void gvFeedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Set PageIndex = e.NewPageIndex
            gvFeedback.PageIndex = e.NewPageIndex;
            //Display Records on the new page
            displayFeedbackList();
      }

        protected void FeedbackRespond_Click(object sender, EventArgs e)
        {
            Response.Redirect("RespondFeedback.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string loginID = txtLoginID.Text;
            string password = txtPassword.Text;

            string userType = "";
            if (rdoStaff.Checked == true)
                userType = "Staff";
            else if (rdoCustomer.Checked == true)
                userType = "Customer";

            string strConn = ConfigurationManager.ConnectionStrings["ZZFashionConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmdLogin;
            SqlCommand cmdName;

            if (userType == "Staff")
            {
                cmdLogin = new SqlCommand("SELECT COUNT(*) FROM Staff WHERE StaffID = @loginid AND SPassword = @password", conn);
                cmdName = new SqlCommand("SELECT * FROM Staff WHERE StaffID = @loginid", conn);
            }
            else
            {
                cmdLogin = new SqlCommand("SELECT COUNT(*) FROM Customer WHERE MemberID = @loginid AND MPassword = @password", conn);
                cmdName = new SqlCommand("SELECT * FROM Customer WHERE MemberID = @loginid", conn);
            }

            SqlDataAdapter daNames = new SqlDataAdapter(cmdName);

            DataSet result = new DataSet();

            cmdLogin.Parameters.AddWithValue("@loginid", loginID);
            cmdLogin.Parameters.AddWithValue("@password", password);

            cmdName.Parameters.AddWithValue("@loginid", loginID);

            conn.Open();

            daNames.Fill(result, "LoginName");
            Int32 count = (Int32)cmdLogin.ExecuteScalar();

            conn.Close();

            if (count == 1)
            {
                Session["LoginID"] = userType == "Staff" ? result.Tables["LoginName"].Rows[0]["SName"].ToString() : result.Tables["LoginName"].Rows[0]["MName"].ToString();
                Session["LoggedInTime"] = DateTime.Now.ToString();
                if (userType == "Staff")
                {
                    switch (loginID)
                    {
                        case "SG-Orchard":
                            Response.Redirect("SalesPersonnel.aspx");
                            break;
                        case "Marketing":
                            Response.Redirect("MarketingManager.aspx");
                            break;
                        case "ProductManager":
                            Response.Redirect("ProductManager.aspx");
                            break;
                    }
                }
                else
                    Response.Redirect("Customer.aspx");
            }
            else
                lblMessage.Text = "Invalid Login Credentials!";
        }
    }
}
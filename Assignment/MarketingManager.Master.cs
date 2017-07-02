using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class MarketingManager1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginID"] != null)
            {
                lblLoginID.Text = Session["LoginID"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
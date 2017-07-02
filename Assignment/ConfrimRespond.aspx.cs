using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class ConfrimRespond : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                lblRespondID.Text = Request.QueryString["FeedbackID"];
                lblFeedbackID.Text = Request.QueryString["StaffID"];
                lblStaffID.Text = Request.QueryString["Reponse"];
                lblResponse.Text = Request.QueryString["DateTime"];
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response objResponse = new Response();

                objResponse.staffID = lblStaffID.Text;
                objResponse.text = lblResponse.Text;
                
                int errorCode = objResponse.add();

                if (errorCode == 0)
                    lblMessage.Text = "New Respond is added successfully.";
            }
        }
    }
}

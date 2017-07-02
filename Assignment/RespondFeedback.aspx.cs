using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class RespondFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitResponse_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string strValues;

                strValues = "FeedbackID=" + feedbackText.Text;

                strValues += "&StaffID=" + staffIDText.Text;
                strValues += "&Response=" + respondText.Text;
                strValues += "&DateTime=" + lblDateTime.Text;

                //lbl_Values.Text = strValues;
                Response.Redirect("ConfirmRespond.aspx?" + strValues);
            }
        }
    }
}
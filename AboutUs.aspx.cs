using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_email"] != null)
            {
                LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
                LabelLogin.Visible = false;
                LabelRegister.Visible = false;
                LabelLogout.Visible = true;
                LabelOrderHistory.Visible = true;
                MyAcc.HRef = "CustomerDashboard.aspx";

            }

            else
            {
                LabelUserAccount.Text = "USER ACCOUNT";

            }

        }
    }
}
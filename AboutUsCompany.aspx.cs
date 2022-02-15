using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class AboutUsCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company_email"] == null)
            {
                Response.Redirect("LoginCompany.aspx");
            }
            else
            {
                LabelUserAccount.Text = Session["company_name"].ToString() + "'s Account";

            }
        }
    }
}
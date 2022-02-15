using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class Login_Alert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogAlert_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDashboard.aspx");
        }
    }
}
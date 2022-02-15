using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Paint_Nest_WebApp
{
    public partial class ContactUs : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

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

        private bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(TextName.Text) ||
                string.IsNullOrWhiteSpace(TextEmail.Text) ||
                string.IsNullOrWhiteSpace(TextSub.Text) ||
                string.IsNullOrWhiteSpace(TextMsg.Text) 
                )
                return false;
            else return true;
        }

        void clear()
        {
            TextName.Text = string.Empty;
            TextEmail.Text = string.Empty;
            TextSub.Text = string.Empty;
            TextMsg.Text = string.Empty;
            
        }

        protected void BnMsg_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                LabelAlert.Text = "Do not leave any field blank!";
            }

            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into ContactUs Values (@name, @email, @sub, @msg)", con);
                cmd.Parameters.AddWithValue("@name", TextName.Text);
                cmd.Parameters.AddWithValue("@email", TextEmail.Text);
                cmd.Parameters.AddWithValue("@sub", TextSub.Text);
                cmd.Parameters.AddWithValue("@msg", TextMsg.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                clear();
                LabelAlert.Visible = false;
                UpdateSuccess.Visible = true;
               
            }

        }
    }
}
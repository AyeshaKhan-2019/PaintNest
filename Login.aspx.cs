using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class Login : System.Web.UI.Page
    {
     
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            if (Session["customer_email"] != null && Session["customer_name"] != null)
            {
                Session["customer_email"] = null;
                Session["customer_name"] = null;
            }
        }
        

        private bool Authenticate()
        {
            if (
                string.IsNullOrWhiteSpace(txtemail.Text) ||
                string.IsNullOrWhiteSpace(txtpassword.Text)
                )
                return false;
            else return true;
        }

       

        
            protected void Loginbtn_Click(object sender, EventArgs e)
        {
            
           //Check user exist
            bool isUserok = false, ispassok = false;
            string query = "select * from Customer where customer_email=@customer_email";
            con.Open();
            scmd = new SqlCommand(query, con);

            scmd.Parameters.Add("@customer_email", SqlDbType.VarChar);
            scmd.Parameters["@customer_email"].Value = txtemail.Text;
            SqlDataReader sda = scmd.ExecuteReader();

            if (sda.HasRows)
            {
                isUserok = true;
            }
            con.Close();
            //Check end

            

            con.Open();
            query = "SELECT * FROM Customer WHERE customer_email=@customer_email AND customer_password=@customer_password";
            scmd = new SqlCommand(query, con);

            //adding parameters
            scmd.Parameters.Add("@customer_email", SqlDbType.VarChar);
            scmd.Parameters["@customer_email"].Value = txtemail.Text;

            scmd.Parameters.Add("@customer_password", SqlDbType.VarChar);
            scmd.Parameters["@customer_password"].Value = txtpassword.Text;

            sda = scmd.ExecuteReader();

            if (sda.HasRows)
            {
                ispassok = true;
            }

            if (!Authenticate()) 
            {
                LabelAlert.Text = "Do not leave any field blank!!";

            }

           else if (isUserok == false)
            {
                LabelAlert.Text = "User does not exist!";
                
            }

            else if (isUserok == true && ispassok == false)
            {
                LabelAlert.Text = "Password is Incorrect!";
            }

            else
            {
                
                Session["customer_email"] = txtemail.Text;
                sda.Read();
                LabelUserName.Text = sda["customer_name"].ToString();
                Session["customer_name"] = LabelUserName.Text;

               
                Response.Redirect("CustomerDashboard.aspx");
               
            }
            con.Close();
        }

    }
}
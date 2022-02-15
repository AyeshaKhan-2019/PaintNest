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
    public partial class LoginCompany : System.Web.UI.Page
    {
       
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            if (Session["company_email"] != null && Session["company_name"] != null)
            {
                Session["company_email"] = null;
                Session["company_name"] = null;
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
            string query = "select * from Company where company_email=@company_email";
            con.Open();
            scmd = new SqlCommand(query, con);

            scmd.Parameters.Add("@company_email", SqlDbType.VarChar);
            scmd.Parameters["@company_email"].Value = txtemail.Text;
            SqlDataReader sda = scmd.ExecuteReader();

            if (sda.HasRows)
            {
                isUserok = true;
            }
            con.Close();
            //Check end

            con.Open();
            query = "SELECT * FROM Company WHERE company_email=@company_email AND company_password=@company_password";

            scmd = new SqlCommand(query, con);

            //adding parameters
            scmd.Parameters.Add("@company_email", SqlDbType.VarChar);
            scmd.Parameters["@company_email"].Value = txtemail.Text;

            scmd.Parameters.Add("@company_password", SqlDbType.VarChar);
            scmd.Parameters["@company_password"].Value = txtpassword.Text;

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
                // Response.Write("<script>alert('Do not leave any field blank!')</script>");
            }

            else if (isUserok == true && ispassok == false)
            {
                LabelAlert.Text = "Password is Incorrect!";
            }

            else
            {
                //GetUser();
                //TextBoxUserName.Text = sda["company_name"].ToString();
                Session["company_email"] = txtemail.Text;
                sda.Read();
                LabelUserName.Text = sda["company_name"].ToString();
                Session["company_name"] = LabelUserName.Text;

                /*
                LabelUserAddress.Text = sda["company_address"].ToString();
                Session["company_address"] = LabelUserAddress.Text;

                LabelUserState.Text = sda["company_address_state"].ToString();
                Session["company_address_state"] = LabelUserState.Text;

                LabelUserZipcode.Text = sda["company_address_zipcode"].ToString();
                Session["company_address_zipcode"] = LabelUserZipcode.Text;

                LabelUserCity.Text = sda["company_address_city"].ToString();
                Session["company_address_city"] = LabelUserCity.Text;

                LabelUserCountry.Text = sda["company_address_country"].ToString();
                Session["company_address_country"] = LabelUserCountry.Text;

                LabelUserContact.Text = sda["company_contact"].ToString();
                Session["company_contact"] = LabelUserContact.Text;
                */

                Response.Redirect("CompanyDashboard.aspx");

            }
            con.Close();
        }
    }
}
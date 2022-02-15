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
    public partial class Register3 : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(txtname.Text) ||
                string.IsNullOrWhiteSpace(txtemail.Text) ||
                string.IsNullOrWhiteSpace(txtpassword.Text) ||
                string.IsNullOrWhiteSpace(txtconfirmpass.Text)|| txtpassword.Text != txtconfirmpass.Text)
                return false;
            else return true;
        }

        protected void Btnregistration_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                LabelAlert.Text = "Do not leave any field blank!";
                //Response.Write("<script>alert('Do not leave any field blank!')</script>");

            }
            else
            {

               // string query = "insert into CompanyRegister Values (@User_company_name, @User_company_email, @User_company_password)";

                string query = "insert into Company Values (@company_name, @company_address, @company_address_state, @company_address_zipcode, @company_address_city, @company_address_country, @company_contact, @company_email, @company_password)";

                con.Open();

                scmd = new SqlCommand(query, con);

                scmd.Parameters.Add("@company_name", SqlDbType.VarChar);
                scmd.Parameters["@company_name"].Value = txtname.Text;

                scmd.Parameters.Add("@company_address", SqlDbType.VarChar);
                scmd.Parameters["@company_address"].Value = "NA";

                scmd.Parameters.Add("@company_address_state", SqlDbType.VarChar);
                scmd.Parameters["@company_address_state"].Value = "NA";

                scmd.Parameters.Add("@company_address_zipcode", SqlDbType.SmallInt);
                scmd.Parameters["@company_address_zipcode"].Value = 0;

                scmd.Parameters.Add("@company_address_city", SqlDbType.VarChar);
                scmd.Parameters["@company_address_city"].Value = "NA";

                scmd.Parameters.Add("@company_address_country", SqlDbType.VarChar);
                scmd.Parameters["@company_address_country"].Value = "NA";

                scmd.Parameters.Add("@company_contact", SqlDbType.SmallInt);
                scmd.Parameters["@company_contact"].Value = 0;

                scmd.Parameters.Add("@company_email", SqlDbType.VarChar);
                scmd.Parameters["@company_email"].Value = txtemail.Text;

                scmd.Parameters.Add("@company_password", SqlDbType.VarChar);
                scmd.Parameters["@company_password"].Value = txtpassword.Text;
                scmd.ExecuteNonQuery();
                con.Close();

                if (Authenticate())
                {
                    Response.Redirect("CompanyRegisterAlert.aspx");

                }
            }

        }

    }
}
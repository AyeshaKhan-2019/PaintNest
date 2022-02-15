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
    public partial class Register2 : System.Web.UI.Page
    {
     
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;

        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(txtname.Text) ||
                string.IsNullOrWhiteSpace(txtemail.Text) ||
                string.IsNullOrWhiteSpace(txtpassword.Text) ||
                string.IsNullOrWhiteSpace(txtconfirmpass.Text) || txtpassword.Text != txtconfirmpass.Text)
                return false;
            else return true;
        }

        protected void Btnregistration_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                LabelAlert.Text = "Do not leave any field blank!";
                // Response.Write("<script>alert('Do not leave any field blank!')</script>");

            }
            else
            {
                string query = "insert into Customer Values (@customer_name, @customer_address, @customer_address_state, @customer_address_zipcode, @customer_address_city, @customer_address_country, @customer_contact, @customer_email, @customer_password)";
                con.Open();

                scmd = new SqlCommand(query, con);

                scmd.Parameters.Add("@customer_name", SqlDbType.VarChar);
                scmd.Parameters["@customer_name"].Value = txtname.Text;

                scmd.Parameters.Add("@customer_address", SqlDbType.VarChar);
                scmd.Parameters["@customer_address"].Value = "NA";

                scmd.Parameters.Add("@customer_address_state", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_state"].Value = "NA";

                scmd.Parameters.Add("@customer_address_zipcode", SqlDbType.SmallInt);
                scmd.Parameters["@customer_address_zipcode"].Value = 0;

                scmd.Parameters.Add("@customer_address_city", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_city"].Value = "NA";

                scmd.Parameters.Add("@customer_address_country", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_country"].Value = "NA";

                scmd.Parameters.Add("@customer_contact", SqlDbType.SmallInt);
                scmd.Parameters["@customer_contact"].Value = 0;

                scmd.Parameters.Add("@customer_email", SqlDbType.VarChar);
                scmd.Parameters["@customer_email"].Value = txtemail.Text;

                scmd.Parameters.Add("@customer_password", SqlDbType.VarChar);
                scmd.Parameters["@customer_password"].Value = txtpassword.Text;
                scmd.ExecuteNonQuery();
                con.Close();

                if (Authenticate())
                {
                    Response.Redirect("Register Alert.aspx");

                }
            }
        }
    }
}

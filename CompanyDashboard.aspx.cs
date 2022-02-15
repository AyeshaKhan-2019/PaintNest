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
    public partial class CompanyDashboard : System.Web.UI.Page
    {
    
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company_email"] == null)
            {
                Response.Redirect("LoginCompany.aspx");
            }
            else
            {
                //Label1.Text = "Welcome " + Session["company_"].ToString();
                LabelUserName.Text = Session["company_name"].ToString();
                LabelUserAccount.Text = Session["company_name"].ToString() + "'s Account";
                LabelProfileName.Text = Session["company_name"].ToString();
                LabelProfileEmail.Text = Session["company_email"].ToString();
                // LabelProfileContact.Text = Session["company_contact"].ToString();
                // LabelProfileAddress.Text = Session["company_address"].ToString() +", " + Session["company_address_state"].ToString() + ", " + Session["company_address_city"].ToString() + ", " + Session["company_address_country"].ToString() + ", " + Session["company_address_zipcode"].ToString();

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Company where company_email = @company_email", con);
                cmd.Parameters.AddWithValue("@company_email", LabelProfileEmail.Text);
                SqlDataReader rd = cmd.ExecuteReader();
                rd.Read();
                LabelProfileAddress.Text = rd["company_address"].ToString();
                LabelProfileAddressState.Text = rd["company_address_state"].ToString();
                LabelProfileAddressZipCode.Text = rd["company_address_zipcode"].ToString();
                LabelProfileAddressCity.Text = rd["company_address_city"].ToString();
                LabelProfileAddressCountry.Text = rd["company_address_country"].ToString();
                LabelProfileContact.Text = rd["company_contact"].ToString();
                con.Close();
            }
        }

        private bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(TextAddress.Text) ||
                string.IsNullOrWhiteSpace(DropDownCountry.Text) ||
                string.IsNullOrWhiteSpace(DropDownCity.Text) ||
                string.IsNullOrWhiteSpace(DropDownState.Text) ||
                string.IsNullOrWhiteSpace(TextZipcode.Text) ||
                string.IsNullOrWhiteSpace(TextContact.Text)
                )
                return false;
            else return true;
        }

        void clear()
        {
            TextAddress.Text = string.Empty;
            DropDownCountry.Text = string.Empty;
            DropDownCity.Text = string.Empty;
            DropDownState.Text = string.Empty;
            TextZipcode.Text = string.Empty;
            TextContact.Text = string.Empty;
        }

        protected void Btnaddress_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                LabelAlert.Text = "Do not leave any field blank!";
                // Response.Write("<script>alert('Do not leave any field blank!')</script>");

            }
            else
            {
                string query = "update Company Set company_address = @company_address, company_address_state = @company_address_state, company_address_zipcode = @company_address_zipcode, company_address_city = @company_address_city, company_address_country = @company_address_country, company_contact = @company_contact where company_email = @company_email";
                con.Open();

                scmd = new SqlCommand(query, con);

                scmd.Parameters.Add("@company_address", SqlDbType.VarChar);
                scmd.Parameters["@company_address"].Value = TextAddress.Text;

                scmd.Parameters.Add("@company_address_state", SqlDbType.VarChar);
                scmd.Parameters["@company_address_state"].Value = DropDownState.Text;

                scmd.Parameters.Add("@company_address_zipcode", SqlDbType.VarChar);
                scmd.Parameters["@company_address_zipcode"].Value = TextZipcode.Text;

                scmd.Parameters.Add("@company_address_city", SqlDbType.VarChar);
                scmd.Parameters["@company_address_city"].Value = DropDownCity.Text;

                scmd.Parameters.Add("@company_address_country", SqlDbType.VarChar);
                scmd.Parameters["@company_address_country"].Value = DropDownCountry.Text;

                scmd.Parameters.Add("@company_contact", SqlDbType.VarChar);
                scmd.Parameters["@company_contact"].Value = TextContact.Text;

                scmd.Parameters.Add("@company_email", SqlDbType.VarChar);
                scmd.Parameters["@company_email"].Value = LabelProfileEmail.Text;

                scmd.ExecuteNonQuery();
                con.Close();


                clear();               
                Page_Load(sender, e);
                UpdateSuccess.Visible = true;
               
            }
        }

    }
}
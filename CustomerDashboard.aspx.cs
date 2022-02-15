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
    public partial class CustomerDashboard : System.Web.UI.Page
    {
     
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");
        static SqlCommand scmd;

        protected void Page_Load(object sender, EventArgs e)
        {         
            if (Session["customer_email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else

            //Label1.Text = "Welcome " + Session["customer"].ToString();
            LabelUserName.Text = Session["customer_name"].ToString();
            LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
            LabelProfileName.Text = Session["customer_name"].ToString();
            LabelProfileEmail.Text = Session["customer_email"].ToString();
           // btnLogout.Visible = true;
           // LabelProfileContact.Text = Session["customer_contact"].ToString();
            //LabelProfileAddress.Text = Session["customer_address"].ToString() + ", " + Session["customer_address_state"].ToString() + ", " + Session["customer_address_city"].ToString() + ", " + Session["customer_address_country"].ToString() + ", " + Session["customer_address_zipcode"].ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customer where customer_email = @customer_email", con);
            cmd.Parameters.AddWithValue("@customer_email", LabelProfileEmail.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            rd.Read();
            LabelProfileAddress.Text = rd["customer_address"].ToString();
            LabelProfileAddressState.Text = rd["customer_address_state"].ToString();
            LabelProfileAddressZipCode.Text = rd["customer_address_zipcode"].ToString();
            LabelProfileAddressCity.Text = rd["customer_address_city"].ToString();
            LabelProfileAddressCountry.Text = rd["customer_address_country"].ToString();
            LabelProfileContact.Text = rd["customer_contact"].ToString();
            con.Close();
        }
        /*
        void Logout()
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        */
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
                string query = "update Customer Set customer_address = @customer_address, customer_address_state = @customer_address_state, customer_address_zipcode = @customer_address_zipcode, customer_address_city = @customer_address_city, customer_address_country = @customer_address_country, customer_contact = @customer_contact where customer_email = @customer_email";
                con.Open();

                scmd = new SqlCommand(query, con);

                scmd.Parameters.Add("@customer_address", SqlDbType.VarChar);
                scmd.Parameters["@customer_address"].Value = TextAddress.Text;
                
                scmd.Parameters.Add("@customer_address_state", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_state"].Value = DropDownState.Text;

                scmd.Parameters.Add("@customer_address_zipcode", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_zipcode"].Value = TextZipcode.Text;

                scmd.Parameters.Add("@customer_address_city", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_city"].Value = DropDownCity.Text;

                scmd.Parameters.Add("@customer_address_country", SqlDbType.VarChar);
                scmd.Parameters["@customer_address_country"].Value = DropDownCountry.Text;

                scmd.Parameters.Add("@customer_contact", SqlDbType.VarChar);
                scmd.Parameters["@customer_contact"].Value = TextContact.Text;

                scmd.Parameters.Add("@customer_email", SqlDbType.VarChar);
                scmd.Parameters["@customer_email"].Value = LabelProfileEmail.Text;

                scmd.ExecuteNonQuery();
                con.Close();

               
                clear();
                //Response.Write("<script>alert('Updated Successfully!')</script>");
                Page_Load(sender, e);
                UpdateSuccess.Visible = true;
                //}
            }

        }



        //protected void Btnlogout_Click(object sender, EventArgs e)
        //{
        //    if (Session["customer_email"] != null)
        //    {
        //        LinkButtonLogout.Visible = true;
        //        Session.RemoveAll();
        //        Response.Redirect("Login.aspx");
        //    }

        //    else
        //    {
        //        LinkButtonLogout.Visible = false;
        //    }

        //}
    }
}
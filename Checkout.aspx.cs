using Paint_Nest_WebApp.DataAccess;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;



namespace Paint_Nest_WebApp
{
    public partial class Checkout : System.Web.UI.Page
    {
        
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");


        private static readonly Paint_NestEntities DbContext = new Paint_NestEntities();
        public void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
                LabelProfileName.Text = Session["customer_name"].ToString();
                LabelProfileEmail.Text = Session["customer_email"].ToString();
                LabelLogin.Visible = false;
                LabelRegister.Visible = false;
                LabelLogout.Visible = true;
                LabelOrderHistory.Visible = true;

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

            //On Checkbox selection
            if (CheckBox1.Checked)
            {
                TextAddress.ReadOnly = false;
                DropDownCountry.Attributes.Remove("disabled");
                DropDownCity.Attributes.Remove("disabled");
                DropDownState.Attributes.Remove("disabled");
                TextZipcode.ReadOnly = false;
                TextContact.ReadOnly = false;
            }
            //On Checkbox deselection
            if (CheckBox1.Checked == false)
            {
                TextAddress.ReadOnly = true;
                DropDownCountry.Attributes.Add("disabled", "disabled"); 
                DropDownCity.Attributes.Add("disabled", "disabled"); 
                DropDownState.Attributes.Add("disabled", "disabled");
                TextZipcode.ReadOnly = true;
                TextContact.ReadOnly = true;
            }

        }

        [WebMethod]
        public static bool PlaceOrder(Order order)
        {
            if (order != null)
            {
                string cName = DbContext.Paints.Where(i => i.paint_name == order.ProductName).FirstOrDefault().Company.company_name;
                order.CompanyName = cName;
                order.OrderStatus = "Received";
                order.CreatedOn = DateTime.Now;

                DbContext.Orders.Add(order);
               
                return DbContext.SaveChanges() > 0;


            }
            return false;
        }



    }
}
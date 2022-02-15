using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Paint_Nest_WebApp
{
    public partial class OrderHistory : System.Web.UI.Page
    {
    
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
                GetPlacedOrderData();
                GetProgressOrderData();
                GetDoneOrderData();
            }
        }

        void GetPlacedOrderData()
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CustomerEmail=@UserEmail and OrderStatus=@status", con);
            cmd.Parameters.AddWithValue("@UserEmail", Session["customer_email"].ToString());
            cmd.Parameters.AddWithValue("@Status", "Received");

            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        void GetProgressOrderData()
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CustomerEmail=@UserEmail and OrderStatus=@status", con);
            cmd.Parameters.AddWithValue("@UserEmail", Session["customer_email"].ToString());
            cmd.Parameters.AddWithValue("@Status", "Progess");

            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            con.Close();
        }

        void GetDoneOrderData()
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CustomerEmail=@UserEmail and OrderStatus=@status", con);
            cmd.Parameters.AddWithValue("@UserEmail", Session["customer_email"].ToString());
            cmd.Parameters.AddWithValue("@Status", "Done");

            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView3.DataSource = dt;
                GridView3.DataBind();
            }
            con.Close();
        }

    }
}
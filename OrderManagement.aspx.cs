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
    public partial class OrderManagement : System.Web.UI.Page
    {
      
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company_email"] == null)
            {
                Response.Redirect("LoginCompany.aspx");
            }
            else
            {
                LabelUserAccount.Text = Session["company_name"].ToString() + "'s Account";
                GetReceiveOrderData();
                GetProgressOrderData();
                GetDoneOrderData();
            }

        }

        void GetReceiveOrderData()
        {
            con.Open();

            string name = Session["company_name"].ToString();

            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CompanyName = @CompanyName and OrderStatus = @Status", con);
            //cmd.Parameters.AddWithValue("@ProName", "Rainbow Enamel Paint");
            cmd.Parameters.AddWithValue("@CompanyName", name);
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
            string name = Session["company_name"].ToString();
            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CompanyName = @CompanyName and OrderStatus = @Status", con);
            //cmd.Parameters.AddWithValue("@ProName", "Rainbow Enamel Paint");
            cmd.Parameters.AddWithValue("@CompanyName", name);
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
            string name = Session["company_name"].ToString();
            SqlCommand cmd = new SqlCommand("select OrderId, ProductName, ProductPrice, ProductQuantity, ProductSize, ProductColor, CustomerName, CustomerContact, CustomerAddress, CustomerEmail, TotalPrice from [dbo].[Order] where CompanyName = @CompanyName and OrderStatus = @Status", con);
            //cmd.Parameters.AddWithValue("@ProName", "Rainbow Enamel Paint");
            cmd.Parameters.AddWithValue("@CompanyName", name);
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

        // }

    }
}
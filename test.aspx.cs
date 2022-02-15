using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Paint_Nest_WebApp
{
    public partial class test : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("Select id, image from Test", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gv.DataSource = dr;
            gv.DataBind();
            //con.Close;
           

           
        }

       

       
    }

}
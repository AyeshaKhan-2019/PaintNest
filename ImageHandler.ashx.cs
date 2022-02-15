using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace Paint_Nest_WebApp
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        public void ProcessRequest(HttpContext context)
        {
            string imageId = context.Request.QueryString["Id"].ToString();
            SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

            SqlCommand cmd = new SqlCommand("select image from Test where id=" + imageId, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            //context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.BinaryWrite((Byte[])dr["Image"]);
            //context.Response.ContentType = "image/png";
            context.Response.End();
            dr.Close();
            //con.Close;

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
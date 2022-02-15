using Paint_Nest_WebApp.DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class PaintTypeEmulsion : System.Web.UI.Page
    {
       
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        private static Paint_NestEntities DbContext = new Paint_NestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_email"] == null)
            {
                LabelUserAccount.Text = "USER ACCOUNT";
            }
            else
            {
                LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
                LabelLogin.Visible = false;
                LabelRegister.Visible = false;
                LabelLogout.Visible = true;
                LabelOrderHistory.Visible = true;

            }
        }

        [WebMethod]
        public static List<PaintViewModel> GetEmulsionPaints()
        {
            List<Paint> paints = DbContext.Paints.Where(i => i.paintCategoryID == "INEMU").ToList();

            List<PaintViewModel> paintViewModels = new List<PaintViewModel>();

            foreach (var paint in paints)
            {
                paintViewModels.Add(new PaintViewModel
                {
                    companyID = paint.companyID,
                    paintCategoryID = paint.paintCategoryID,
                    paintID = paint.paintID,
                    paint_description = paint.paint_description,
                    paint_DrumPrice = paint.paint_DrumPrice,
                    paint_GalPrice = paint.paint_GalPrice,
                    paint_image = paint.paint_image,
                    paint_name = paint.paint_name,
                    paint_QtrPrice = paint.paint_QtrPrice
                });
            }
            return paintViewModels;
        }
    }
}
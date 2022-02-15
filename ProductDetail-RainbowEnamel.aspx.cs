using Paint_Nest_WebApp.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paint_Nest_WebApp
{
    public partial class ProductDetail_RainbowEnamel : System.Web.UI.Page
    {
        private static Paint_NestEntities DbContext = new Paint_NestEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            long paintId = Request.QueryString["ID"] != null ? Convert.ToInt32(Request.QueryString["ID"]) : 0;
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
            Paint paint = DbContext.Paints.Find(paintId);

            if (paint != null)
            {
                PaintName.Text = paint.paint_name;
                PriceData.Text = "RS." + paint.paint_QtrPrice + " - RS." + paint.paint_GalPrice;
                //QtrPrc.Text = "Quarter - 0.91 Litre [Rs. " + paint.paint_QtrPrice + "]";
                //GalPrc.Text = "Gallon - 3.64 Litre [Rs. " + paint.paint_GalPrice + "]";
                //DrmPrc.Text = "Drum - 14.56 Litre [Rs. " + paint.paint_DrumPrice + "]";
                SizeDiv.InnerHtml = "<a href='javascript:void(0);' class='btn shopItem shop-item-price' onclick='updateSize(" + paint.paint_QtrPrice + ")'>Quarter - 0.91 Litre [Rs. " + paint.paint_QtrPrice + "]</a>" +
                    "<a href='javascript:void(0);' class='btn shopItem shop-item-price' onclick='updateSize(" + paint.paint_GalPrice + ")'>Gallon - 3.64 Litre [Rs. " + paint.paint_GalPrice + "]</a>" +
                    "<a href='javascript:void(0);' class='btn shopItem shop-item-price' onclick='updateSize(" + paint.paint_DrumPrice + ")'>Drum - 14.56 Litre [Rs. " + paint.paint_DrumPrice + "]</a>";
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {

        }
    }
}
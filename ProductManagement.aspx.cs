using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Data.SqlClient;
using Paint_Nest_WebApp.DataAccess;

namespace Paint_Nest_WebApp
{
    public partial class ProductManagement : System.Web.UI.Page
    {
       
        static SqlConnection con = new SqlConnection(@" Data Source = ENGRMIZMAJAWAID; Initial Catalog = PaintNest; Integrated Security = True");

        private static readonly Paint_NestEntities DbContext = new Paint_NestEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company_email"] == null)
            {
                Response.Redirect("LoginCompany.aspx");
            }
            else
            {
                LabelUserAccount.Text = Session["company_name"].ToString() + "'s Account";

                //Radio button Selection Paint Category DropDown Enabling Start
                if (RadioButton1.Checked)
                {
                    DropDownList2.Attributes.Remove("disabled");
                    DropDownList4.Attributes.Add("disabled", "disabled");
                }
                else if (RadioButton2.Checked)
                {
                    DropDownList4.Attributes.Remove("disabled");
                    DropDownList2.Attributes.Add("disabled", "disabled");
                }
                //Radio button Selection Paint Category DropDown Enabling End

                //Checkbox Selection Paint Price textbox readonly disable Start
                if (CheckBox1.Checked)
                {
                    QtrPrice.ReadOnly = false;
                }
                if (CheckBox2.Checked)
                {
                    GalPrice.ReadOnly = false;
                }
                if (CheckBox3.Checked)
                {
                    DrumPrice.ReadOnly = false;
                }
                //Checkbox Selection Paint Price textbox readonly disable End

                //Checkbox DeSelection Paint Price textbox readonly enable Start
                if (CheckBox1.Checked == false)
                {
                    QtrPrice.ReadOnly = true;
                }
                if (CheckBox2.Checked == false)
                {
                    GalPrice.ReadOnly = true;
                }
                if (CheckBox3.Checked == false)
                {
                    DrumPrice.ReadOnly = true;
                }
                //Checkbox DeSelection Paint Price textbox readonly enable End
            } //else end
        }

        /*
        protected void FileUpload()
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
            string Image = "~/Upload/" + str.ToString();

            SqlCommand cmd = new SqlCommand("insert into Test values(@Image)", con);
            cmd.Parameters.AddWithValue("@Image", Image);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        */
        protected void SaveImage(int id)
        {
            if (FileUpload1.HasFile)
            {
                string imgarray = null;
                //int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                //byte[] imgarray = new byte[imagefilelenth];
                //HttpPostedFile image = FileUpload1.PostedFile;
                //image.InputStream.Read(imgarray, 0, imagefilelenth);

                foreach (HttpPostedFile uploadedFile in FileUpload1.PostedFiles)
                {
                    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/img/"),
                    uploadedFile.FileName));
                    imgarray = "/img/" + uploadedFile.FileName;
                }
                SqlCommand cmd = new SqlCommand("update Paint set paint_image = @Image where paintID = @id", con);
                cmd.Parameters.AddWithValue("@Image", SqlDbType.VarChar).Value = imgarray;
                cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            //FileUpload();
            Paint paint = new Paint();
            string cmpEmail = (string)Session["company_email"];
            Company company = DbContext.Companies.Where(i => i.company_email == cmpEmail).FirstOrDefault();
            paint.companyID = company.companyID;
            if (RadioButton1.Checked)
            {
                PaintCategory paintCategory = DbContext.PaintCategories.Where(i => i.subCategoryName == DropDownList2.SelectedValue).FirstOrDefault();
                paint.paintCategoryID = paintCategory.paintCategoryID;
            }
            else
            {
                PaintCategory paintCategory = DbContext.PaintCategories.Where(i => i.subCategoryName == DropDownList4.SelectedValue).FirstOrDefault();
                paint.paintCategoryID = paintCategory.paintCategoryID;
            }
            paint.paint_name = TextPaint.Text;

            if (CheckBox1.Checked)
            {
                paint.paint_QtrPrice = Convert.ToInt32(QtrPrice.Text);
            }
            if (CheckBox2.Checked)
            {
                paint.paint_GalPrice = Convert.ToInt32(GalPrice.Text);
            }
            if (CheckBox3.Checked)
            {
                paint.paint_DrumPrice = Convert.ToInt32(DrumPrice.Text);
            }

            DbContext.Paints.Add(paint);
            DbContext.SaveChanges();

            SaveImage(paint.paintID);
        }
    }
}
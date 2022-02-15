using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Paint_Nest_WebApp
{
    public partial class OrderAlert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Label1.Text = Session["user"].ToString();
            // SendEmail();
            LabelUserAccount.Text = Session["customer_name"].ToString() + "'s Account";
            LabelLogin.Visible = false;
            LabelRegister.Visible = false;
            LabelLogout.Visible = true;
        }

        /*
        [WebMethod]
        public void SendEmail()
        {
            string Email = Label1.Text;
            //SqlConnection con = new SqlConnection(@"Data Source=ENGRMIZMAJAWAID;Initial Catalog=Paint Nest;Integrated Security=True");

            //con.Open();

            //SqlCommand cmd = new SqlCommand("select * from [dbo].[Order] where CustomerEmail=@useremail", con);

            //cmd.Parameters.AddWithValue("@useremail", useremail);
            //SqlDataReader rd = cmd.ExecuteReader();
            //string CustomerEmail = "CustomerEmail.Value";

            string smtpAddress = "smtp.gmail.com";
            int portNumber = 587;
            bool enableSSL = true;
            string emailFromAddress = "dr.mizmajawaid@gmail.com"; //Sender Email Address  
            string password = "17Adorable1998"; //Sender Password  
            string emailToAddress = Email; //Receiver Email Address  
            string subject = "Paint Nest: Your order is placed!";
            string body = "Dear Customer,<br/><br/>" +
               "Thank you for ordering from Paint Nest!<br/><br/>" +
               "We're excited for you to receive your order and will notify you once it's on its way. We hope you had a great shopping experience!<br/><br/>" +
               "For more information, please visit our website.";


            //if (rd.Read())
            //{
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFromAddress);
                mail.To.Add(emailToAddress);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;
                //mail.Attachments.Add(new Attachment("D:\\TestFile.txt"));//--Uncomment this to send any attachment  
                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFromAddress, password);
                    smtp.EnableSsl = enableSSL;
                    smtp.Send(mail);

                    // return "Email Send";
                }
            }
            //}

            //else
            //{
            //    return "Unable to send Email";

            //}
            //con.Close();

        }
        */


        protected void BtnContShop_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}
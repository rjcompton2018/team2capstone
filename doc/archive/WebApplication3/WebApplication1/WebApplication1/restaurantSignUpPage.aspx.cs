using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class restaurantSignUpPage : sqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            getReader("SELECT * FROM Restaurant WHERE Email=@value1", txtEmail.Text);
            if (!reader.HasRows)
            {
                reader.Close();
                object[] parameters = { txtEmail.Text, txtName.Value, txtPassword.Value };
                executeVoidSQLQuery("INSERT INTO Restaurant (Email, Restaurant_Name, Password) VALUES(@value1, @value2, @value3)", parameters);
            }
            Console.WriteLine("Hello world");
        }

        /*
        private void SendEmail(List<string> emails, string body, string subject)
        {
            using (MailMessage mm = new MailMessage())
            {
                foreach (String e in emails)
                {
                    mm.To.Add(e);
                }
                mm.From = new MailAddress("test.user@test.com");
                mm.Subject = subject;
                mm.Body = body;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "x.x.x.x";
                smtp.Credentials = new System.Net.NetworkCredential("user", "password");//these things don't matter
                smtp.Send(mm);
            }
        }
        */
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ReServeAPI_v2._0
{
    public partial class ReServe_Login : sqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            getReader("SELECT Email, Password FROM User WHERE Email=@value1", txtEmail.Value);
            if (!reader.HasRows)
            {
                return;
            }
            else
            {
                reader.Read();
                string inputPassword = txtPassword.Value;
                string password = reader.GetString(1);
                if (password == inputPassword)
                {
                    Response.Redirect("Main.html");
                    Session["test"] = txtEmail.Value;
                }
                else
                {
                    return;
                }
            }
            Console.WriteLine("Hello world");
        }
        protected void btnSignUp_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("restaurantSignUpPage.aspx");
        }
    }
}

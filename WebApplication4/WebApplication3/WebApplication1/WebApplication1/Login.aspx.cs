using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{

    public partial class Login : sqlPage
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            getReader("SELECT Email, Password FROM Restaurant WHERE Email=@value1", txtEmail.Value);
            if (!reader.HasRows)
            {
                return;
            }
            else
            {
                reader.Read();
                string inputPassword = txtPassword.Value;
                string password = reader.GetString(1);
                if(password == inputPassword)
                {
                    Response.Redirect("Main.html");
                    Session["test"] = txtEmail.Value;
                    Session["LoggedIn"] = true;
                }
                else
                {
                    Session["LoggedIn"] = false;
                    return;
                }
            }
            Console.WriteLine("Hello world");
        }
    
    }
}
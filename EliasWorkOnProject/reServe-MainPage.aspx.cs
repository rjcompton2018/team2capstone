using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This page introduces users to ReServe
//It allows users to:
// -- login to an account
// -- sign up for an account
// There will not be a lot of C# on this page

namespace ReServeAPI_v2._0
{
    public partial class reServe_MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpCustomer(object sender, EventArgs e)
        {
            Response.Redirect("reServe-CustomerSignUp.aspx");
        }

        protected void signUpRestaurant(object sender, EventArgs e)
        {
            Response.Redirect("reServe-RestaurantSignUp.aspx");
        }
    }
}
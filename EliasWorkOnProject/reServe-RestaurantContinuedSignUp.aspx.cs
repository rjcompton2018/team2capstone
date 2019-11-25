using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_RestaurantContinuedSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void toRestMainPage(object sender, EventArgs e)
        {
            Response.Redirect("reServe-RestaurantMainPage.aspx");
        }

        protected void toTableConfig(object sender, EventArgs e)
        {
            Response.Redirect("reServe-TableConfiguration.aspx");
        }
    }
}
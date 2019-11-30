using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//The hostess page allows a restaurant to manage reservations.
//The hostess page can:
// -- Make reservations
// -- Edit reservations
// -- Delete reservations
// -- Calculate wait time

namespace ReServeAPI_v2._0
{
    public partial class reServe_HostessPage : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                retrieveData();
            }
        }

        protected void retrieveData ()
        {
            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * From [dbo].[Table] WHERE Restaurant_ID=" + Rest_ID, con);
            }

        }
    }
}
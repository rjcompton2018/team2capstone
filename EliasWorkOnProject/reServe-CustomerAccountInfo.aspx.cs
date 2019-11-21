using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//This page allows customers to edit and view their account information.
// -- View Information
// -- Edit Information

namespace ReServeAPI_v2._0
{
    //This connects the page to the database.
    public partial class reServe_CustomerAccountInfo : System.Web.UI.Page
    {
        
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        
        //This loads the page.       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //This pulls the customer's information from the database and populates the fields.
        protected void ViewInformation(object sender, EventArgs e)
        {
        }

        //This allows the customer to edit their information.
        protected void EditBtn_Click(object sender, EventArgs e)
        {

        }
    }
}
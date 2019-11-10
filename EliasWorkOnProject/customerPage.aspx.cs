using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ReServeAPI_v2._0
{
    public partial class customerPage : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(connectingString);
                string com = "Select Id, RestaurantName from ResturantInformation";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "RestaurantName";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
            }

            

           
        }

        protected void Display_Click(object sender, EventArgs e)
        {
            ID = Convert.ToInt32(DropDownList1.SelectedValue);

            Response.Redirect("ReServe-MakeReservation.aspx?ID=" + ID);
        }
    }
}
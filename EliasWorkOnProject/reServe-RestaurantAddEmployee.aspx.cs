using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//The add employee page allows a restaurant to add an employee account to the restaurant account.

namespace ReServeAPI_v2._0
{
    public partial class reServe_AddEmployee : System.Web.UI.Page
    {
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            errorlbl.Visible = false;
        }

        protected void toRestMainPage(object sender, EventArgs e)
        {
            //INSERT Name, Email, Employee_Type, Restauraant_ID, Password

            string identification = Request.QueryString["Rest_ID"];
            int rest_ID = Convert.ToInt32(identification);

            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Employee] (Name, Email, Restaurant_ID, Password) VALUES" +
                    "(@Name, @Email, @Restaurant_ID, @Password)", con);

                cmd.Parameters.AddWithValue("@Name", nameTxt.Text);
                cmd.Parameters.AddWithValue("@Email", emailTxt.Text);
                cmd.Parameters.AddWithValue("@Restaurant_ID", rest_ID);
                cmd.Parameters.AddWithValue("@Password", passwordTxt.Text);

                cmd.ExecuteNonQuery();

                con.Close();
            }


            Response.Redirect("reServe-RestaurantMainPage.aspx?Rest_ID=" + rest_ID);
        }
    }
}
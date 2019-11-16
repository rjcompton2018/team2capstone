using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_RestaurantSignUp : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NextBtn_Click(object sender, EventArgs e)
        {

            // TODO: MAKE SURE PASSWORDS ARE MATCHED BEFORE MAKING INSERT INTO DB

            /* to RESTAURANT database:
                    
                admin email
                password
                
            to RESTAURANTINFO database:

                name
                address
                phone number
                hours
                description
                type of food
            
            */

            SqlConnection con = new SqlConnection(connectingString);

            string adminEmail = adminEmailTxt.Text;
            string adminPass = adminPassTxt.Text;
            string adminRepeatedPass = adminRepeatPassTxt.Text;
            string restName = restNameTxt.Text;
            string restAddress = restAddressTxt.Text;
            string restNumber = restNumberTxt.Text;
            string restHours = restHoursTxt.Text;
            string restFoodType = restFoodTypeTxt.Text;
            string restDescription = descriptionTxt.Text;

            //if (adminPass == adminRepeatedPass)
            //{

                con.Open();
                string command = "INSERT INTO [dbo].[Restaurant] ([Name], [FoodStyle], [Hours], [Address], [PhoneNumber], [Description]) " +
                    "VALUES (@Name, @FoodType, @Hours, @Address, @PhoneNumber, @Description)";

                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@Name", restName);
                cmd.Parameters.AddWithValue("@FoodType", restFoodType);
                cmd.Parameters.AddWithValue("@Hours", restHours);
                cmd.Parameters.AddWithValue("@Address", restAddress);
                cmd.Parameters.AddWithValue("@PhoneNumber", restNumber);
                cmd.Parameters.AddWithValue("@Description", restDescription);

                cmd.ExecuteNonQuery();

                con.Close();

            System.Diagnostics.Debug.WriteLine("Executed");

            //} 
            //else
            //{
            //    Console.WriteLine("PASSWORDS DON'T MATCH");
            //}
            

        }
    }
}
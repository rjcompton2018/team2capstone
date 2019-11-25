using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_RestaurantSignUp : System.Web.UI.Page
    {
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NextBtn_Click(object sender, EventArgs e)
        {
            long numPhone;
            string adminPassword = AdminPasswordEntry.Text;
            string adminRepeatPassword = RepeatPasswordEntry.Text;
            string restPhone = RestaurantPhoneNumberEntry.Text;

            Boolean isNumberPhone = long.TryParse(restPhone, out numPhone);

            // Input checking

            if (isNumberPhone != true)
            {
                errorLbl.Text = "Please enter 10 digit phone number";
                errorLbl.Visible = true;
            } 
            else
            {
                errorLbl.Visible = false;

                int myOutput = 0;

                myOutput = string.Compare(adminPassword, adminRepeatPassword);

                if (myOutput == 0)
                {
                    if (restPhone.Length != 10)
                    {
                        errorLbl.Text = "Please enter 10 digit phone number";
                        errorLbl.Visible = true;
                    }
                    else
                    {
                        errorLbl.Visible = false;
                        checkIfEmailExists();
                    }
                }
                else
                {
                    errorLbl.Text = "Passwords do not match";
                    errorLbl.Visible = true;
                }

            }


        }

        protected void checkIfEmailExists()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[RestaurantAccountInformation] WHERE ([Email] = @AdminEmail)", conn);

                cmd.Parameters.AddWithValue("@AdminEmail", AdminEmailEntry.Text);
                conn.Open();

                int UserExists = (int)cmd.ExecuteScalar();

                if (UserExists > 0)
                {
                    errorLbl.Text = "Email already exists";
                    errorLbl.Visible = true;
                }
                else
                {
                    conn.Close();
                    DataInsert();
                }

            }
        }

        protected void DataInsert()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[RestaurantAccountInformation] (Email, Password, RestaurantName) VALUES (@AdminEmail, @AdminPassword, @RestaurantName)", conn);

                cmd.Parameters.AddWithValue("@AdminEmail", AdminEmailEntry.Text);
                cmd.Parameters.AddWithValue("@AdminPassword", AdminPasswordEntry.Text);
                cmd.Parameters.AddWithValue("@RestaurantName", RestaurantNameEntry.Text);

                cmd.ExecuteNonQuery();

                cmd.CommandText = "INSERT INTO [dbo].[Restaurant] (Name, FoodStyle, Hours, Address, PhoneNumber, Description) " +
                    "VALUES (@Name, @FoodStyles, @Hours, @Address, @PhoneNumber, @Description)";

                cmd.Parameters.AddWithValue("@Name", RestaurantNameEntry.Text);
                cmd.Parameters.AddWithValue("@FoodStyles", RestaurantTypeofFoodEntry.Text);
                cmd.Parameters.AddWithValue("@Hours", RestaurantHoursEntry.Text);
                cmd.Parameters.AddWithValue("@Address", RestaurantAddressEntry.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", RestaurantPhoneNumberEntry.Text);
                cmd.Parameters.AddWithValue("@Description", DescriptionEntry.Text);

                cmd.ExecuteNonQuery();
                conn.Close();

            }
        }

        protected void toContinuedSignUp(Object sender, EventArgs e)
        {
            Response.Redirect("reServe-RestaurantContinuedSignUp.aspx");
        }

    }
}
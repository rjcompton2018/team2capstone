using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//This page allows users to login to ReServe.
//It includes:
// -- a login name which is an email
// -- a password
// -- the ability to go to the two sign up pages

namespace ReServeAPI_v2._0
{
    public partial class reServe_Login : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            errorlbl.Visible = false;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            errorlbl.Text = "* Invalid username or password";
            SqlConnection cnn = new SqlConnection(connectingString);
            Boolean isUser = CheckIfUser();
            Boolean isRestaurant = CheckIfRestaurant();
            Boolean isEmployee = CheckIfEmployee();
            if (isUser == true)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Password, User_ID FROM [dbo].[User]  WHERE ([Email] = @user)", cnn);
                cmd.Parameters.AddWithValue("@user", emailTxt.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string password = reader.GetString(0);
                int User_ID = reader.GetInt32(1);

                if (password == passwordTxt.Text)
                {
                    cnn.Close();
                    Response.Redirect("reServe-CustomerMainPage.aspx?ID=" + User_ID);
                }
                else
                {
                    cnn.Close();
                    errorlbl.Visible = true;
                }
            }
            
            if (isRestaurant == true)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Password, Id FROM [dbo].[RestaurantAccountInformation] WHERE ([Email] = @user)", cnn);
                cmd.Parameters.AddWithValue("@user", emailTxt.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string password = reader.GetString(0);
                int ID = reader.GetInt32(1);

                if (password == passwordTxt.Text)
                {
                    cnn.Close();
                    Response.Redirect("reServe-RestaurantMainPage.aspx?Rest_ID=" + ID);
                    
                }
                else
                {
                    cnn.Close();
                    errorlbl.Visible = true; 
                }
            }
            

            if (isEmployee == true)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Password, Employee_ID FROM [dbo].[Employee] WHERE ([Email] = @user)", cnn);
                cmd.Parameters.AddWithValue("@user", emailTxt.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string password = reader.GetString(0);
                int ID = reader.GetInt32(1);

                if (password == passwordTxt.Text)
                {
                    cnn.Close();
                    Response.Redirect("reServe-HostessPage.aspx?Emp_ID=" + ID);
                }
                else
                {
                    cnn.Close();
                    errorlbl.Visible = true;
                }
            }

            if (isRestaurant == false && isUser == false && isEmployee == false)
            {
                errorlbl.Visible = true;
            }

        }
        protected Boolean CheckIfUser()
        {
            SqlConnection cnn = new SqlConnection(connectingString);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[User]  WHERE ([Email] = @user)", cnn);
            cmd.Parameters.AddWithValue("@user", emailTxt.Text);

            cnn.Open();
            int UserExist = (int)cmd.ExecuteScalar();
            if (UserExist > 0)
            {
                cnn.Close();
                return true;
            }
            else
            {
                cnn.Close();
                return false;
            }
            
        }
        protected Boolean CheckIfRestaurant()
        {
            SqlConnection cnn = new SqlConnection(connectingString);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[RestaurantAccountInformation]  WHERE ([Email] = @user)", cnn);
            cmd.Parameters.AddWithValue("@user", emailTxt.Text);

            cnn.Open();
            int UserExist = (int)cmd.ExecuteScalar();
            if (UserExist > 0)
            {
                cnn.Close();
                return true;
            }
            else
            {
                cnn.Close();
                return false;
            }
        }

        protected Boolean CheckIfEmployee()
        {
            SqlConnection cnn = new SqlConnection(connectingString);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[Employee]  WHERE ([Email] = @user)", cnn);
            cmd.Parameters.AddWithValue("@user", emailTxt.Text);

            cnn.Open();
            int UserExist = (int)cmd.ExecuteScalar();
            if (UserExist > 0)
            {
                cnn.Close();
                return true;
            }
            else
            {
                cnn.Close();
                return false;
            }
        }

        protected void customerSignUp(object sender, EventArgs e)
        {
            Response.Redirect("reServe-CustomerSignUp.aspx");
        }

        protected void restaurantSignUp(object sender, EventArgs e)
        {
            Response.Redirect("reServe-RestaurantSignUp.aspx");
        }
    }
}
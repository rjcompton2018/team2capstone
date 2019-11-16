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
    public partial class restaurantSignUpPage : System.Web.UI.Page
    {

        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            protected void Page_Load(object sender, EventArgs e)
            {
            ErrorMsg.Visible = false;

            }

            protected void btnSignUp_Click(object sender, EventArgs e)
            {
                
                string sql = null;
        
                Console.Write("Connection Open  !");

            SqlConnection cnn = new SqlConnection(connectingString);


           
            cnn.Open();
            



               // SqlCommand cmd = cnn.CreateCommand();

            SqlCommand cmd = new SqlCommand("SELECT Count(*) From [ResturantInformation] Where (Email = @email)",cnn);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                int UserExist = (int)cmd.ExecuteScalar();
            if (UserExist > 0)
            {
                ErrorMsg.Visible = true;
            }
            else
            {
                if (RestaurantCheckBox.Checked == true)
                {
                    cmd.CommandText = "INSERT INTO ResturantInformation (Email, Password, RestaurantName) VALUES (@first, @last, @Name)";
                    string passwordValue = txtPassword.Value;


                    cmd.Parameters.Add("@first", SqlDbType.NVarChar).Value = txtEmail.Text;
                    cmd.Parameters.Add("@last", SqlDbType.NVarChar).Value = txtPassword.Value;
                    cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtName.Value;
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    ErrorMsg.Visible = false;
                    Response.Redirect("Reserve-Login.aspx");
                }
                else
                {
                    
                    cmd.CommandText = "INSERT INTO UserInformation (Email, Password, UserName) VALUES (@first, @last, @Name)";
                    string passwordValue = txtPassword.Value;


                    cmd.Parameters.Add("@first", SqlDbType.NVarChar).Value = txtEmail.Text;
                    cmd.Parameters.Add("@last", SqlDbType.NVarChar).Value = txtPassword.Value;
                    cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtName.Value;
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    ErrorMsg.Visible = false;
                    Response.Redirect("Reserve-Login.aspx");

                }
            }
            
           
              }

         
        }
    }
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
    public partial class ReServe_Login : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorMSG.Visible = false;
        }


        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(connectingString);
           // SqlCommand cmd = cnn.CreateCommand();
            string emailValue = txtEmail.Value;
            int UserExist;
            if (RestaurantCheckBox.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [ResturantInformation] WHERE ([Email] = @value1)", cnn);
                cmd.Parameters.AddWithValue("@value1", emailValue);
                cnn.Open();
                 UserExist = (int)cmd.ExecuteScalar();
                if (UserExist > 0)
                {
                    SqlCommand passwordCmd = new SqlCommand("SELECT Password, Id FROM [ResturantInformation] WHERE ([Email] = @value1)", cnn);
                    passwordCmd.Parameters.AddWithValue("@value1", emailValue);
                    SqlDataReader reader = passwordCmd.ExecuteReader();
                    reader.Read();
                    string password = reader.GetString(0);
                    int ID = reader.GetInt32(1);
                    string inputPassword = txtPassword.Value;
                    if (password == inputPassword)
                    {
                        ErrorMSG.Visible = false;
                        Response.Redirect("RestaurantMainPage.aspx?ID=" + ID);
                        Session["test"] = txtEmail.Value;
                    }
                    else
                    {
                        ErrorMSG.Visible = true;
                    }
                    //Username exist
                }
                else
                {
                    //Username doesn't exist.
                    ErrorMSG.Visible = true;
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [UserInformation] WHERE ([Email] = @value1)", cnn);
                cmd.Parameters.AddWithValue("@value1", emailValue);

                cnn.Open();
                 UserExist = (int)cmd.ExecuteScalar();
                if (UserExist > 0)
                {
                    SqlCommand passwordCmd = new SqlCommand("SELECT Password,Id FROM [UserInformation] WHERE ([Email] = @value1)", cnn);
                    passwordCmd.Parameters.AddWithValue("@value1", emailValue);
                    SqlDataReader reader = passwordCmd.ExecuteReader();
                    reader.Read();
                    string password = reader.GetString(0);
                    int ID = reader.GetInt32(1);
                    string inputPassword = txtPassword.Value;
                    if (password == inputPassword)
                    {
                        ErrorMSG.Visible = false;
                        Response.Redirect("ReServe-Main.aspx?ID=" + ID);
                        Session["test"] = txtEmail.Value;
                    }
                    else
                    {
                        ErrorMSG.Visible = true;
                    }
                    //Username exist
                }
                else
                {
                    //Username doesn't exist.
                    ErrorMSG.Visible = true;
                }
            }
            
            /*//cmd.CommandText = "SELECT Email FROM ResturantInformation WHERE Email = @value1";
            cmd.Parameters.AddWithValue("@value1", emailValue);
            
            cnn.Open();
            //cmd.ExecuteNonQuery();
            int UserExist = (int)cmd.ExecuteScalar();
            if (UserExist > 0)
            {
                if (RestaurantCheckBox.Checked == true)
                {
                    SqlCommand passwordCmd = new SqlCommand("SELECT Password FROM [ResturantInformation] WHERE ([Email] = @value1)", cnn);
               
                }
                else
                {
                    SqlCommand passwordCmd = new SqlCommand("SELECT Password FROM [UserInformation] WHERE ([Email] = @value1)", cnn);

                }

                passwordCmd.Parameters.AddWithValue("@value1", emailValue);
                SqlDataReader reader = passwordCmd.ExecuteReader();
                reader.Read();
                string password = reader.GetString(0);
                string inputPassword = txtPassword.Value;
                if (password == inputPassword)
                {
                    ErrorMSG.Visible = false;
                    Response.Redirect("ReServe-Main.aspx");
                    Session["test"] = txtEmail.Value;
                }
                else
                {
                    ErrorMSG.Visible = true;
                }
                //Username exist
            }
            else
            {
                //Username doesn't exist.
                ErrorMSG.Visible = true;
            }
            /*              
                        if (!reader.HasRows)
                        {
                            return;
                        }
                        else
                        {
                            reader.Read();
                            string inputPassword = txtPassword.Value;
                            string password = reader.GetString(1);
                            if (password == inputPassword)
                            {
                                Response.Redirect("Main.html");
                                Session["test"] = txtEmail.Value;
                            }
                            else
                            {
                                return;
                            }
                        }
                        Console.WriteLine("Hello world");
                   */

            
        }
        
    }
}

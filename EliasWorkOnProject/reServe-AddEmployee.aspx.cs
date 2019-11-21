using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ReServeAPI_v2._0
{
    public partial class reServe_AddEmployee : System.Web.UI.Page
    {
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string name = nameTxt.Text;
            string email = emailTxt.Text;
            string pass = passwordTxt.Text;
            string title = titleTxt.Text;
        }

        protected void checkIfEmailExist()
        {

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[Employee]  WHERE ([Email] = @user)", conn);

                cmd.Parameters.AddWithValue("@user", emailTxt.Text);
                conn.Open();
                int UserExist = (int)cmd.ExecuteScalar();

                if (UserExist > 0)
                {
                    //Username exist
                    errorlbl.Text = "* Email is not availabe";
                    errorlbl.Visible = true;
                }
                else
                {
                    //Username doesn't exist.
                    SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM [dbo].[Employee]  WHERE ([Email] = @user)", conn);

                    cmd2.Parameters.AddWithValue("@user", emailTxt.Text);
                    int Exist = (int)cmd2.ExecuteScalar();
                    if (Exist > 0)
                    {
                        errorlbl.Text = "* Email is not availabe";
                        errorlbl.Visible = true;
                    }
                    else
                    {
                        conn.Close();
                        DataInsert();
                    }
                }
            }
        }
        protected void DataInsert()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Employee] (Name, Email, Password, Title) VALUES(@email, @password, @phoneNumber)", conn);

                cmd.Parameters.AddWithValue("@name", nameTxt.Text);
                cmd.Parameters.AddWithValue("@email", emailTxt.Text);
                cmd.Parameters.AddWithValue("@password", passwordTxt.Text);
                cmd.Parameters.AddWithValue("@title", titleTxt.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("reServe-RestaurantMain.aspx");
            }

        }
    }

}
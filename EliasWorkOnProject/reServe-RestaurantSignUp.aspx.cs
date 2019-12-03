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
                error_Lbl.Text = "Please enter 10 digit phone number";
                error_Lbl.Visible = true;
            } 
            else
            {
                error_Lbl.Visible = false;

                int myOutput = 0;

                myOutput = string.Compare(adminPassword, adminRepeatPassword);

                if (myOutput == 0)
                {
                    if (restPhone.Length != 10)
                    {
                        error_Lbl.Text = "Please enter 10 digit phone number";
                        error_Lbl.Visible = true;
                    }
                    else
                    {
                        error_Lbl.Visible = false;
                        checkIfEmailExists();
                    }
                }
                else
                {
                    error_Lbl.Text = "Passwords do not match";
                    error_Lbl.Visible = true;
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
                    error_Lbl.Text = "Email already exists";
                    error_Lbl.Visible = true;
                }
                else
                {
                    conn.Close();
                }

            }
        }

        protected void toContinuedSignUp(Object sender, EventArgs e)
        {

            Session["Email"] = AdminEmailEntry.Text;
            Session["Password"] = AdminPasswordEntry.Text;

            Session["Name"] = RestaurantNameEntry.Text;
            Session["FoodStyle"] = RestaurantTypeofFoodEntrytxt.Text;
            Session["Hours"] = RestaurantHoursEntrytxt.Text;
            Session["Address"] = RestaurantAddressEntry.Text;
            Session["PhoneNumber"] = RestaurantPhoneNumberEntry.Text;
            Session["Description"] = DescriptionEntry.Text;

            Response.Redirect("reServe-RestaurantContinuedSignUp.aspx");
            }
    }
}
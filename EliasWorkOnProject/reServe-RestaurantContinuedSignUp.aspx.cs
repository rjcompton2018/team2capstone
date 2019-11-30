using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_RestaurantContinuedSignUp : System.Web.UI.Page
    {
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected int DataInsert()
        {
            /* inserting:
                - capacity
                - total tables
                - booths (B)
                - bar (B)
                - delivery (B)
                - catering (B)
                - vegan options (B)
                - outdoor seating (B)
                - handicap (B)
                - high chair (B)
            */

            string email = Session["Email"].ToString();
            string password = Session["Password"].ToString();
            
            string restName = Session["Name"].ToString();
            string foodStyle = Session["FoodStyle"].ToString();
            string hours = Session["Hours"].ToString();
            string address = Session["Address"].ToString();
            string phoneNumber = Session["PhoneNumber"].ToString();
            string description = Session["Description"].ToString();

            using (SqlConnection con1 = new SqlConnection(connectionString))
            {
                con1.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[RestaurantAccountInformation] (Email, Password, RestaurantName) VALUES (@AdminEmail, @AdminPassword, @RestaurantName); SELECT SCOPE_IDENTITY()", con1);

                cmd.Parameters.AddWithValue("@AdminEmail", email);
                cmd.Parameters.AddWithValue("@AdminPassword", password);
                cmd.Parameters.AddWithValue("@RestaurantName", restName);

                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                int insertedID = Convert.ToInt32(reader[0]);

                //int id = Convert.ToInt32(cmd.ExecuteScalar());
                //cmd.ExecuteNonQuery();

                cmd.CommandText = "INSERT INTO [dbo].[Restaurant] (Restaurant_ID, Name, FoodStyle, Hours, Address, PhoneNumber, Description, Capacity, TotalTables, Booths, " +
                    "Bar, Delivery, Catering, Vegan, Outdoor, HandicapAccessible, HighChairs) " +
                    "VALUES (@Name, @FoodStyles, @Hours, @Address, @PhoneNumber, @Description, @capacity, @totalTables, @Booths, @Bar, @Delivery, @Catering, @Vegan, @Outdoor," +
                    "@HandicapAccessible, @highChairs)";

                cmd.Parameters.AddWithValue("@Restaurant_ID", insertedID);
                cmd.Parameters.AddWithValue("@Name", restName);
                cmd.Parameters.AddWithValue("@FoodStyles", foodStyle);
                cmd.Parameters.AddWithValue("@Hours", hours);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                cmd.Parameters.AddWithValue("@Description", description);

                int capacity = Convert.ToInt32(capacityTxt.Text);
                int totaltables = Convert.ToInt32(totalTablesTxt.Text);

                int boothsInt = 0, barInt = 0, deliveryInt = 0, cateringInt = 0, veganInt = 0, outdoorInt = 0, handicapInt = 0, highChairInt = 0;

                if (boothsCbx.Checked) { boothsInt = 1; } else { boothsInt = 0; }
                if (barCbx.Checked) { barInt = 1; } else { barInt = 0; }
                if (DeliveryCbx.Checked) { deliveryInt = 1; } else { deliveryInt = 0; }
                if (CateringCbx.Checked) { cateringInt = 1; } else { cateringInt = 0; }
                if (VeganCbx.Checked) { veganInt = 1; } else { veganInt = 0; }
                if (OutdoorCbx.Checked) { outdoorInt = 1; } else { outdoorInt = 0; }
                if (HandicapCbx.Checked) { handicapInt = 1; } else { handicapInt = 0; }
                if (HighChairsCbx.Checked) { highChairInt = 1; } else { highChairInt = 0; }

                cmd.Parameters.AddWithValue("@capacity", capacity);
                cmd.Parameters.AddWithValue("@totalTables", totaltables);
                cmd.Parameters.AddWithValue("@Booths", boothsInt);
                cmd.Parameters.AddWithValue("@Bar", barInt);
                cmd.Parameters.AddWithValue("@Delivery", deliveryInt);
                cmd.Parameters.AddWithValue("@Catering", cateringInt);
                cmd.Parameters.AddWithValue("@Vegan", veganInt);
                cmd.Parameters.AddWithValue("@Outdoor", outdoorInt);
                cmd.Parameters.AddWithValue("@HandicapAccessible", handicapInt);
                cmd.Parameters.AddWithValue("@highChairs", highChairInt);

                con1.Close();
                return insertedID;
            }
            
        }

        protected void toRestMainPage(object sender, EventArgs e)
        {
            int rest_id = DataInsert();

            Response.Redirect("reServe-RestaurantMainPage.aspx?Rest_ID=" + rest_id);
        }

        protected void toTableConfig(object sender, EventArgs e)
        {
            int rest_id = DataInsert();

            Session["totalTables"] = totalTablesTxt.Text;

            Response.Redirect("reServe-TableConfiguration.aspx?Rest_ID=" + rest_id);
        }
    }
}
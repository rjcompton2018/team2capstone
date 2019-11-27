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

        protected void DataInsert()
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
            string identification = Request.QueryString["Rest_ID"];
            int ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT [dbo].[Restaurant] (Capacity, TotalTables, Booths, " +
                    "Bar, Delivery, Catering, Vegan, Outdoor, HandicapAccesible, HighChairs) " +
                    "VALUES (@capacity, @totalTables, @Booths, @Bar, @Delivery, @Catering, @Vegan, @Outdoor," +
                    "@HandicapAccessible, @highChairs) WHERE Restaurant_ID=" + ID, con);

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

                cmd.ExecuteNonQuery();

                con.Close();

            }
        }

        protected void toRestMainPage(object sender, EventArgs e)
        {
            DataInsert();

            string identification = Request.QueryString["Rest_ID"];
            int ID = Convert.ToInt32(identification);
            Response.Redirect("reServe-RestaurantMainPage.aspx?Rest_ID=" + ID);
        }

        protected void toTableConfig(object sender, EventArgs e)
        {
            string identification = Request.QueryString["Rest_ID"];
            int ID = Convert.ToInt32(identification);
            Response.Redirect("reServe-TableConfiguration.aspx?Rest_ID=" + ID);
        }
    }
}
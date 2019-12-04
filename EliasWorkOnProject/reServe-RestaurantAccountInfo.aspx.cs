using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This page will show restaurant's their account information and allow them to edit it.

namespace ReServeAPI_v2._0
{
    public partial class reServe_RestaurantAccountInfo : System.Web.UI.Page
    {
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GrindBind();
            }
        }

        protected void GrindBind()
        {
            /* Displaying:
                - Email
                - Restaurant Name
                - Address
                - Phone Number
                - Hours
                - capacity
                - total tables
                - booths (B)
                - bar (B)
                - delivery (B)
                - catering (B)
                - vegan (B)
                - outdoor (B)
                - handicap (B)
                - highchair (B)

                TODO:
                - FoodStyle
                - adminEmail
             */

            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Name, Address, PhoneNumber, Hours, Capacity, TotalTables, Booths, Bar, Delivery," +
                    "Catering, Vegan, Outdoor, HandicapAccessible, HighChairs FROM [dbo].[Restaurant] WHERE Restaurant_ID=" + Rest_ID, con);

                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();

                restNameDisp.Text = reader[0].ToString();
                restAddressDisp.Text = reader[1].ToString();
                restPhoneNumberDisp.Text = reader[2].ToString();
                restHoursDisp.Text = reader[3].ToString();
                capacityDisp.Text = reader[4].ToString();
                totalTablesDisp.Text = reader[5].ToString();

                if (reader[6].ToString() == "1") { boothsCbx.Checked = true; } else { boothsCbx.Checked = false; }
                if (reader[7].ToString() == "1") { barCbx.Checked = true; } else { barCbx.Checked = false; }
                if (reader[8].ToString() == "1") { DeliveryCbx.Checked = true; } else { DeliveryCbx.Checked = false; }
                if (reader[9].ToString() == "1") { CateringCbx.Checked = true; } else { CateringCbx.Checked = false; }
                if (reader[10].ToString() == "1") { VeganCbx.Checked = true; } else { VeganCbx.Checked = false; }
                if (reader[11].ToString() == "1") { OutdoorCbx.Checked = true; } else { OutdoorCbx.Checked = false; }
                if (reader[12].ToString() == "1") { HandicapCbx.Checked = true; } else { HandicapCbx.Checked = false; }
                if (reader[13].ToString() == "1") { HighChairsCbx.Checked = true; } else { HandicapCbx.Checked = false; }


            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {

        }

        protected void toHostessPage(object sender, EventArgs e)
        {
            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);
            Response.Redirect("reServe-HostessPage.aspx?Rest_ID=" + Rest_ID);
        }
    }
}
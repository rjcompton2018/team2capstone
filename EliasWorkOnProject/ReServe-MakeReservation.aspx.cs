using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

//This page will allow restaurants or customers to make reservations. MOSTLY CUSTOMERS
//It will include:
// -- name on the reservation
// -- reason for reservation
// -- something else, can't remember

namespace ReServeAPI_v2._0
{
    public partial class reServe_MakeReservation : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrind();
                
                restaurantDdl.SelectedIndex = 0;
                waitlbl.Visible = false;
            }
        }

        private void BindGrind()
        {
            using (var conn = new SqlConnection(connectingString))
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT Name FROM Restaurant", conn))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        restaurantDdl.DataSource = reader;
                        restaurantDdl.DataValueField = "Name";
                        restaurantDdl.DataTextField = "Name";
                        restaurantDdl.DataBind();

                    }
                }
                restaurantDdl.Items.Insert(0, new ListItem("<Select Restaurant>", "NA"));
            }
        }

        protected void makeBtn_Click(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            string partyNum = partyNumTxt.Text;
            int partyNumInt = Convert.ToInt32(partyNum);

            string partyName = nameTxt.Text;
            string phoneNum = phoneTxt.Text;

            string date = Calendar1.SelectedDate.ToShortDateString();
            string time = timeDdl.SelectedItem.Text;

            string datetime = date + " " + time;
            DateTime datetimeDT = DateTime.ParseExact(datetime, "M/d/yyyy h:mm", null);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                string com = "INSERT INTO Reservation (User_ID, Name, PartyNum, Phone_Number, Restaurant, DateTime)" +
                    " VALUES (@User_ID, @Name, @PartyNum, @Phone_Number, @Restaurant, @DateTime)";

                SqlCommand cmd = new SqlCommand(com, con);

                cmd.Parameters.AddWithValue("@User_ID", User_ID);
                cmd.Parameters.AddWithValue("@Name", partyName);
                cmd.Parameters.AddWithValue("@PartyNum", partyNumInt);
                cmd.Parameters.AddWithValue("@Phone_Number", phoneNum);
                cmd.Parameters.AddWithValue("@Restaurant", restaurantDdl.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@DateTime", datetimeDT);

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();
                int parynumber = Int32.Parse(partyNum);
                waitTime(parynumber);
                Random random = new Random();
                /*
                if(parynumber > 4)
                { 
                int num =  random.Next(15, 45);
                    datetimeDT.AddMinutes(num);
                    const string accountSid = "AC35d309c5be325ca11b2cebf54dc38fdc";
                    const string authToken = "a55375efca451a1ffd453d7179ceecd7";

                    TwilioClient.Init(accountSid, authToken);

                    var message = MessageResource.Create(
                        body: "Hello, Your reservation will be ready in " + num + " please present in  " + datetimeDT + "5 mins before",
                        from: new Twilio.Types.PhoneNumber("+13107366494"),
                        to: new Twilio.Types.PhoneNumber("+18104475644")
                    );
                
                }
                else
                {
                    int num = random.Next(10, 15);
                    datetimeDT.AddMinutes(num);
                    const string accountSid = "AC35d309c5be325ca11b2cebf54dc38fdc";
                    const string authToken = "a55375efca451a1ffd453d7179ceecd7";

                    TwilioClient.Init(accountSid, authToken);

                    var message = MessageResource.Create(
                        body: "Hello, Your reservation will be ready on " + datetimeDT + " please present in 5 mins before",
                        from: new Twilio.Types.PhoneNumber("+13107366494"),
                        to: new Twilio.Types.PhoneNumber("+18104475644")
                    );

                } */
                // DateTime t2 = DateTime.ParseExact(time, "HH:MM", CultureInfo.InvariantCulture);
                //int t = Int32.Parse(time);

               

            }

            //Response.Redirect("reServe-ViewReservation.aspx?ID=" + User_ID);

        }
        protected void waitTime(int num)
        {

            int possibleWait = (num * 1) + (num * 5) + (num * 10) + num;
            int finalWait = possibleWait / 5;

            waitlbl.Text = "there will be " + finalWait.ToString() + " mins wait time";
            waitlbl.Visible = true;


            
        }

        protected void selectionChanged(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();

                string selected = restaurantDdl.SelectedItem.Text.ToString();

                string command = "SELECT Name, Address, Hours, Description FROM [dbo].[Restaurant] WHERE Name = '" + selected + "'";
                SqlCommand com = new SqlCommand(command, con);
                SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                restInfo.Text = reader["Name"].ToString() + "<br />"
                + reader["Address"].ToString() + "<br />"
                + reader["Hours"].ToString() + "<br />"
                + reader["Description"].ToString() + "<br />";

                reader.Close();

                con.Close();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}
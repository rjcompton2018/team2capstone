using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

//The hostess page allows a restaurant to manage reservations.
//The hostess page can:
// -- Make reservations
// -- Edit reservations
// -- Delete reservations
// -- Calculate wait time

namespace ReServeAPI_v2._0
{
    public partial class reServe_HostessPage : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getTableConfig();
                getReservationData();
            }
        }

        protected void getTableConfig()
        {
            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                SqlCommand cmd = new SqlCommand("SELECT top_Coord, left_Coord, Table_ID, Capcity FROM [dbo].[Table] WHERE Restaurant_ID=" + Rest_ID, con);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    float topCoord = float.Parse(reader[0].ToString());
                    float leftCoord = float.Parse(reader[1].ToString());
                    string tableID = reader[2].ToString();
                    float capacity = float.Parse(reader[3].ToString());

                    //HtmlGenericControl panel = new HtmlGenericControl("panel");

                    HtmlGenericControl myDiv = new HtmlGenericControl("div");
                    myDiv.ID = tableID.ToString();
                    myDiv.Attributes.Add("class", "table oval");
                    myDiv.Attributes.Add("style", "position: absolute; top:" + topCoord.ToString() + "px;left: " + leftCoord.ToString() + "px");

                    HtmlGenericControl capacityLbl = new HtmlGenericControl("label");
                    capacityLbl.InnerText = capacity.ToString();
                    capacityLbl.Attributes.Add("class", "textBox");

                    myDiv.Controls.Add(capacityLbl);
                    
                    panel1.Controls.Add(myDiv);

                    //container1.Controls.Add(panel);
                }
                con.Close();
            }

        }

        protected void getReservationData()
        {
            //string identification = Request.QueryString["Rest_ID"];
            //int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();

                string com = "SELECT Reservation_ID, Name, PartyNum, Phone_Number, DateTime FROM Reservation" /*WHERE Restaurant_ID=" + Rest_ID*/;

                SqlCommand cmd = new SqlCommand(com, con);

                SqlDataAdapter sda = new SqlDataAdapter();
                DataTable dt = new DataTable();

                cmd.Connection = con;
                sda.SelectCommand = cmd;

                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
        }

        protected void makeReservation(object sender, EventArgs e)
        {

            
            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);

            string partyNum = txtPartyNum.Text;
            //Response.Write("<script language=javascript>console.log('" + newReservation.Value + "'); </script>");
            //int partyNumInt = Convert.ToInt32(partyNum);

            string partyName = txtName.Text;
            string phoneNum = txtPhoneNumber.Text;

            string time = ddlTime.SelectedItem.Text;

            DateTime datetime = DateTime.Now;
            //DateTime datetimeDT = DateTime.ParseExact(datetime, "M/d/yyyy h:mm", null);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                string com = "INSERT INTO Reservation (Name, PartyNum, Phone_Number, Restaurant, DateTime)" +
                    " VALUES (@Name, @PartyNum, @Phone_Number, @Restaurant, @DateTime)";

                SqlCommand cmd = new SqlCommand(com, con);

                cmd.Parameters.AddWithValue("@Name", partyName);
                cmd.Parameters.AddWithValue("@PartyNum", partyNum);
                cmd.Parameters.AddWithValue("@Phone_Number", phoneNum);
                cmd.Parameters.AddWithValue("@Restaurant", Rest_ID.ToString());
                cmd.Parameters.AddWithValue("@DateTime", datetime);

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script language=javascript>console.log(' success '); </script>");

            }
        }

        protected void gridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            using (SqlConnection con = new SqlConnection(connectingString) )
            {
                SqlCommand cmd = new SqlCommand("Delete From Reservation (Name, PartyNum, Phone_Number, Restaurant, DateTime) WHERE Reservation_ID=@Reservation_ID", con);
                cmd.Parameters.AddWithValue("@Reservation_ID", GridView1.DataKeys[e.RowIndex].Values["Reservation_ID"].ToString());

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();
            }
           

            //cmd.Parameters.AddWithValue("@Reservation_ID", GridView1.DataKeys[e.RowIndex].Values["Reservation_ID"].ToString());
            GridView1.DataBind();
        }
    }
}
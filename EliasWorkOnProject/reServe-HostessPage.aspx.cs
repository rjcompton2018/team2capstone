﻿using System;
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
            getTableConfig();
            if (!IsPostBack)
            {
                
                getReservationData();
                settingGridView();
            }
        }

        protected void settingGridView()
        {
            DataTable dt = new DataTable();

            ViewState["CurrentTable"] = dt;

            
        }

        protected void addNewCustomer(object sender, EventArgs e)
        {

            if(ViewState["CurrentTable"] != null)
            {
                DataTable dtCT = (DataTable)ViewState["CurrentTable"];
                if (dtCT.Columns.Count == 0)
                {
                    dtCT.Columns.Add("Name", typeof(string));
                    dtCT.Columns.Add("Party Number", typeof(int));
                    dtCT.Columns.Add("Wait Time", typeof(int));
                }

                int waitTimeC = waitTime();

                DataRow newRow = dtCT.NewRow();
                newRow[0] = CustomerName.Text;
                newRow[1] = Convert.ToInt32(PartyNumber.Text);
                newRow[2] = waitTimeC;
                dtCT.Rows.Add(newRow);
                GridViewCustomers.DataSource = dtCT;
                GridViewCustomers.DataBind();
            }

        }

        protected int waitTime()
        {
            Random random = new Random();
            int randomNum = random.Next(1,20);

            return randomNum;
        }

        protected void getTableConfig()
        {
            string identification = Request.QueryString["Rest_ID"];
            //string Name = Application["Rest_ID"].ToString();
            int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                SqlCommand cmd = new SqlCommand("SELECT top_Coord, left_Coord, Table_ID, Capcity FROM [dbo].[Table] WHERE Restaurant_ID= @RestID", con);
                cmd.Parameters.AddWithValue("@RestID", Rest_ID);
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
            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);
            //string Name = Application["Rest_ID"].ToString();
            //int Rest_ID = Convert.ToInt32(Name);
            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();

                string com = "SELECT Reservation_ID, Name, PartyNum, Phone_Number, DateTime FROM Reservation WHERE Reservation_ID= @RestID";

                SqlCommand cmd = new SqlCommand(com, con);
                cmd.Parameters.AddWithValue("@RestID", Rest_ID);
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

            //string Name = Application["Rest_ID"].ToString();
            //int Rest_ID = Convert.ToInt32(Name);

            //string partyNum = txtPartyNum.Text;
            ////Response.Write("<script language=javascript>console.log('" + newReservation.Value + "'); </script>");

            //string partyName = txtName.Text;
            //string phoneNum = txtPhoneNumber.Text;

            //string time = ddlTime.SelectedItem.Text;


            //DateTime datetimeDT = DateTime.ParseExact(datetime, "M/d/yyyy h:mm", null);


            Response.Write("<script language=javascript>alert(' makeReservation called '); </script>");


            DateTime datetime = DateTime.Now;

            string[] reservationInfo = newReservation.Value.Split(',');

            Response.Write("<script language=javascript>alert(" + newReservation.Value + ") </script>");

            //string partyName = reservationInfo[0];
            //string partyNum = reservationInfo[1];
            //string phoneNum = reservationInfo[2];

            //using (SqlConnection con = new SqlConnection(connectingString))
            //{
            //    string com = "INSERT INTO Reservation (Name, PartyNum, Phone_Number, Restaurant, DateTime)" +
            //        " VALUES (@Name, @PartyNum, @Phone_Number, @Restaurant, @DateTime)";

            //    SqlCommand cmd = new SqlCommand(com, con);

            //    cmd.Parameters.AddWithValue("@Name", partyName);
            //    cmd.Parameters.AddWithValue("@PartyNum", partyNum);
            //    cmd.Parameters.AddWithValue("@Phone_Number", phoneNum);
            //    cmd.Parameters.AddWithValue("@Restaurant", Rest_ID.ToString());
            //    cmd.Parameters.AddWithValue("@DateTime", datetime);

            //    con.Open();

            //    cmd.ExecuteNonQuery();

            //    con.Close();

            //    Response.Write("<script language=javascript>console.log('" + partyName + "'); </script>");
            //    Response.Write("<script language=javascript>console.log('" + phoneNum + "'); </script>");
            //    Response.Write("<script language=javascript>console.log('" + datetime + "'); </script>");

            //}
        }

        protected void gridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            using (SqlConnection con = new SqlConnection(connectingString))
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

        protected void pullReservations(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

            getReservationData();
        }
    }
}
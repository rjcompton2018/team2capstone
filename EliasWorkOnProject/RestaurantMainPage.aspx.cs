﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
namespace ReServeAPI_v2._0
{
    public partial class RestaurantMainPage : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                BindGrid();
            
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int ID = Convert.ToInt32(identification);
            Response.Redirect("restaurantConfiguration.aspx?ID=" + ID);
        }
        private void BindGrid()
        {
            string identification = Request.QueryString["ID"];
            int ID = Convert.ToInt32(identification);
           

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Restaurant Where  ([Restaurant_ID] = @value1)"))
                {
                    cmd.Parameters.AddWithValue("@value1", ID);
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
                con.Close();
            }
        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

    }
}
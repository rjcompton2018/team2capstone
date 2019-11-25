﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This page allows customers to navigate to other pages on the website.
//It also shows a ton information to the customer, just basic flavor text.
//This will be very light on C# code.

namespace ReServeAPI_v2._0
{
    public partial class reServe_CustomerMainPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void accbtn_Click(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            Response.Redirect("reServe-CustomerAccountInfo.aspx?ID=" + User_ID);
        }

        protected void viewbtn_Click(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            Response.Redirect("reServe-ViewReservation.aspx?ID=" + User_ID);
        }

        protected void makebtn_Click(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            Response.Redirect("reServe-MakeReservation.aspx?ID=" + User_ID);
        }
    }
}
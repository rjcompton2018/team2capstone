using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_ViewReservation : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrind();
            }
        }

        protected void BindGrind()
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {

                con.Open();

                string com = "SELECT A.Restaurant_ID, A.TimeOfReserv, B.Name FROM Reservation A RIGHT JOIN Restaurant B on a.Restaurant_ID = b.Restaurant_ID WHERE A.User_ID=" + User_ID;

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

        /* 
        ON EDIT:
            - navigate back to make reservation page
            - remove row from DB
            - add a new row

        ON DELETE:
            - remove row from DB
            - pop up that says reservation deleted

        */

        protected void clicked(object sender, EventArgs e)
        {

        }
    }
}
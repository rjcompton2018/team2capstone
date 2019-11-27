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
    public partial class reServe_RestaurantListOfEmployess : System.Web.UI.Page
    {
        string connectionString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
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
            int Rest_ID = Convert.ToInt32(identification);

            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string com = "SELECT Name, Email FROM Employee WHERE Restaurant_ID=" + Rest_ID;

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

        protected void addEmployee(object sender, EventArgs e)
        {
            Response.Redirect("reServe-AddEmployee.aspx");
        }
    }
}
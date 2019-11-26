using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//This page allows customers to edit and view their account information.
// -- View Information
// -- Edit Information

namespace ReServeAPI_v2._0
{
    //This connects the page to the database.
    public partial class reServe_CustomerAccountInfo : System.Web.UI.Page
    {
        
        string connectionString = "Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        int user;
        //This loads the page.       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrind();
            }
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);
            user = User_ID;
            emailtxt.Visible = false;
            numbertxt.Visible = false;
            emaillabel.Visible = false;
            phonelabel.Visible = false;
            Editbtn2.Visible = false;

        }
        
        //This pulls the customer's information from the database and populates the fields.
        protected void BindGrind()
        {
            string identification = Request.QueryString["ID"];
            int User_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string comm = "SELECT Email, PhoneNumber FROM [dbo].[User] WHERE User_ID=" + User_ID;
                SqlCommand cmd = new SqlCommand(comm, con);

                //cmd.Parameters.AddWithValue("@User_ID", User_ID);

                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();

                emailInsert.Text = reader[0].ToString();
                phoneNumInsert.Text = reader[1].ToString();

            }

        }

        protected void makeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("reServe-MakeReservation.aspx?ID=" + user);
        }

        protected void editBtn_Click1(object sender, EventArgs e)
        {
            if (emailtxt.Visible == false)
            { 
                emailtxt.Visible = true;
                numbertxt.Visible = true;
                emaillabel.Visible = true;
                phonelabel.Visible = true;
                Editbtn2.Visible = true;
            }
           
        }

        protected void currentBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("reServe-ViewReservation.aspx?ID=" + user);
        }

        protected void Editbtn2_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string identification = Request.QueryString["ID"];
                int User = Convert.ToInt32(identification);
                string comm = "UPDATE [dbo].[User] Set Email = @value1, PhoneNumber = @value2 Where User_ID = User";
                SqlCommand cmd = new SqlCommand("UPDATE [dbo].[User] Set [Email] = '" + emailtxt.Text + "', [PhoneNumber] = '"+ numbertxt.Text + "'  Where User_ID = @value3", con);
                // cmd.Parameters.AddWithValue("@value1", emailtxt.Text);
                //cmd.Parameters.AddWithValue("@value2", numbertxt.Text);
                cmd.Parameters.AddWithValue("@value3", identification);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                emailtxt.Visible = false;
                numbertxt.Visible = false;
                emaillabel.Visible = false;
                phonelabel.Visible = false;

            }
        }
    }
}
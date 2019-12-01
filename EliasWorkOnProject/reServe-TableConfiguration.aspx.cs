using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ReServeAPI_v2._0
{
    public partial class reServe_TableConfiguration : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int totalTables = Convert.ToInt32(Session["totalTables"]);

                for (int i = 0; i < totalTables; i++)
                {
                    HtmlGenericControl myDiv = new HtmlGenericControl("div");
                    myDiv.ID = "table" + i;
                    myDiv.Attributes.Add("class", "table oval");

                    HtmlGenericControl txtBox = new HtmlGenericControl("input");
                    txtBox.ID = "capacity_table" + i;
                    txtBox.Attributes.Add("class", "textBox");

                    HtmlGenericControl lbl = new HtmlGenericControl("label");
                    lbl.ID = "CapacityLbl" + i;
                    lbl.InnerText = "Capacity: ";
                    lbl.Attributes.Add("style", "left: 20%; top: 10%");

                    myDiv.Controls.Add(lbl);
                    myDiv.Controls.Add(txtBox);
                    placeholder.Controls.Add(myDiv);
                }
            }
        }

        protected void txtBoxVisible(HtmlGenericControl txtBox)
        {
        }

        protected void submitConfiguration(object sender, EventArgs e)
        {
            string[] tableInfo = coordinates.Value.Split(',');

            string identification = Request.QueryString["Rest_ID"];
            int Rest_ID = Convert.ToInt32(identification);

            using (SqlConnection con = new SqlConnection(connectingString))
            {
                con.Open();
                for (int i = 0; i < Convert.ToInt32(Session["totalTables"]) * 4; i++)
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Table] (Restaurant_ID, top_Coord, left_Coord, Table_ID, Capcity)" +
                        "VALUES (@Restaurant_ID, @top_Coord, @left_Coord, @Table_ID, @capacity)", con);
                    cmd.Parameters.AddWithValue("@Restaurant_ID", Rest_ID);
                    cmd.Parameters.AddWithValue("@top_Coord", tableInfo[i]);
                    cmd.Parameters.AddWithValue("@left_Coord", tableInfo[i + 1]);
                    cmd.Parameters.AddWithValue("@capacity", tableInfo[i + 2]);
                    cmd.Parameters.AddWithValue("@Table_ID", tableInfo[i + 3]);
                    i += 3;

                    cmd.ExecuteNonQuery();

                }

                con.Close();
            }

            Response.Redirect("reServe-HostessPage.aspx?Rest_ID=" + Rest_ID);
        }
    }
}
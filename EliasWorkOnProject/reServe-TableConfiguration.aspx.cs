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
                    myDiv.ID = "myDiv" + i;
                    myDiv.Attributes.Add("class", "table oval");

                    HtmlGenericControl txtBox = new HtmlGenericControl("input");
                    txtBox.ID = "txtBox" + i;
                    txtBox.Attributes.Add("class", "textBox");

                    HtmlGenericControl lbl = new HtmlGenericControl("label");
                    lbl.ID = "lbl" + i;
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

        protected void displaySomething(object sender, EventArgs e)
        {
            string[] positions = coordinates.Value.Split(',');

            using (SqlConnection con = new SqlConnection(connectingString))
            {

                con.Open();
                for (int i = 0; i < Convert.ToInt32(Session["totalTables"]) * 2; i ++)
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Table] (top_Coord, left_Coord, Table_ID)" +
                        "VALUES (@top_Coord, @left_Coord, @Table_ID)", con);
                    cmd.Parameters.AddWithValue("@top_Coord", positions[i]);
                    cmd.Parameters.AddWithValue("@left_Coord", positions[i + 1]);
                    cmd.Parameters.AddWithValue("@Table_ID", "myDIV");
                    i += 1;
                    
                    cmd.ExecuteNonQuery();

                }

                con.Close();
            }
        }
    }
}
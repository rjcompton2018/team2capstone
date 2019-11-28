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
            if(!IsPostBack)
            {
                //int totalTables = GetTableInt();
                int totalTables = Convert.ToInt32(Session["totalTables"]);

                for (int i = 0; i < totalTables; i ++)
                {
                    HtmlGenericControl myDiv = new HtmlGenericControl("div");
                    myDiv.ID = "myDiv" + i;
                    placeholder.Controls.Add(myDiv);
                }
            }
        }

        //protected int GetTableInt()
        //{
        //    string identification = Request.QueryString["Rest_ID"];
        //    int Rest_ID = Convert.ToInt32(identification);

        //    using (SqlConnection con = new SqlConnection(connectingString))
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("SELECT TotalTables FROM [dbo].[Restaurant] WHERE Restaurant_ID=" + Rest_ID, con);

        //        SqlDataReader reader = cmd.ExecuteReader();

        //        reader.Read();

        //        int totalTables = Convert.ToInt32(reader[0]);

        //        con.Close();

        //        return totalTables;
        //    }
        //}
    }
}
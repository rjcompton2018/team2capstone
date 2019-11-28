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
        //string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
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

                    placeholder.Controls.Add(myDiv);
                }
            }
        }

        protected void position ()
        {
            //string position = PositionField.Value;
            //string position = ;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ReServeAPI_v2._0
{
    public partial class restaurantConfiguration : System.Web.UI.Page
    {
        string connectingString = @"Data Source=141.210.25.5;User ID=reserve;Password=Test123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        string NameRestaurant2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection cnn = new SqlConnection(connectingString);
           
                string identification = Request.QueryString["ID"];
                int ID = Convert.ToInt32(identification);

                SqlCommand cmd = new SqlCommand("SELECT RestaurantName FROM [ResturantInformation] WHERE ([Id] = @value1)", cnn);
                cmd.Parameters.AddWithValue("@value1", ID);
                cnn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string nameRes = reader.GetString(0);
                NameRestaurant2 = nameRes;
                name.Value = NameRestaurant2;
                cnn.Close();
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            string identification = Request.QueryString["ID"];
            int ID = Convert.ToInt32(identification);

            string EmailValue = Convert.ToString(Session["test"]);
            string ResName = name.Value;
            string style = foodStyle.Value;
            string time = hours.Value;
            string restaurantCapacity = capacity.Value;
            string restaurantTables = tables.Value;
            string chair;
            string booth;
            string bars;
            if (chairs.Checked == true)
            {
                chair = "Yes";
            }
            else
            {
                chair = "No";
            }
            if (booths.Checked == true)
            {
                booth = "Yes";
            }
            else
            {
                booth = "No";
            }
            if (bar.Checked == true)
            {
                bars = "Yes";
            }
            else
            {
                bars = "No";
            }

            string availDelievery = Request.Form["delivery"].ToString();

            string restAddress = address.Value;
            string phone = number.Value;
            string distance = distancePlaceholder.Value;
            string rate = ratingPlaceholder.Value;
            string descripe = description.Value;
            string priceRange = Request.Form["cost"].ToString();
            string veg = Request.Form["vegan"].ToString();
            string cateringOption = Request.Form["catering"].ToString();
            string outdoor = Request.Form["outdoor"].ToString();
            string concern = Request.Form["outdoor"].ToString();
            string ramp;
            string childreen;
            if (ramps.Checked == true)
            {
                ramp = "Yes";
            }
            else
            {
                ramp = "No";
            }
            if (child.Checked == true)
            {
                childreen = "Yes";
            }
            else
            {
                childreen = "No";
            }
            SqlConnection cnn = new SqlConnection(connectingString);
            SqlCommand cmd = cnn.CreateCommand();
            
            SqlCommand cm = new SqlCommand("SELECT COUNT(*) FROM [Restaurant] WHERE ([PK] = @value1)", cnn);
            cm.Parameters.AddWithValue("@value1", ID);
            cnn.Open();
            int UserExist = (int)cm.ExecuteScalar();
            if (UserExist > 0)
            {
            
            cmd.CommandText = "Update Restaurant set PK = @ID, Name = @ResName, FoodStyle = @style, Hours = @time, Capacity = @restaurantCapacity, TotalTables = @restaurantTables, Chairs =@chair, Booths = @booth, Bar = @bars, Delivery = @availDelievery, Address = @restAddress, PhoneNumber = @phone, DistanceAway = @distance, RatingPlaceHolder = @rate, Description = @descripe, PriceRange = @priceRange, Vegan = @veg, Catering = @cateringOption, Outdoor = @outdoor, Ramps = @ramp, Children = @childreen";
            }
            else
            {
                cmd.CommandText = "INSERT INTO Restaurant (PK, Name, FoodStyle, Hours, Capacity, TotalTables, Chairs, Booths, Bar, Delivery, Address, PhoneNumber, DistanceAway, RatingPlaceHolder, Description, PriceRange, Vegan, Catering, Outdoor, Ramps, Children) VALUES ( @ID, @ResName, @style, @time, @restaurantCapacity, @restaurantTables, @chair, @booth, @bars, @availDelievery, @restAddress, @phone, @distance, @rate, @descripe, @priceRange, @veg, @cateringOption, @outdoor, @ramp, @childreen)";

            }
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
            cmd.Parameters.Add("@time", SqlDbType.NVarChar).Value = time;
            cmd.Parameters.Add("@ResName", SqlDbType.NVarChar).Value = NameRestaurant2;
            cmd.Parameters.Add("@style", SqlDbType.NVarChar).Value = style;
            cmd.Parameters.Add("@restaurantCapacity", SqlDbType.NVarChar).Value = restaurantCapacity;
            cmd.Parameters.Add("@restaurantTables", SqlDbType.NVarChar).Value = restaurantTables;
            cmd.Parameters.Add("@chair", SqlDbType.NVarChar).Value = chair;
            cmd.Parameters.Add("@booth", SqlDbType.NVarChar).Value = booth;
            cmd.Parameters.Add("@bars", SqlDbType.NVarChar).Value = bars;
            cmd.Parameters.Add("@availDelievery", SqlDbType.NVarChar).Value = availDelievery;
            cmd.Parameters.Add("@restAddress", SqlDbType.NVarChar).Value = restAddress;
            cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
            cmd.Parameters.Add("@distance", SqlDbType.NVarChar).Value = distance;
            cmd.Parameters.Add("@rate", SqlDbType.NVarChar).Value = rate;
            cmd.Parameters.Add("@descripe", SqlDbType.NVarChar).Value = descripe;
            cmd.Parameters.Add("@priceRange", SqlDbType.NVarChar).Value = priceRange;
            cmd.Parameters.Add("@veg", SqlDbType.NVarChar).Value = veg;
            cmd.Parameters.Add("@cateringOption", SqlDbType.NVarChar).Value = cateringOption;
            cmd.Parameters.Add("@outdoor", SqlDbType.NVarChar).Value = outdoor;
            cmd.Parameters.Add("@ramp", SqlDbType.NVarChar).Value = ramp;
            cmd.Parameters.Add("@childreen", SqlDbType.NVarChar).Value = childreen;
           
            cmd.ExecuteNonQuery();
            cnn.Close();


            Response.Redirect("RestaurantMainPage.aspx?ID=" + ID);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace WebApplication1
{
    
    public partial class restaurantConfiguration : sqlPage
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }
        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
           
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
            
            getReader("SELECT ID FROM Restaurant WHERE Email=@value1", EmailValue);
            {
                int ID = reader.GetInt32(1);
                insertData("INSERT INTO resturantDetails(ID, Name, FoodStyle, Hours, Capacity, Tables, Chairs, Booths, Bar, Delievery, Address, Number, DistancePlaceholder, RatingPlaceholder, Description, PriceRange, Vegan, CateringOption, Outdoor, Concerns ) VALUES( ID, ResName, style, time, restaurantCapacity, restaurantTables, chair, booth, bars, restAddress, phone, distance, rate, descripe, priceRange, priceRange, veg, cateringOption, outdoor, concern, ramp, childreen)");
            }
           
           
          
            Console.WriteLine("Hello world");
        }

       
    }
}
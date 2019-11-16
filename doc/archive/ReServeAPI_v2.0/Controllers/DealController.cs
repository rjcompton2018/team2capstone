using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ReServeAPI_v2._0.Controllers
{
    public class DealController : ApiController
    {
        public IEnumerable<Deal> Get()
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.ToList();
            }
        }

        public Deal Get_Deal_ID(int Deal_ID)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.FirstOrDefault(e => e.Deal_ID == Deal_ID);
            }
        }

        public Deal Get_Description(string Description)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.FirstOrDefault(e => e.Description == Description);
            }
        }

        public Deal Get_Start_Date(DateTime Start_Time)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.FirstOrDefault(e => e.Start_Date == Start_Time);
            }
        }
        public Deal Get_End_Date(DateTime End_Date)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.FirstOrDefault(e => e.End_Date == End_Date);
            }
        }
        // get restaurant id from restaurant table instead?
        public Deal Get_Restaurant_ID(int Restaurant_ID)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Deals.FirstOrDefault(e => e.Restaurant_ID == Restaurant_ID);
            }
        }
    }
}

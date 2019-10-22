using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ReServeAPI.Controllers
{
    public class EmployeeController : ApiController
    {
        public IEnumerable<Employee> Get ()
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Employees.ToList();
            }
        }

        public Employee Get_Employee_ID (int Employee_ID)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Employees.FirstOrDefault(e => e.Employee_ID == Employee_ID);
            }
        }

        public Employee Get_User_ID(int User_ID)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Employees.FirstOrDefault(e => e.User_ID == User_ID);
            }
        }

        public Employee Get_Restaurant_ID(int Restaurant_ID)
        {
            using (ReServeDBEntities entities = new ReServeDBEntities())
            {
                return entities.Employees.FirstOrDefault(e => e.Restaurant_ID == Restaurant_ID);
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ControlVehicular.Controllers;
using ControlVehicular.Model;
using System.Web.Services;

namespace ControlVehicular.Views
{
    public partial class CarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string javascript = "dataTable()";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", javascript, true);
        }
        [WebMethod]
        public static List<CARS_Cars> GetCars()
        {
            var data = CarController.ListCars();
            return data;
        }
    }
}
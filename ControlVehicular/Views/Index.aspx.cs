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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string javascript = "dataTableIndex()";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", javascript, true);
        }
        [WebMethod]
        public static List<View_LastsLoans> GetLastLoan()
        {
            var data = CarController.ListLastLoans();
            return data;
        }
        [WebMethod]
        public static List<View_ServicesMoreSixMonths> GetNeedService()
        {
            var data = CarController.ListServiceMoreSixMonths();
            return data;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;

namespace ControlVehicular.Models
{
    public class ReportTypesModel
    {
        //list reportTypes
        public static List<CARS_ReportTypes> ListReportTypes()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<CARS_ReportTypes> result = (from reportType in model.CARS_ReportTypes
                                                 select reportType).ToList();
                return result;
            }
        }
        //search report types by id
        public static CARS_ReportTypes SearchReportTypesById(int id)
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                var result = (from reportType in model.CARS_ReportTypes
                              where reportType.Id == id
                              select reportType).Single();
                return result;
            }
        }
    }
}
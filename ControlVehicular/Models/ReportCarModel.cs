using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;

namespace ControlVehicular.Models
{
    public class ReportCarModel
    {
        //create car report
        public static void CreateCarReport(CARS_ReportsCar newCarReport)
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                model.CARS_ReportsCar.Add(newCarReport);
                model.SaveChanges();
            }
        }
        //list car reports
        public static List<CARS_ReportsCar> ListCarReports()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<CARS_ReportsCar> result = (from carReport in model.CARS_ReportsCar
                                                select carReport).ToList();
                return result;
            }
        }
        //search car reports by id 
        public static CARS_ReportsCar SearchCarReportById(int id)
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                var result = (from carReport in model.CARS_ReportsCar
                              where carReport.Id == id
                              select carReport).Single();
                return result;
            }
        }
    }
}
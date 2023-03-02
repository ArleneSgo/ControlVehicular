using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;
using ControlVehicular.Models;

namespace ControlVehicular.Controllers
{
    public class ReportTypesController
    {
        //list report types
        public static List<CARS_ReportTypes> ListReportsTypes()
        {
            try
            {
                return ReportTypesModel.ListReportTypes();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al buscar los tipos de reporte: " + ex.Message.ToString());
            }
        }
        //search report types by id
        public static CARS_ReportTypes SearchReportTypesById(int id)
        {
            try
            {
                return ReportTypesModel.SearchReportTypesById(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al buscar los tipos de reporte por id: " + ex.Message.ToString());
            }
        }
    }
}
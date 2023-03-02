using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;
using ControlVehicular.Models;

namespace ControlVehicular.Controllers
{
    public class ReportCarController
    {
        public static void CreateCarReport(CARS_ReportsCar newCarReport)
        {
            try
            {   ///Verificar que no esten vacios los campos requeridos
                if (newCarReport.CarId != null && newCarReport.ReportTypeId != null)
                {
                    ReportCarModel.CreateCarReport(newCarReport);
                }
                else
                {
                    throw new Exception("Hubo un error con los campos requeridos al crear un reporte");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al crear un reporte: " + ex.Message.ToString());
            }
        }

        public static List<CARS_ReportsCar> ListCarReports()
        {
            try
            {  ///Devuelve la lista de reportes
                return ReportCarModel.ListCarReports();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al buscar los reportes: " + ex.Message.ToString());
            }
        }

        public static CARS_ReportsCar SearchCarReportById(int id)
        {
            try
            {   ///Devuelve el reporte perteneciente al ID buscado
                return ReportCarModel.SearchCarReportById(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al buscar los reportes por id: " + ex.Message.ToString());
            }
        }
    }
}
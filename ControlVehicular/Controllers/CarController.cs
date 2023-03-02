using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;
using ControlVehicular.Models;

namespace ControlVehicular.Controllers
{
    public class CarController
    {
        //create car
        public static void CreateCar(CARS_Cars newCar)
        {
            try
            {
                ///Verificar que no esten vacios los campos requeridos
                CarModel.CreateCar(newCar);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de crear vehiculo: " + ex.Message.ToString());
            }
        }
        //list car
        public static List<CARS_Cars> ListCars()
        {
            try
            {
                return CarModel.ListCars();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de buscar vehiculos: " + ex.Message.ToString());
            }
        }
        //search car by id
        public static CARS_Cars SearchCarById(int id)
        {
            try
            {
                return CarModel.SearchCarById(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de buscar vehiculo: " + ex.Message.ToString());
            }
        }
        public static void EditCar(CARS_Cars carModified)
        {
            try
            {   ///Verifica que sea un vehiculo valido
                if (carModified.Id > 0)
                {
                    CarModel.EditCar(carModified);
                }
                else
                {
                    throw new Exception("Vehiculo no encontrado");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de modificar vehiculo: " + ex.Message.ToString());
            }
        }
        //List car last loans
        public static List<View_LastsLoans> ListLastLoans()
        {
            try
            {
                return CarModel.ListLastLoans();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de buscar ultimos prestamos: " + ex.Message.ToString());
            }
        }
        //List  car loans
        public static List<View_CarLoans> ListCarLoans()
        {
            try
            {
                return CarModel.ListCarLoans();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de buscar prestamos: " + ex.Message.ToString());
            }
        }
        //list cars when last service is more 6 months
        public static List<View_ServicesMoreSixMonths> ListServiceMoreSixMonths()
        {
            try
            {
                return CarModel.ListServiceMoreSixMonths();
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo de buscar vehiculos con necesidad de servicio: " + ex.Message.ToString());
            }
        }
    }
}
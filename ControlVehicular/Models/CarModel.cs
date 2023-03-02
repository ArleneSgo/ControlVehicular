using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;

namespace ControlVehicular.Models
{
    public class CarModel
    {
        //create car
        public static void CreateCar(CARS_Cars newCar)
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                model.CARS_Cars.Add(newCar);
                model.SaveChanges();
            }
        }
        //list car
        public static List<CARS_Cars> ListCars()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<CARS_Cars> result = (from car in model.CARS_Cars
                                          select car).ToList();
                return result;
            }
        }
        //search car by id
        public static CARS_Cars SearchCarById(int id)
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                var result = (from car in model.CARS_Cars
                              where car.Id == id
                              select car).Single();
                return result;
            }
        }
        //edit car 
        public static void EditCar(CARS_Cars carModified)
        {   //Busca y modifica el vehiculo
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                CARS_Cars car = model.CARS_Cars.Find(carModified.Id);
                car.ItemCode = carModified.ItemCode;
                car.Model = carModified.Model;
                car.Department = carModified.Department;
                car.Assigned = carModified.Assigned;
                car.LicencePlate = carModified.LicencePlate;
                car.Mark = carModified.Mark;
                car.Year = carModified.Year;
                car.CirculationCard = carModified.CirculationCard;
                car.InsuranceCompany = carModified.InsuranceCompany;
                car.SecurityNumber = carModified.SecurityNumber;
                car.RegisteredIn = carModified.RegisteredIn;
                car.Available = carModified.Available;
                car.CreationDate = carModified.CreationDate;
                car.ModificationDate = carModified.ModificationDate;
                model.SaveChanges();
            }
        }
        //List car last loans
        public static List<View_LastsLoans> ListLastLoans()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<View_LastsLoans> result = (from car in model.View_LastsLoans
                                                select car).ToList();
                return result;
            }
        }
        //List car loans
        public static List<View_CarLoans> ListCarLoans()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<View_CarLoans> result = (from car in model.View_CarLoans
                                              select car).ToList();
                return result;
            }
        }
        //list cars when last service is more 6 months
        public static List<View_ServicesMoreSixMonths> ListServiceMoreSixMonths()
        {
            using (var model = new CONTROL_VEHICULAR_Entities())
            {
                List<View_ServicesMoreSixMonths> result = (from car in model.View_ServicesMoreSixMonths
                                                           select car).ToList();
                return result;
            }
        }
    }
}
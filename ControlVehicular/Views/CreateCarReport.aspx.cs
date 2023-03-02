using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ControlVehicular.Controllers;
using ControlVehicular.Model;

namespace ControlVehicular.Views
{
    public partial class CreateCarReport : System.Web.UI.Page
    {
        int carId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //poner date con fecha today
                inputDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
                inputNextService.Value = DateTime.Now.ToString("yyyy-MM-dd");
                //consultar report type y poner en el select
                //loadReportTypes();

                //consultar datos del carro
                carId = Convert.ToInt32(Request.QueryString["ID"]);
                ///Despliega en las casillas los datos del vehiculo registrados en la base de datos
                loadInfoCar();

                //configuracion para reporte type 'prestamo o viaje(fin)'
                //cargar reporte anterior
                var reportType = Convert.ToInt32(Request.QueryString["TYPE"]);
                if (reportType == 2) loadPreviousReport();
            }
        }
        protected void loadInfoCar()
        {
            CARS_Cars car = CarController.SearchCarById(carId);
            inputAssigned.Value = car.Assigned;
            inputMark.Value = car.Mark;
            inputModel.Value = car.Model;
            inputYear.Value = car.Year;
            inputLicencePlate.Value = car.LicencePlate;
            inputCirculationCard.Value = car.CirculationCard;
            inputInsuranceCompany.Value = car.InsuranceCompany;
            inputSecurityNumber.Value = car.SecurityNumber;
        }
        protected void loadReportTypes()
        {
            //List<CARS_ReportTypes> reportTypes = ReportTypesController.ListReportsTypes();
            //foreach (CARS_ReportTypes type in reportTypes)
            //{

            //}
        }
        protected void loadPreviousReport()
        {
            var lastLoan = CarController.ListLastLoans();
            var carLoans = CarController.ListCarLoans();
            var idReport = 0;
            //buscar el id del reporte
            foreach (var i in lastLoan)
            {
                if (carId == i.Id)
                {
                    foreach (var j in carLoans)
                    {
                        if (i.Expr1 == j.Date) idReport = j.ReportId;
                    }
                }
            }
            //desplegar info de reporte anterior
            if (idReport != 0)
            {
                var report = ReportCarController.SearchCarReportById(idReport);
                inputType.SelectedIndex = 2;
                switchLights.Checked = Convert.ToBoolean(report.Lights);
                switchQuarterLights.Checked = Convert.ToBoolean(report.QuarterLights);
                switchAntenna.Checked = Convert.ToBoolean(report.Antenna);
                switchRightMirror.Checked = Convert.ToBoolean(report.RightMirror);
                switchLeftMirror.Checked = Convert.ToBoolean(report.LeftMirror);
                switchCrystals.Checked = Convert.ToBoolean(report.Crystals);
                switchEmblem.Checked = Convert.ToBoolean(report.Emblem);
                switchTires.Checked = Convert.ToBoolean(report.Tires);
                switchCaps.Checked = Convert.ToBoolean(report.Caps);
                switchViews.Checked = Convert.ToBoolean(report.Views);
                switchGasolineStopper.Checked = Convert.ToBoolean(report.GasolineStopper);
                switchDents.Checked = Convert.ToBoolean(report.Dents);
                switchHorn.Checked = Convert.ToBoolean(report.Horn);

                switchDashboardInstruments.Checked = Convert.ToBoolean(report.DashboardInstruments);
                switchAc.Checked = Convert.ToBoolean(report.Ac);
                switchWindshield.Checked = Convert.ToBoolean(report.Windshield);
                switchRadio.Checked = Convert.ToBoolean(report.Radio);
                switchSpeakers.Checked = Convert.ToBoolean(report.Speakers);
                switchLighter.Checked = Convert.ToBoolean(report.Lighter);
                switchRearviewMirror.Checked = Convert.ToBoolean(report.RearviewMirror);
                switchAshtray.Checked = Convert.ToBoolean(report.Ashtray);
                switchSeatBelts.Checked = Convert.ToBoolean(report.SeatBelts);
                switchInteriorButtons.Checked = Convert.ToBoolean(report.InteriorButtons);
                switchInteriorHandles.Checked = Convert.ToBoolean(report.InteriorHandles);
                switchMats.Checked = Convert.ToBoolean(report.Mats);
                switchCarTrim.Checked = Convert.ToBoolean(report.CarTrim);

                switchJack.Checked = Convert.ToBoolean(report.Jack);
                switchJackHandle.Checked = Convert.ToBoolean(report.JackHandle);
                switchWheelWrench.Checked = Convert.ToBoolean(report.WheelWrench);
                switchToolKit.Checked = Convert.ToBoolean(report.ToolKit);
                switchReflectingTriangle.Checked = Convert.ToBoolean(report.ReflectingTriangle);
                switchSpareTire.Checked = Convert.ToBoolean(report.SpareTire);
                switchFireExtinguisher.Checked = Convert.ToBoolean(report.FireExtinguisher);

                inputGasTank.Value = report.GasTank;
                inputObservations.Value = report.Observations;
                inputMileage.Value = report.Mileage;
                //inputNextService.Value =  report.NextService;
                inputLifePilotFrontTire.Value = report.LifePilotFrontTire;
                inputObservPilotFrontTire.Value = report.ObservPilotFrontTire;
                inputLifePassengerFrontTire.Value = report.LifePassengerFrontTire;
                inputObservPassengerFrontTire.Value = report.ObservPassengerFrontTire;
                inputLifePilotRearTire.Value = report.LifePilotRearTire;
                inputObservPilotRearTire.Value = report.ObservPilotRearTire;
                inputLifePassengerRearTire.Value = report.LifePassengerRearTire;
                inputObservnPassengerRearTire.Value = report.ObservnPassengerRearTire;
                inputLifeExtraTire.Value = report.LifeExtraTire;
                inputObservExtraTire.Value = report.ObservExtraTire;
                inputGeneralCondition.Value = report.GeneralCondition;
                inputConditionsTravel.Value = report.ConditionsTravel;
                //PhotoEvidence
            }
        }
        protected void btnCrear_Click(object sender, EventArgs e)
        {
            try
            {
                var newCarReport = new CARS_ReportsCar()
                {
                    CarId = Convert.ToInt32(Request.QueryString["ID"]),
                    ReportTypeId = inputType.Value != "0" ? Convert.ToInt32(inputType.Value) : 0,
                    Date = Convert.ToDateTime(inputDate.Value),
                    Lights = switchLights.Checked,
                    QuarterLights = switchQuarterLights.Checked,
                    Antenna = switchAntenna.Checked,
                    RightMirror = switchRightMirror.Checked,
                    LeftMirror = switchLeftMirror.Checked,
                    Crystals = switchCrystals.Checked,
                    Emblem = switchEmblem.Checked,
                    Tires = switchTires.Checked,
                    Caps = switchCaps.Checked,
                    Views = switchViews.Checked,
                    GasolineStopper = switchGasolineStopper.Checked,
                    Dents = switchDents.Checked,
                    Horn = switchHorn.Checked,

                    DashboardInstruments = switchDashboardInstruments.Checked,
                    Ac = switchAc.Checked,
                    Windshield = switchWindshield.Checked,
                    Radio = switchRadio.Checked,
                    Speakers = switchSpeakers.Checked,
                    Lighter = switchLighter.Checked,
                    RearviewMirror = switchRearviewMirror.Checked,
                    Ashtray = switchAshtray.Checked,
                    SeatBelts = switchSeatBelts.Checked,
                    InteriorButtons = switchInteriorButtons.Checked,
                    InteriorHandles = switchInteriorHandles.Checked,
                    Mats = switchMats.Checked,
                    CarTrim = switchCarTrim.Checked,

                    Jack = switchJack.Checked,
                    JackHandle = switchJackHandle.Checked,
                    WheelWrench = switchWheelWrench.Checked,
                    ToolKit = switchToolKit.Checked,
                    ReflectingTriangle = switchReflectingTriangle.Checked,
                    SpareTire = switchSpareTire.Checked,
                    FireExtinguisher = switchFireExtinguisher.Checked,

                    GasTank = inputGasTank.Value != "0" ? inputGasTank.Value : null,
                    Observations = inputObservations.Value,
                    Mileage = inputMileage.Value,
                    NextService = Convert.ToDateTime(inputNextService.Value),
                    LifePilotFrontTire = inputLifePilotFrontTire.Value,
                    ObservPilotFrontTire = inputObservPilotFrontTire.Value,
                    LifePassengerFrontTire = inputLifePassengerFrontTire.Value,
                    ObservPassengerFrontTire = inputObservPassengerFrontTire.Value,
                    LifePilotRearTire = inputLifePilotRearTire.Value,
                    ObservPilotRearTire = inputObservPilotRearTire.Value,
                    LifePassengerRearTire = inputLifePassengerRearTire.Value,
                    ObservnPassengerRearTire = inputObservnPassengerRearTire.Value,
                    LifeExtraTire = inputLifeExtraTire.Value,
                    ObservExtraTire = inputObservExtraTire.Value,
                    GeneralCondition = inputGeneralCondition.Value != "0" ? inputGeneralCondition.Value : null,
                    ConditionsTravel = inputConditionsTravel.Value != "0" ? inputConditionsTravel.Value : null,
                    //PhotoEvidence
                    CreationDate = DateTime.Now,
                    ModificationDate = DateTime.Now,

                };
                //hacer if de poner no disponible cuando es reporte de prestamo
                carId = Convert.ToInt32(Request.QueryString["ID"]);
                changeAvailableOption(carId);

                //Crear reporte guardar en bd
                ReportCarController.CreateCarReport(newCarReport);

                //alerta de reporte creado
                mensaje.Visible = true;
                btnCrear.Enabled = false;
                cancelar.Visible = false;
                cancelar2.Visible = true;
            }
            catch (Exception ex)
            {
                var datos = "<script> alert('" + ex.Message + "') </script>";
                Response.Write(datos);
            }
        }
        protected void changeAvailableOption(int id)
        {
            CARS_Cars car = CarController.SearchCarById(id);
            if (Convert.ToInt32(inputType.Value) == 1)
            {
                car.Available = false;
            }
            else if (Convert.ToInt32(inputType.Value) == 2)
            {
                car.Available = true;
            }

            car.ModificationDate = DateTime.Now;
            CarController.EditCar(car);
        }
    }
}
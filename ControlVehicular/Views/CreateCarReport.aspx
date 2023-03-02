<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateCarReport.aspx.cs" Inherits="ControlVehicular.Views.CreateCarReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pagetitle">
        <h1>Control Vehicular UGRS</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Index.aspx">Inicio</a></li>
                <li class="breadcrumb-item"><a href="#">Nuevo Reporte</a></li>        
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <section class="section">
        <div class="row col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="pt-4 pb-2">
                        <h5 class="card-title text-center pb-0 fs-4">Crear nuevo reporte vehicular</h5>
                    </div>
                    <form>
                        <div class="row">
                            <div id="mensaje" visible="false" runat="server" class="alert alert-success mt-1" role="alert">Guardado</div>
                            <div class="col-md-3 col-sm-4 col-7 mb-3">
                                <div class="form-floating">
                                    <input type="date" class="form-control" id="inputDate" runat="server"/>
                                    <%--<asp:TextBox ID="inputDate" class="form-control"  runat="server" TextMode="Date"></asp:TextBox>--%>
                                    <label for="inputDate">Fecha:</label>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-12 mb-3">
                                <div class="form-floating">
                                    <select class="form-select" id="inputType" runat="server" aria-label="">
                                        <option value="0" selected>Seleccionar</option>
                                        <option value="1">Préstamo o viaje (inicio)</option>
                                        <option value="2">Préstamo o viaje (fin)</option>
                                        <option value="3">Servicio</option>
                                        <option value="4">Reparación</option>
                                    </select>
                                    <label for="inputType">Tipo de reporte</label>
                                </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-12 mb-3">
                                <div class="form-floating">
                                    <input runat="server" type="text" class="form-control" id="inputAssigned" placeholder="Asignado a:" runat="server"/>
                                    <label for="inputAssigned">Asignado a:</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputMark" placeholder="Marca:" runat="server"/>
                                    <label for="inputMarka">Marca:</label>
                                </div>
                            </div>
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputModel" placeholder="Módelo:" runat="server"/>
                                    <label for="inputModel">Módelo:</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2 col-6 mb-3">
                                <div class="form-floating">
                                    <input type="number" class="form-control" id="inputYear" placeholder="Año:" runat="server"/>
                                    <label for="inputYear">Año:</label>
                                </div>
                            </div>
                            <div class="col-sm-5 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputLicencePlate" placeholder="Placas:" runat="server"/>
                                    <label for="inputLicencePlate">Placas:</label>
                                </div>
                            </div>
                            <div class="col-sm-5 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputCirculationCard" placeholder="Tarjeta Circulación:" runat="server"/>
                                    <label for="inputCirculationCard">Tarjeta Circulación:</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputInsuranceCompany" placeholder="Compañía de Seguro:" runat="server"/>
                                    <label for="inputInsuranceCompany">Compañía de Seguro:</label>
                                </div>
                            </div>
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputSecurityNumber" placeholder="Número de Seguro:" runat="server"/>
                                    <label for="inputSecurityNumber">Número de Seguro:</label>
                                </div>
                            </div>
                        </div>
                        <!-- Default Tabs -->
                        <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="exterior-tab" data-bs-toggle="tab" data-bs-target="#exterior" type="button" role="tab" aria-controls="exterior" aria-selected="true">Exteriores</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="interior-tab" data-bs-toggle="tab" data-bs-target="#interior" type="button" role="tab" aria-controls="interior" aria-selected="false">Interiores</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="accesory-tab" data-bs-toggle="tab" data-bs-target="#accesory" type="button" role="tab" aria-controls="accesory" aria-selected="false">Accesorios</button>
                            </li>
                        </ul>
                        <div class="tab-content pt-2" id="myTabContent">
                            <div class="tab-pane fade show active" id="exterior" role="tabpanel" aria-labelledby="exterior-tab">
                                <div class="row">
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchLights">Luces</label>
                                            <input class="form-check-input" type="checkbox" id="switchLights" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchQuarterLights">1/4 Luces</label>
                                            <input class="form-check-input" type="checkbox" id="switchQuarterLights" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchAntenna">Antena</label>
                                            <input class="form-check-input" type="checkbox" id="switchAntenna" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchRightMirror">Espejo Derecho</label>
                                            <input class="form-check-input" type="checkbox" id="switchRightMirror" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchLeftMirror">Espejo Izquierdo</label>
                                            <input class="form-check-input" type="checkbox" id="switchLeftMirror" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchCrystals">Cristales</label>
                                            <input class="form-check-input" type="checkbox" id="switchCrystals" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchEmblem">Emblema</label>
                                            <input class="form-check-input" type="checkbox" id="switchEmblem" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchTires">4 llantas</label>
                                            <input class="form-check-input" type="checkbox" id="switchTires" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchCaps">Copas/ Tapones</label>
                                            <input class="form-check-input" type="checkbox" id="switchCaps" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchViews">Vistas</label>
                                            <input class="form-check-input" type="checkbox" id="switchViews" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchGasolineStopper">Tapón Gasolina</label>
                                            <input class="form-check-input" type="checkbox" id="switchGasolineStopper" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchDents">Abolladuras</label>
                                            <input class="form-check-input" type="checkbox" id="switchDents" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchHorn">Claxón</label>
                                            <input class="form-check-input" type="checkbox" id="switchHorn" runat="server"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="interior" role="tabpanel" aria-labelledby="interior-tab">
                                <div class="row">
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchDashboardInstruments">Instrumentos de tablero</label>
                                            <input class="form-check-input" type="checkbox" id="switchDashboardInstruments" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchAc">A/ C</label>
                                            <input class="form-check-input" type="checkbox" id="switchAc" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchWindshield">Parabrisas</label>
                                            <input class="form-check-input" type="checkbox" id="switchWindshield" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchRadio">Radio</label>
                                            <input class="form-check-input" type="checkbox" id="switchRadio" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchSpeakers">Bocinas</label>
                                            <input class="form-check-input" type="checkbox" id="switchSpeakers" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchLighter">Encendedor</label>
                                            <input class="form-check-input" type="checkbox" id="switchLighter" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchRearviewMirror">Retrovisor</label>
                                            <input class="form-check-input" type="checkbox" id="switchRearviewMirror" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchAshtray">Ceniceros</label>
                                            <input class="form-check-input" type="checkbox" id="switchAshtray" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchSeatBelts">Cinturones</label>
                                            <input class="form-check-input" type="checkbox" id="switchSeatBelts" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchInteriorButtons">Botones de interiores</label>
                                            <input class="form-check-input" type="checkbox" id="switchInteriorButtons" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchInteriorHandles">Manijas de interiores</label>
                                            <input class="form-check-input" type="checkbox" id="switchInteriorHandles" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchMats">Tapetes</label>
                                            <input class="form-check-input" type="checkbox" id="switchMats" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchCarTrim">Vestiduras</label>
                                            <input class="form-check-input" type="checkbox" id="switchCarTrim" runat="server"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="accesory" role="tabpanel" aria-labelledby="accesory-tab">
                                <div class="row">
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchJack">Gato</label>
                                            <input class="form-check-input" type="checkbox" id="switchJack" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchJackHandle">Maneral de gato</label>
                                            <input class="form-check-input" type="checkbox" id="switchJackHandle" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 ps-3 pb-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchWheelWrench">Llave de ruedas</label>
                                            <input class="form-check-input" type="checkbox" id="switchWheelWrench" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchToolKite">Estuche herramientas</label>
                                            <input class="form-check-input" type="checkbox" id="switchToolKit" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchReflectingTriangle">Fantasma</label>
                                            <input class="form-check-input" type="checkbox" id="switchReflectingTriangle" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchSpareTire">Llanta refacción</label>
                                            <input class="form-check-input" type="checkbox" id="switchSpareTire" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 col-12 pb-3 ps-3">
                                        <div class="form-check form-switch">
                                            <label class="form-check-label" for="switchFireExtinguisher">Extinguidor</label>
                                            <input class="form-check-input" type="checkbox" id="switchFireExtinguisher" runat="server"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Default Tabs -->
                        <div class="form-floating mb-3">
                            <select class="form-select" id="inputGasTank" aria-label="Floating label select example" runat="server">
                                <option value="0" selected>Seleccionar</option>
                                <option value="Tanque vacío">Tanque vacío</option>
                                <option value="1/4 de tanque">1/4 de tanque</option>
                                <option value="1/2 tanque">1/2 tanque</option>
                                <option value="3/4 de tanque">3/4 de tanque</option>
                                <option value="Tanque lleno">Tanque lleno</option>
                            </select>
                            <label for="inputGasTank">Tanque de Gasolina</label>
                        </div>
                        <div class="form-floating mb-3">
                            <textarea class="form-control" placeholder="Leave a comment here" id="inputObservations" style="height: 100px;" runat="server"></textarea>
                            <label for="inputObservations">Observaciones</label>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="inputMileage" placeholder="Kilometraje:" runat="server"/>
                                    <label for="inputMileage">Kilometraje:</label>
                                </div>
                            </div>
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="date" class="form-control" id="inputNextService" placeholder="Próximo Servicio:" runat="server"/>
                                    <label for="inputNextService">Próximo Servicio:</label>
                                </div>
                            </div>
                        </div>
                        <h5 class="card-title">Llantas:</h5>
                        <div class="row">
                            <div class="input-group" >
                                <span class="col-sm-3 col-12 input-group-text">Delantera piloto</span>
                                <div class="col-sm-3 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderRight borderLeft form-control" id="inputLifePilotFrontTire" placeholder="% Vida útil:" runat="server"/>
                                        <label for="inputLifePilotFrontTire">% Vida útil:</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderLeft form-control" id="inputObservPilotFrontTire" placeholder="Observación:" runat="server"/>
                                        <label for="inputObservPilotFrontTire">Observación:</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group" >
                                <span class="col-sm-3 col-12 input-group-text">Delantera copiloto</span>
                                <div class="col-sm-3 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderRight borderLeft form-control" id="inputLifePassengerFrontTire" placeholder="% Vida útil:" runat="server"/>
                                        <label for="inputLifePassengerFrontTire">% Vida útil:</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderLeft form-control" id="inputObservPassengerFrontTire" placeholder="Observación:" runat="server"/>
                                        <label for="inputObservPassengerFrontTire">Observación:</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group" >
                                <span class="col-sm-3 col-12 input-group-text">Trasera piloto</span>
                                <div class="col-sm-3 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderRight borderLeft form-control" id="inputLifePilotRearTire" placeholder="% Vida útil:" runat="server"/>
                                        <label for="inputLifePilotRearTire">% Vida útil:</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderLeft form-control" id="inputObservPilotRearTire" placeholder="Observación:" runat="server"/>
                                        <label for="inputObservPilotRearTire">Observación:</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group" >
                                <span class="col-sm-3 col-12 input-group-text">Trasera copiloto</span>
                                <div class="col-sm-3 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderRight borderLeft form-control" id="inputLifePassengerRearTire" placeholder="% Vida útil:" runat="server"/>
                                        <label for="inputLifePassengerRearTire">% Vida útil:</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderLeft form-control" id="inputObservnPassengerRearTire" placeholder="Observación:" runat="server"/>
                                        <label for="inputObservnPassengerRearTire">Observación:</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group" >
                                <span class="col-sm-3 col-12 input-group-text">Extra</span>
                                <div class="col-sm-3 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderRight borderLeft form-control" id="inputLifeExtraTire" placeholder="% Vida útil:" runat="server"/>
                                        <label for="inputLifeExtraTire">% Vida útil:</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12">
                                    <div class="form-floating">
                                        <input type="text" class="borderLeft form-control" id="inputObservExtraTire" placeholder="Observación:" runat="server"/>
                                        <label for="inputObservExtraTire">Observación:</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating mt-3">
                                    <select class="form-select" id="inputGeneralCondition" aria-label="" runat="server">
                                        <option value="0" selected>Seleccionar</option>
                                        <option value="Excelente">Excelente</option>
                                        <option value="Buena">Buena</option>
                                        <option value="Regular">Regular</option>
                                        <option value="Mala">Mala</option>
                                    </select>
                                    <label for="inputGeneralCondition">Condición general</label>
                                </div>
                            </div>
                            <div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating mt-3">
                                    <select class="form-select" id="inputConditionsTravel" aria-label="" runat="server">
                                        <option value="0" selected>Seleccionar</option>
                                        <option value="Si">Si</option>
                                        <option value="No">No</option>
                                    </select>
                                    <label for="inputConditionsTravel">Condiciones para viajar</label>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="wrapper">
                            <div class="form-floating mt-3">
                                <div id="container-input" class="col-sm-6 col-12 mb-3">
			                        <div class="wrap-file">
                                        <label class="evidencePhoto">Fotos de evidencia</label>
				                        <div class="content-icon-camera">
					                        <input type="file" id="file" name="file[]" accept="image/*" multiple />
					                        <div class="icon-camera"></div>
				                        </div>
				                        <div id="preview-images"></div>
			                        </div>
			                        <%--<button id="publish">Publicar</button>--%>
		                        </div>
                            </div>
                        </div>
                        <div class="row">
                            <%--<div class="col-sm-6 col-12 mb-3">
                                <div class="form-floating">
                                    <input type="text" class="borderRight borderLeft form-control" id="Text1" placeholder="% Vida útil:" runat="server"/>
                                    <input class="form-control" id="inputImages" accept="image/png,image/jpeg" type="file"/>
                                    <label for="inputImages">Fotos de evidencia:</label>
                                </div>
                            </div>--%>
                        </div>
                        <div class="text-center mt-5">
                            <%--<button id="btnCrear" runat="server"  class="btn btn-primary" onclick="btnCrear_Click">Crear</button>--%>
                            <asp:Button type="submit" ID="btnCrear" class="btn btn-primary" runat="server" Text="Crear" OnClick="btnCrear_Click" />
                            <button type="button" ID="cancelar" class="btn btn-secondary" runat="server" onclick="history.go(-1)">Cancelar</button>
                            <button visible="false" type="button" ID="cancelar2" class="btn btn-secondary" runat="server" onclick="history.go(-2)">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

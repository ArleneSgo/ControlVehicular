<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ControlVehicular.Views.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script> 
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" src="../Include/js/script.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pagetitle">
        <h1>Control Vehicular UGRS</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Index.aspx">Inicio</a></li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <section class="section dashboard">             
        <div class="row">        
            <!-- DataTales -->
            <div class="col-lg-7">
                <div class="card shadow recent-sales mb-4 ">
                    <div class="card-header py-1">
                        <h5 class="card-title">Lista de los préstamos en curso</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-border table-hover table-striped" id="dTblLastLoans" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Persona asignada</th>
                                        <th>Modelo</th>
                                        <th>Placa</th>
                                        <th>Fecha</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%--<tr>
                                        <td>1</td>
                                        <td>Jesús Perez</td>
                                        <td>PICK UP SILVERADO BLANCO 2012</td>
                                        <td>xxxxxxxxxx</td>
                                        <td>14/06/2022</td>
                                        <td>
                                        <a class="btn btn-warning" href="CreateCarReport.aspx"  data-toggle='tooltip' title='Crear reporte de entrega'><i class="bi bi-card-checklist"></i></a>
                                        <!-- <a class="btn btn-warning" href="#" data-bs-toggle="dropdown" data-toggle='tooltip' title='Ver reportes'><i class="bi bi-eye-fill"></i></a> -->
                                        </td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="card shadow recent-sales mb-4 ">
                    <div class="card-header py-1">
                        <h5 class="card-title">Lista de vehículos con más de 6 meses del último servicio</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-border table-hover table-striped" id="dTblNeedService" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Último servicio</th>
                                        <th>Área/ Depto.</th>
                                        <th>Persona asignada</th>
                                        <th>Modelo</th>
                                        <th>Placa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%--<tr>
                                        <td>1</td>
                                        <td>14/06/2022</td>
                                        <td>Sistemas</td>
                                        <td>Jesús Perez</td>
                                        <td>PICK UP SILVERADO BLANCO 2012</td>
                                        <td>xxxxxxxxxx</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>               
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

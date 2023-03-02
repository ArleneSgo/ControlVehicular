<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" AutoEventWireup="true" CodeBehind="CarList.aspx.cs" Inherits="ControlVehicular.Views.CarList" %>
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
            <li class="breadcrumb-item"><a href="CarList.aspx">Vehículos registrados</a></li>
            </ol>
        </nav>
        <a type="button" href="CreateCarReport.aspx" class="btn btn-primary"><i class="bi bi-plus-lg me-1"></i> Crear reporte de vehículo no registrado</a>
    </div><!-- End Page Title -->
    <section class="section dashboard">           
        <!-- DataTales -->
        <div class="card shadow recent-sales mb-4 ">
            <div class="card-header py-1">
                <h5 class="card-title">Se muestra la lista de vehículos registrados</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-border table-hover table-striped" id="dTblCars" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Registrado en</th>
                                <th>Área/ Depto.</th>
                                <th>Persona asignada</th>
                                <th>Modelo</th>
                                <th>Placa</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>                      
                            <%--<tr>
                                <td>16</td>
                                <td>Sistemas</td>
                                <td>José Perez</td>
                                <td>XXXXX</td>
                                <td>xxxxxxxxxx</td>
                                <td>
                                    <a class="btn btn-primary" href="CreateCarReport.aspx"  data-toggle='tooltip' title='Crear reporte'><i class="bi bi-plus-lg"></i></a>
                                    <!-- <a class="btn btn-warning" href="#" data-bs-toggle="dropdown" data-toggle='tooltip' title='Ver reportes'><i class="bi bi-eye-fill"></i></a> -->
                                </td>
                            </tr>--%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

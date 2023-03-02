// Call the dataTables jQuery plugin
$(document).ready(function () {
});
function dataTable(view) {

    $.ajax({
        type: "POST",
        url: "CarList.aspx/GetCars", //Direccion del servicio web segido de /Nombre del metodo a llamar
        data: "{}", //Esto se utiliza si deseamos pasar algun paramentro al metodo del servicio web ejm: {'indentificacion':'1234'}
        contentType: "application/json; charset=utf-8",
        dataType: "json", //Esto quiere decir que los datos nos llegaran como un objeto json
        success: dataTableCarList,
        failure: function (response) {
            alert(response.d);
        },
        error: function (response) {
            alert(response.d);
        },
    });
};
var dataTableCarList = function (response) { 

    $('#dTblCars').DataTable(
        {
            destroy: true,
            language: {
                "decimal": "",
                "emptyTable": "No hay información",
                "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
                "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Mostrar _MENU_ Entradas",
                "loadingRecords": "Cargando...",
                "processing": "Procesando...",
                "search": "Buscar:",
                "zeroRecords": "Sin resultados encontrados",
                "paginate": {
                    "first": "Primero",
                    "last": "Ultimo",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            },
            bLengthChange: true,
            //lengthMenu: [[5, 10, -1], [5, 10, -1]],
            bFilter: true,
            bSort: true,
            bPaginate: true,
            data: response.d,
            columns: [{ 'data': 'ItemCode' },
                      {
                          "mRender": function (data, type,  row) {
                              //return "<i class="fa fa-circle ${colorSchema(this.estatus)}"></i>";
                              return "<h5><span class='badge bg-"+colorSchema(row.RegisteredIn)+"'>"+row.RegisteredIn+"</span></h5>";
                          },
                      },
                      { 'data': 'Department' },
                      { 'data': 'Assigned' },
                      { 'data': 'Model' },
                      { 'data': 'LicencePlate' },
                       {
                           "mRender": function (data, type,  row) {
                               return "<a class='btn btn-primary' href=\'CreateCarReport.aspx?ID=" + row.Id + "&TYPE=" + 0 + "\'  data-toggle='tooltip' title='Crear reporte'><i class='bi bi-plus-lg'></i></a>";
                           },
                           "sClass": "alinearDerecha"
                       }]
        });
};
function colorSchema (registeredIn) {
    if (registeredIn == 'SAP') return "primary";
return "secondary";
};
function dataTableIndex(view) {
    $.ajax({
        type: "POST",
        url: "Index.aspx/GetLastLoan", //Direccion del servicio web segido de /Nombre del metodo a llamar
        data: "{}", //Esto se utiliza si deseamos pasar algun paramentro al metodo del servicio web ejm: {'indentificacion':'1234'}
        contentType: "application/json; charset=utf-8",
        dataType: "json", //Esto quiere decir que los datos nos llegaran como un objeto json
        success: dataTableLastLoans,
        failure: function (response) {
            alert(response.d);
        },
        error: function (response) {
            alert(response.d);
        },
    });
    $.ajax({
        type: "POST",
        url: "Index.aspx/GetNeedService", //Direccion del servicio web segido de /Nombre del metodo a llamar
        data: "{}", //Esto se utiliza si deseamos pasar algun paramentro al metodo del servicio web ejm: {'indentificacion':'1234'}
        contentType: "application/json; charset=utf-8",
        dataType: "json", //Esto quiere decir que los datos nos llegaran como un objeto json
        success: dataTableNeedService,
        failure: function (response) {
            alert(response.d);
        },
        error: function (response) {
            alert(response.d);
        },
    });
};
function dTblLastLoans(view) {
    $.ajax({
        type: "POST",
        url: "Index.aspx/GetLastLoan", //Direccion del servicio web segido de /Nombre del metodo a llamar
        data: "{}", //Esto se utiliza si deseamos pasar algun paramentro al metodo del servicio web ejm: {'indentificacion':'1234'}
        contentType: "application/json; charset=utf-8",
        dataType: "json", //Esto quiere decir que los datos nos llegaran como un objeto json
        success: dataTableLastLoans,
        failure: function (response) {
            alert(response.d);
        },
        error: function (response) {
            alert(response.d);
        },
    });
};
var dataTableLastLoans = function (response) {
    $('#dTblLastLoans').DataTable(
        {
            destroy: true,
            info: false,
            searching: false,
            bProcessing: false,
            bAutoWidth: false,
            paging: false,
            data: response.d,
            columns: [{ 'data': 'Id' },
                      { 'data': 'Assigned' },
                      { 'data': 'Model' },
                      { 'data': 'LicencePlate' },
                      { 'data': 'Expr1', 'render': function (value) {
                              if (value === null) return "";
                              var pattern = /Date\(([^)]+)\)/; //date format from server side
                              var results = pattern.exec(value);
                              var dt = new Date(parseFloat(results[1]));
                              if (dt.getFullYear() === 9999) return ""; //Control para MaxValue
                              return ('0' + dt.getDate()).slice(-2) + "/" + ('0' + (dt.getMonth() + 1)).slice(-2) + "/" + dt.getFullYear();
                          }
                      },
                       {
                           "mRender": function (data, type, row) {
                               return "<a class='btn btn-warning' href=\'CreateCarReport.aspx?ID=" + row.Id +"&TYPE="+ 2+"\'  data-toggle='tooltip' title='Crear reporte de entrega'><i class='bi bi-card-checklist'></i></a>"

                           },
                           "sClass": "alinearDerecha"
                       }],
            
            
        });
}

var dataTableNeedService = function (response) {
    $('#dTblNeedService').DataTable(
        {
            destroy: true,
            info: false,
            searching: false,
            bProcessing: false,
            bAutoWidth: false,
            paging: false,
            data: response.d,
            columns: [{ 'data': 'Id' },
                      {'data': 'Expr1', 'render': function (value) {
                              if (value === null) return "";
                              var pattern = /Date\(([^)]+)\)/; //date format from server side
                              var results = pattern.exec(value);
                              var dt = new Date(parseFloat(results[1]));
                              if (dt.getFullYear() === 9999) return ""; //Control para MaxValue
                              return ('0' + dt.getDate()).slice(-2) + "/" + ('0' + (dt.getMonth() + 1)).slice(-2) + "/" + dt.getFullYear();
                          }
                      },
                      { 'data': 'Department' },
                      { 'data': 'Assigned' },
                      { 'data': 'Model' },
                      { 'data': 'LicencePlate' },
                      
                       ]
        });
};
(function () {

    'use strict'

    var file = document.getElementById('file');
    var preload = document.querySelector('.preload');
    var publish = document.getElementById('publish');
    var formData = new FormData();

    file.addEventListener('change', function (e) {

        for ( var i = 0; i < file.files.length; i++ ) {
            var thumbnail_id = Math.floor( Math.random() * 30000 ) + '_' + Date.now();
            createThumbnail(file, i, thumbnail_id);
            formData.append(thumbnail_id, file.files[i]);
        }

        e.target.value = '';

    });

    //publish.addEventListener('click', function (e) {
    //    e.preventDefault();
    //    preload.classList.add('activate-preload');

    //    fetch('../server.php', {
    //        method: 'POST',
    //        body: formData
    //    })
	//	.then(function (response) {
	//	    return response.json();
	//	})
	//	.then(function (data) {
	//	    preload.classList.remove('activate-preload');
	//	    clearFormDataAndThumbnails();
	//	    document.getElementById('success').innerText = data.message;
	//	})
	//	.catch(function (err) {
	//	    console.log(err);
	//	});
    //});

    var createThumbnail = function (file, iterator, thumbnail_id) {
        var thumbnail = document.createElement('div');
        thumbnail.classList.add('thumbnail', thumbnail_id);
        thumbnail.dataset.id = thumbnail_id;

        thumbnail.setAttribute('style', "background-image: url("+ URL.createObjectURL( file.files[iterator] ) +")");
    document.getElementById('preview-images').appendChild(thumbnail);
    createCloseButton(thumbnail_id);
}

	var createCloseButton = function (thumbnail_id) {
    var closeButton = document.createElement('div');
    closeButton.classList.add('close-button');
    closeButton.innerText = 'x';
    document.getElementsByClassName(thumbnail_id)[0].appendChild(closeButton);
}

var clearFormDataAndThumbnails = function () {
    for ( var key in formData.keys() ) {
        formData.delete(key);
    }

document.querySelectorAll('.thumbnail').forEach(function (thumbnail) {
    thumbnail.remove();
});
}

document.body.addEventListener('click', function (e) {
    if ( e.target.classList.contains('close-button') ) {
        e.target.parentNode.remove();
        formData.delete(e.target.parentNode.dataset.id);
    }
});

})();
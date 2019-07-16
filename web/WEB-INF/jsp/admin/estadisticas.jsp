<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="../assets/js/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="../assets/js/Chart.bundle.min.js"></script>
        <script type="text/javascript" src="../assets/js/reporteByYear.js"></script>
        <script type="text/javascript" src="../assets/js/jspdf.debug.js"></script>
        <script src="https://kit.fontawesome.com/6599453d95.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <title>Estadísticas</title>
        <script type="text/javascript">
            $(document).ready(function(){
        var buttonHasta= document.getElementById("hasta").value;        
        var buttonDesde= document.getElementById("desde").value;
        var button= document.getElementById("pdf");
        var buttonEviarFechas= document.getElementById("enviarFechas");
        if((buttonDesde!='') && (buttonHasta!='')){
            button.disabled=false;
           
        }
        
        window.chartColors = {
          red: 'rgb(255, 99, 132)',
            orange: 'rgb(255, 159, 64)',
    yellow: 'rgb(255, 205, 86)',
    green: 'rgb(75, 192, 192)',
    blue: 'rgb(54, 162, 235)',
    purple: 'rgb(153, 102, 255)',
    grey: 'rgb(201, 203, 207)'
};
var listacolores=[];
          var colorName = Object.keys(window.chartColors);
          var num=colorName.length;
          for(var index=0; index<2;index ++){
            var newColor = window.chartColors[colorName[index%num]];
            listacolores.push(newColor);
              }
        var datos = {
    type: "pie",
    data : {
                datasets :[{
                    data : ${valor},
        backgroundColor: listacolores ,
            }],
        labels : ${label}
        },
    options : {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Alquiler por socio'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };
           

    var canvas = document.getElementById('chart').getContext('2d');
    window.pie = new Chart(canvas, datos);
    var listacoloresCosto=[];
          var colorName = Object.keys(window.chartColors);
          var num=colorName.length;
          for(var index=0; index<2;index ++){
            var newColor = window.chartColors[colorName[index%num]];
            listacoloresCosto.push(newColor);
              }
    
    var datos1 = {
    type: "doughnut",
    data : {
                datasets :[{
                    data : ${valoresCosto},
        backgroundColor: listacoloresCosto ,
            }],
        labels : ${labelsCosto}
        },
    options : {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Recaudación por Peliculas'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };
    var canvas1 = document.getElementById('chart1').getContext('2d');
    window.pie = new Chart(canvas1, datos1);
    
});
        </script>
        
    </head>

    <body>
        <%@include file="header.jsp" %>   
        <br><br><br><br>
       
        <div class="container"  >
            <div class="row "  style="background-color:#eae5e54d;">  
                <div class="col-md-6" >
                    <div id="canvas-container" style="width:80%;">
                        <canvas id="chart" width="500" height="350"></canvas>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="canvas-container" style="width:80%;">
                        <canvas id="chart1" width="500" height="350"></canvas>
                    </div>
                </div>
            </div>
            <div class="row mt-4 mb-4" >
                <div class="col-md-12 text-center" >
                    <p class="h2">Buscar Alquiler</p></div>
            </div>
            <div class="row mb-4">
                <div class="col-md-12 text-center">
                    <form method="POST">
                        <input type="date" id="desde" name="desde" value="${listaFechaAlquiler[0].fecha}" onchange="ValidarInputFechas()" >
                        <input type="date" id="hasta" name="hasta"  value="${listaFechaAlquiler[0].fecha1}" onchange="ValidarInputFechas()">
                        <button type="submit" disabled="true" class="btn btn-secondary" id="enviarFechas"><i class="fas fa-search fa-lg"></i>Buscar</button>
                    </form>
                </div>
            </div>
            
        <br >
         <button id="pdf" disabled="true" class="btn btn-primary" onclick="javascript:demoFromHTML()"><i class="fas fa-file-pdf fa-lg"></i>Generar PDF</button>
       
        <div id="customers">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="row">Pelicula</th>
                    <th scope="row">Socio</th>
                    <th scope="row">Fecha Alquiler</th>
                    <th scope="row">Fecha Devolución</th>
                    <th scope="row">Valor</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="datopelfecha" items="${listaFechaAlquiler}">
                    <tr>
                        <td>${datopelfecha.pelicula}</td>
                        <td>${datopelfecha.socio}</td>
                        <td>${datopelfecha.fecha}</td>
                        <td>${datopelfecha.fecha1}</td>
                        <td>${datopelfecha.valor}</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
            </div>
        </div>
       
        
        <br><br><br>
        <%@include file="footer.jsp" %>            
    </body>
</html>

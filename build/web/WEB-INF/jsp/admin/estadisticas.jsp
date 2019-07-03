<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="../assets/js/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="../assets/js/Chart.bundle.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <title>Estadísticas</title>
        <script type="text/javascript">
            $(document).ready(function () {

                var datos = {
                    type: "pie",
                    data: {
                        datasets: [{
                                data: data: ${valor}
                           
                            }],
                        labels: ${label}
                        
                    },
                    options: {
                        responsive: true,
                    }
                };

                var canvas = document.getElementById('chart').getContext('2d');
                window.pie = new Chart(canvas, datos);


            });
        </script>
    </head>

    <body>
        <%@include file="header.jsp" %>   
        <br><br><br><br>
        <h1>Hola</h1>
        <div id="canvas-container" style="width:50%;">
            <canvas id="chart" width="500" height="350"></canvas>
        </div>


        <br><br>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="row">Peli</th>
                    <th scope="row">num</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="datopel" items="${listaPeli}">
                    <tr>
                        <td>${datopel.pelicula}</td>
                        <td>${datopel.num}</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br><br>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="row">Peli</th>
                    <th scope="row">num</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="datopelcosto" items="${listaPeliCosto}">
                    <tr>
                        <td>${datopelcosto.pelicula}</td>
                        <td>${datopelcosto.costo}</td>

                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <br>
        <form method="POST">
            <input type="date" name="desde" value="${listaFechaAlquiler[0].fecha}"  >
            <input type="date" name="hasta"  value="${listaFechaAlquiler[0].fecha1}">
            <input type="submit" name="buscar">

        </form>
        <br >
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="row">Peli</th>
                    <th scope="row">Socio</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="datopelfecha" items="${listaFechaAlquiler}">
                    <tr>
                        <td>${datopelfecha.pelicula}</td>
                        <td>${datopelfecha.socio}</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br><br><br>
        <%@include file="footer.jsp" %>            
    </body>
</html>
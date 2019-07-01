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
	$(document).ready(function(){
            
		var datos = {
			type: "pie",
			data : {
				datasets :[{
					data : [
						5,
						10,
						40,
						12,
						23,
					],
					backgroundColor: [
						"#F7464A",
						"#46BFBD",
						"#FDB45C",
						"#949FB1",
						"#4D5360",
					],
				}],
				labels : [
					"Datos 1",
					"Datos 2",
					"Datos 3",
					"Datos 4",
					"Datos 5",
				]
			},
			options : {
				responsive : true,
			}
		};

		var canvas = document.getElementById('chart').getContext('2d');
		window.pie = new Chart(canvas, datos);

		setInterval(function(){
			datos.data.datasets.splice(0);
			var newData = {
				backgroundColor : [
					"#F7464A",
					"#46BFBD",
					"#FDB45C",
					"#949FB1",
					"#4D5360",
				],
				data : [getRandom(), getRandom(), getRandom(), getRandom(), getRandom()]
			};

			datos.data.datasets.push(newData);

			window.pie.update();

		}, 5000);



		function getRandom(){
			return Math.round(Math.random() * 100);
		}


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
        
       <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="row">socio</th>
                                <th scope="row">num</th>
                             
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.socio}</td>
                                <td>${dato.num}</td>
                                
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
                            <c:forEach var="datopel" items="${listaPeli}">
                            <tr>
                                <td>${datopel.pelicula}</td>
                                <td>${datopel.num}</td>
                                
                            </tr>
                             </c:forEach>
             </tbody>
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
              <input type="date" name="desde"   >
             <input type="date" name="hasta"  >
             <input type="submit" name="buscar">
                
             </form>
             <br >
           
        </table>
             <br><br><br>
        <%@include file="footer.jsp" %>            
    </body>
</html>

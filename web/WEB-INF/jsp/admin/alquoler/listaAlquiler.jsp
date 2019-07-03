<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
        <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
        <link rel="stylesheet" href="assets/css/smoothproducts.css">
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <title>Lista Películas</title>
    </head>
    <%@include file="../header.jsp" %> 

    <body>
        <br>
        <br>
        <br>
        <div class="container mt-4">
            <div class="card border-info">
                
                <div class="card-body">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="row">ID</th>
                                <th scope="row">Socio</th>
                                <th scope="row">Película</th>
                                <th scope="row">Foto</th>
                                <th scope="row">Fecha Desde</th>
                                <th scope="row">Fecha Hasta</th>
                                <th scope="row">Valor</th>
                                <th scope="row">Fecha de Entrega</th>
                         
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.ALQ_ID}</td>
                                    <td >${dato.SOC_NOMBRE}</td>

                                    <td>${dato.PEL_NOMBRE}</td>
                                    <td><img src="../../assets/img/${dato.PEL_IMG}" width="140" height="180" /></td>
                                    <td>${dato.ALQ_FECHA_DESDE}</td>
                                    <td >${dato.ALQ_FECHA_HASTA}</td>
                                    <td>${dato.ALQ_VALOR}</td>
                                    <td >${dato.ALQ_FECHA_ENTREGA}</td>
                                    
                                  
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
        <br><br>
        <%@include file="../footer.jsp" %> 

    </body>
</html>

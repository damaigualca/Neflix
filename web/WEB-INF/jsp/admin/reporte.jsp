<%-- 
    Document   : reporte
    Created on : 01/07/2019, 14:17:18
    Author     : LIBET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
    </body>
</html>

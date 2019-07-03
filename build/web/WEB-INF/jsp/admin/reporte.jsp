<%-- 
    Document   : reporte
    Created on : 01/07/2019, 14:17:18
    Author     : LIBET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>      
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br>
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
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <title>Agregar Formato Película</title>
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Agregar Nuevo Formato Película</h4>
                </div>
                <div class="card-body">
                    <form method="POST">

                        <label>Nombre</label>
                        <input required type="text" name="nombre" class="form-control">
                           
                         


                        <br><br>
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a class="btn btn-dark" href="<c:url value="/admin/formato/listaFormato.htm"/>"> Regresar</a>




                    </form>
                </div>
            </div>
        </div>
        <br><br>
        <%@include file="../footer.jsp" %>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Socio</title>
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Editar Socio</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Cedula</label>
                        <input type="text" name="cedula" class="form-control" value="${lista[0].SOC_CEDULA}">
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].SOC_NOMBRE}">
                        <label>Direccion</label>
                        <input type="text" name="direccion" class="form-control" value="${lista[0].SOC_DIRECCION}">
                        <label>Telefono</label>
                        <input type="text" name="telefono" class="form-control" value="${lista[0].SOC_TELEFONO}">
                        <label>Correo</label>
                        <input type="text" name="correo" class="form-control" value="${lista[0].SOC_CORREO}">
                        <br><br>
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a class="btn btn-dark" href="<c:url value="/admin/socio/listaSocio.htm"/>"> Regresar</a>
                            
                            
                            
                            
                    </form>
                </div>
            </div>
        </div>
                        <br><br>
        <%@include file="../footer.jsp" %>
    </body>
</html>

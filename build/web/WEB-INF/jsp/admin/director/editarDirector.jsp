<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Formato Pelicula</title>
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Editar Director</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].DIR_NOMBRE}"><br>
                        
                        
                        <br><br>
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a class="btn btn-dark" href="<c:url value="/admin/director/listaDirector.htm"/>"> Regresar</a>
                            
                            
                            
                            
                    </form>
                </div>
            </div>
        </div>
                        <br><br>
        <%@include file="../footer.jsp" %>
    </body>
</html>

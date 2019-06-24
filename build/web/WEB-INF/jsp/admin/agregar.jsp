<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../header.jsp" %>
        
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Agregar Nueva Película</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre</label>
                        <input type="text" name="nompeli" class="form-control">
                        <label>Cosot</label>
                        <input type="text" name="costo" class="form-control">
                        <label>Fecha Estreno</label>
                        <input type="text" name="fecha" class="form-control">
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a class="btn btn-dark" href="<c:url value="index.htm"/>"> Regresar</a>
                            
                            
                            
                            
                    </form>
                </div>
            </div>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>

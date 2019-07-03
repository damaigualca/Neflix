<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Pelicula</title>
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Editar Pelicula</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        
                        <label>Nombre</label>
                        <input required type="text" name="nombre" class="form-control" value="${listaQ[0].PEL_NOMBRE}">
                        <label>Género</label>
                        <select class="browser-default custom-select" name="genero">
                            <c:forEach items="${listaG}" var="categoryG">
                                <option name="genero" value="${categoryG.GEN_ID}">${categoryG.GEN_NOMBRE}</option>
                            </c:forEach>
                        </select> 
                        <label>Director</label>
                        <select class="browser-default custom-select" name="director">
                            <c:forEach items="${listaD}" var="categoryD">
                                <option name="director" value="${categoryD.DIR_ID}">${categoryD.DIR_NOMBRE}</option>
                            </c:forEach>
                        </select> 
                        <label>Formato</label>
                        <select class="browser-default custom-select" name="formato">
                            <c:forEach items="${listaF}" var="categoryF">
                                <option name="formato" value="${categoryF.FOR_ID}">${categoryF.FOR_NOMBRE}</option>
                            </c:forEach>
                        </select> 
                         
                        <label>Costo</label>
                        <input required type="text" name="costo" class="form-control" value="${listaQ[0].PEL_COSTO}">
                        <label>Fecha de Estreno</label>
                        <input required type="date" name="fecha_estreno" class="form-control" value="${listaQ[0].PEL_FECHA_ESTRENO}">
                        
                        <br><br>
                        <input type="submit" value="Actualizar" class="btn btn-success" >
                        <a class="btn btn-dark" href="<c:url value="/admin/pelicula/listaPelicula.htm"/>"> Regresar</a>
                            
                            
                            
                            
                    </form>
                </div>
            </div>
        </div>
                        <br><br>
        <%@include file="../footer.jsp" %>
    </body>
</html>

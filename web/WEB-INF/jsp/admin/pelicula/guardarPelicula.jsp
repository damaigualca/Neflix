<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquilar Pelicula</title>
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
    </head>
    <body>
        <%@include file="../../header.jsp" %> 
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header">
                    <h4>Alquilando ${listaQ[0].PEL_NOMBRE} la Pelicula</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <input type="hidden" name="pelicula" class="form-control" value="${listaQ[0].PEL_ID}">
                        <label>Vendedor (Socio):</label>
                        <select class="browser-default custom-select" name="socio">
                            <c:forEach items="${listaF}" var="categoryF">
                                <option name="socio" value="${categoryF.SOC_ID}">${categoryF.SOC_NOMBRE}</option>
                            </c:forEach>
                        </select> 
                        <label>Valor de alquiler:</label>
                        <input type="number" name="valor" class="form-control" value="${listaQ[0].PEL_COSTO}">
                        <label>Fecha inicio de alquiler:</label>
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='date' name="fecha_inicio" class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $('#datetimepicker1').datetimepicker();
                                    });
                                </script>
                            </div>
                        </div>
                           <label>Fecha fin de alquiler:</label>
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='date' name="fecha_fin" class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $('#datetimepicker1').datetimepicker();
                                    });
                                </script>
                            </div>
                        </div>
                              <label>Fecha entrega de pelicula:</label>
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='date' name="fecha_entrega" class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $('#datetimepicker1').datetimepicker();
                                    });
                                </script>
                            </div>
                        </div>
                        <br><br>
                        <input type="submit" value="Realizar Alquiler" class="btn btn-success" >
                        <a class="btn btn-dark" href="<c:url value="/admin/pelicula/alquilarPelicula.htm"/>"> Regresar</a> 
                    </form>
                </div>
            </div>
        </div>
        <br><br>
        <%@include file="../footer.jsp" %>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquilar Pelicula</title>
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
        <script src="http://momentjs.com/downloads/moment.min.js"></script>
    </head>
    <body>
        <%@include file="../../header.jsp" %> 
        <br><br><br><br>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                 <form method="POST">
          
                       <script type="text/javascript">
                        //<![CDATA[
                       var i = 1;
                       var tamano = 0;
                       var array = [];
                        </script>
                        <c:forEach var="dato" items="${lista}">
                        <input type="hidden" name="pelicula" class="form-control" value="${dato.PEL_ID}">
                <div class="card-header">
                    <h4>Alquilando ${dato.PEL_NOMBRE} la Pelicula</h4>
                </div>  
                <div class="card-body">
                      <label>Vendedor (Socio):</label>
                        <select class="browser-default custom-select" name="socio">
                            <c:forEach items="${listaF}" var="categoryF">
                                <option name="socio" value="${categoryF.SOC_ID}">${categoryF.SOC_NOMBRE}</option>
                            </c:forEach>
                        </select> 
                        <label>Valor de alquiler:</label>
                        <input id="1${dato.PEL_ID}" required type="number" name="valor" class="form-control" value="${dato.PEL_COSTO}">
                           <script type="text/javascript">
                                array[tamano] = "1"+${dato.PEL_ID};
                                tamano = tamano+1;
                            </script>
                        <label>Fecha inicio de alquiler:</label>
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input required type='date' name="fecha_inicio" value="2019-07-10" max="2019-07-10" min="2019-07-10" class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                         $("#datepicker").datepicker({
                                        dateFormat: 'dd/mm/yy',
                                    }).datepicker("setDate", new Date());
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
                                            <input onchange="valPrecio(this.id,this.placeholder)" placeholder="${dato.PEL_COSTO}" name="fecha_fin" required type='date' id="2${dato.PEL_ID}" min="2019-07-11" class="form-control"/>
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
                                            <input  type='date' name="fecha_entrega" class="form-control" />
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
                        </c:forEach> 
                             
                              <br><br>
                              <hr>
                              <divider>
                                  <label><storng>Total a pagar:</storng></label>   
                                  <input disabled="true" id="totalpel" required type="number" name="total" class="form-control" value=12>
                             
                        <br><br>
                        <input type="submit" value="Realizar Alquiler" class="btn btn-success" >
                    <!--    <a  class="btn btn-success" href="" onClick="contar()"> Realizar alquiler</a>  -->
                        <a class="btn btn-dark" href="<c:url value="/admin/pelicula/alquilarPelicula.htm"/>"> Regresar</a> 
                    </form>
                </div>
            </div>
        </div>
                
    </div>
        <br><br><br><br><br>
</div>
    </body>
      <script type="text/javascript">
            var auxiliar = 0;
            for(var i=0;i<tamano;i++){
                auxiliar = parseInt(auxiliar)+parseInt(document.getElementById(array[i]).value);
            }
            document.getElementById("totalpel").value = auxiliar;
      </script>
    <script type="text/javascript">
            function contar() {
                location.href=href="guardarPelicula.htm?array="+array2
            } 
            function valPrecio(id,valor) {
            var f2 = new Date(document.getElementById(id).value);
            var f1 = new Date(2019,6,10);
            f2.setHours(0,0,0,0);
            f1.setHours(0,0,0,0);
            var diff = f2 - f1;        
            var aux = 1+id.substr(1,2);
            document.getElementById(aux).value = valor*((diff/(1000 * 60 * 60 * 24))+1) 
            actualizarPrecio();
            } 
            function actualizarPrecio(){
                 var auxiliar = 0;
            for(var i=0;i<tamano;i++){
                auxiliar = parseInt(auxiliar)+parseInt(document.getElementById(array[i]).value);
            }
            document.getElementById("totalpel").value = auxiliar;
            }
        </script>
    <%@include file="../footer.jsp" %>
</html>

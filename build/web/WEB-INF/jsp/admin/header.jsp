<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <link rel="stylesheet" href="<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>">

        <link rel="stylesheet" href=" https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
        <link rel="stylesheet" href="<c:url value="/assets/fonts/simple-line-icons.min.css"/>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/tabletools/2.2.4/css/dataTables.tableTools.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/tabletools/2.2.4/css/dataTables.tableTools.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.bootstrap.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.bootstrap.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.bootstrap4.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.bootstrap4.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.colVis.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.colVis.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.flash.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.flash.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.foundation.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.foundation.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.html5.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.html5.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.jqueryui.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.jqueryui.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.print.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.print.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.semanticui.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/buttons.semanticui.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/dataTables.buttons.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/dataTables.buttons.min.js"/>"/>


        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.bootstrap.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.bootstrap.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.bootstrap4.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.bootstrap4.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.dataTables.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.dataTables.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.foundation.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.foundation.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.jqueryui.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.jqueryui.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.semanticui.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/buttons.semanticui.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/common.scss"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/mixins.scss"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/flashExport.swf"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/css/smoothproducts.css"/>">
        <link rel="stylesheet"   href="<c:url value="/assets/css/datatables.min.css"/>"/>
        <link rel="stylesheet"   href="<c:url value="/assets/css/buttons.dataTables.min.css"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/datatables.min.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/js/datatables.js"/>"/>
        <link rel="stylesheet"  href="<c:url value="/assets/css/datatables.css"/>"/>
    </head>
    <body>
        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
            <div class="container"><img src="<c:url value="/assets/img/stickeroid_5bf5461d4e179-5.png"/>"><a class="navbar-brand logo" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">

                        <li class="nav-item" role="presentation"><a class="nav-link"  href="/Neflix/admin/indexAdmin.htm">INICIO</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/pelicula/listaPelicula.htm">PELÍCULAS</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/formato/listaFormato.htm">FORMATOS</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/genero/listaGenero.htm">GÉNEROS</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/alquoler/listaAlquiler.htm">Alquiler</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/socio/listaSocio.htm">SOCIOS</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/director/listaDirector.htm">DIRECTORES</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/actor/listaActor.htm">ACTORES</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link"  href="/Neflix/admin/estadisticas.htm">ESTADÍSTICAS</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link"  href="/Neflix/index.htm">SALIR</a></li>
                    </ul>
                </div>
            </div>
        </nav>

    </body>

</html>

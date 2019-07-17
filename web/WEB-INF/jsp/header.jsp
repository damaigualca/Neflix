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
        <link rel="stylesheet" href="<c:url value="/assets/css/datatables.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/js/datatables.min.js"/>">
        <link rel="stylesheet" href=" https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
        <link rel="stylesheet" href="<c:url value="/assets/fonts/simple-line-icons.min.css"/>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
        <link rel="stylesheet" href="<c:url value="/assets/css/smoothproducts.css"/>">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

        <!-- CSS
        ================================================== -->
        <!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css"/>">
        <!-- jquery.fancybox  -->
        <link rel="stylesheet" href="<c:url value="/assets/css/jquery.fancybox.css"/>">
        
        <!-- animate -->
        <link rel="stylesheet" href="<c:url value="/assets/css/animate.css"/>">
        
        <!-- Main Stylesheet -->
        
        <!-- media-queries -->
        <link rel="stylesheet" href="<c:url value="/assets/css/media-queries.css"/>">
        

        <!-- Modernizer Script for old Browsers -->
        
        <script src="<c:url value="/assets/js/modernizr-2.6.2.min.js"/>"></script>
    </head>
    <body>
        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-dark clean-navbar">
            <div class="container"><img src="<c:url value="/assets/img/stickeroid_5bf5461d4e179-5.png"/>"><a class="navbar-brand logo" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto ">
                        <li class="nav-item text-white" role="presentation"><a class="nav-link" href="<c:url value="/index.htm"/>">INICIO</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/Neflix/admin/pelicula/alquilarPelicula.htm">ALQUILER</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="/login.htm"/>">Iniciar sesión</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
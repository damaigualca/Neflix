<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container"><img src="assets/img/stickeroid_5bf5461d4e179-5.png"><a class="navbar-brand logo" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                     
                    <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="index.htm"/>">INICIO</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="catalog-page.htm"/>">CATALOGO</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="product-page.htm"/>">VER PELICULA</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="login.htm"/>">Iniciar sesión</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value="registration.htm"/>">Registrarse</a></li>
                </ul>
        </div>
        </div>
    </nav>
    </body>
</html>

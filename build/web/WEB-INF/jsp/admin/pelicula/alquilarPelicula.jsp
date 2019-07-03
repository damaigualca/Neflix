<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
        <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
        <link rel="stylesheet" href="assets/css/smoothproducts.css">
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
        <title>Alquiler de Películas</title>
    </head>
   <%@include file="../../header.jsp" %> 
    
    <body>
        <br>
        <br>
        <br>
         <main class="page catalog-page">
        <section class="clean-block clean-catalog dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Catálogo de Películas</h2>
                    <p>Hola mira el contenido que tenemos para ti!</p>
                </div>
                <div class="content">
                          <div class="row">
                               <div class="col-md-12">
                                   <div class="products">
                                <div class="row no-gutters">
                            <c:forEach var="dato" items="${lista}">
                                      <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img  src="../../assets/img/${dato.PEL_IMG}" width="150" height="400"></a></div>
                                            <div class="product-name"><a href="#"><strong>${dato.PEL_NOMBRE}</strong></a></div>
                                            <div class="about">
                                                <div class="rating">Genero:${dato.GEN_NOMBRE}</div>
                                                <div class="price">
                                                    <h3>${dato.PEL_COSTO}</h3>
                                                </div>
                                            </div>
                                            <p class="card-text">${dato.FOR_NOMBRE} - ${dato.DIR_NOMBRE} </p> 
                                            <p class="card-text"><small class="text-muted">Fecha de estreno: ${dato.PEL_FECHA_ESTRENO}</small></p>
                                            <a href="guardarPelicula.htm?id=${dato.PEL_ID}" class="btn btn-primary ">Alquilar</a>
                                        </div>
                                    </div>
                            </c:forEach>
                                </div>
                                   </div>
                               </div>
                          </div>
                </div>
            </div>
        </section>
    </main>
        <%@include file="../footer.jsp" %> 

    </body>
</html>

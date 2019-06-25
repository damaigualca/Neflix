<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Neflix</title>
    <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="assets/img/stickeroid_5bf5461d4e179-3.png"/>">
    <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="assets/img/stickeroid_5bf5461d4e179-4.png"/>">
    <link rel="stylesheet" href="<c:url value="assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="<c:url value="assets/fonts/simple-line-icons.min.css"/>">
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/smoothproducts.css"/>">
</head>

<body>
    <%@include file="header.jsp" %>            
    <main class="page landing-page">
        <section class="clean-block clean-hero" style="background-image: url(&quot;../assets/img/neflix.jpg&quot;);color: rgba(9, 162, 255, 0.3);">
            <div class="text">
                <h2>Neflix Admin</h2>
                <p>Franquicia estadounidense de video clubes, especializada en alquiler de cine y videojuegos Online!</p><button class="btn btn-outline-light btn-lg" type="button">Alquila ya!</button></div>
        </section>
        <section class="clean-block clean-info dark">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="getting-started-info"></div>
                    </div>
                </div>
            </div>
            <section class="clean-block about-us">
                <div class="container">
                    <div class="block-heading">
                        <h2 class="text-info">Bienvenido a Neflix</h2>
                        <p>Disfruta de series Neflix Originals exclusivas, además de películas y series populares.&nbsp;</p>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-sm-6 col-lg-4">
                            <div class="card clean-card text-center"><img class="card-img-top w-100 d-block" src="../assets/img/Screen%20Shot%202019-06-19%20at%208.22.51%20AM.png">
                                <div class="card-body info">
                                    <h4 class="card-title"><strong>Ver en cualquier parte</strong></h4>
                                    <p class="card-text">Disfruta desde la web o con la aplicaci�n de Prime Video en tu tel�fono, tablet o ciertos Smart TV en hasta 3 dispositivos al mismo tiempo.<br></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card clean-card text-center"><img class="card-img-top w-100 d-block" src="../assets/img/Screen%20Shot%202019-06-19%20at%208.22.55%20AM.png">
                                <div class="card-body info">
                                    <h4 class="card-title">Robert Downturn</h4>
                                    <p class="card-text">Disfruta de contenido sin conexión con la aplicación Prime Video cuando descargues títulos en tu iPhone, iPad, tablet o dispositivo Android.<br></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card clean-card text-center"><img class="card-img-top w-100 d-block" src="../assets/img/Screen%20Shot%202019-06-19%20at%208.23.00%20AM.png">
                                <div class="card-body info">
                                    <h4 class="card-title"><strong>Ahorro de datos</strong><br></h4>
                                    <p class="card-text">Controla el uso de datos mientras descargas y ves videos en ciertos teléfonos y tablets, sin tener que preocuparte.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </main>

    <%@include file="footer.jsp" %>            
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/smoothproducts.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
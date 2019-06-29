<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Home - Admin Neflix</title>
        <link rel="icon" type="image/png" sizes="25x25" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-3.png"/>">
        <link rel="icon" type="image/png" sizes="35x35" href="<c:url value="/assets/img/stickeroid_5bf5461d4e179-4.png"/>">
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
                    <p>Bienvenido al Panel de Administración del Sistema Neflix</p>
                </div>
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
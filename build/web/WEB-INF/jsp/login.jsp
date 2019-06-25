<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - Neflix</title>
    <link rel="icon" type="image/png" sizes="25x25" href="assets/img/stickeroid_5bf5461d4e179-3.png">
    <link rel="icon" type="image/png" sizes="35x35" href="assets/img/stickeroid_5bf5461d4e179-4.png">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet" href="assets/css/smoothproducts.css">
</head>

<body>
    <%@include file="header.jsp" %> 
    <main class="page login-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Iniciar Sesión</h2>
                </div>
                <form method="POST" >
                    <div class="form-group"><label for="email">Email</label><input class="form-control item" type="text" id="username" name="username"></div>
                    <div class="form-group"><label for="password">Contraseña</label><input class="form-control" type="password" id="password" name="password"></div>
                    <div class="form-group" ><label style="font-style: italic; color: red;">${message}</label></div>
                    <div class="form-group">
                        <div class="form-check"><input class="form-check-input" type="checkbox" id="checkbox"><label class="form-check-label" for="checkbox">Recordarme</label></div>
                    </div><button class="btn btn-primary btn-block" type="submit">Log In</button></form>
            </div>
        </section>
    </main>
    <%@include file="footer.jsp" %> 
</body>

</html>
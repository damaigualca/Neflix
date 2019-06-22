<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Catalog - Neflix</title>
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
    
    <main class="page catalog-page">
        <section class="clean-block clean-catalog dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Catálogo de Películas</h2>
                    <p>Hola <strong>Luis C. </strong>mira el contenido que tenemos para ti!</p>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="d-none d-md-block">
                                <div class="filters">
                                    <div class="filter-item">
                                        <h3>Género</h3>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1"><label class="form-check-label" for="formCheck-1">Terror</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2"><label class="form-check-label" for="formCheck-2">Aventura</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3"><label class="form-check-label" for="formCheck-3">Drama</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-4"><label class="form-check-label" for="formCheck-4">Acción</label></div>
                                    </div>
                                    <div class="filter-item"></div>
                                    <div class="filter-item">
                                        <h3></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="d-md-none"><a class="btn btn-link d-md-none filter-collapse" data-toggle="collapse" aria-expanded="false" aria-controls="filters" href="#filters" role="button">Filters<i class="icon-arrow-down filter-caret"></i></a>
                                <div class="collapse"
                                    id="filters">
                                    <div class="filters">
                                        <div class="filter-item">
                                            <h3>GÃ©nero</h3>
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1"><label class="form-check-label" for="formCheck-1">Terror</label></div>
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2"><label class="form-check-label" for="formCheck-2">Aventura</label></div>
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3"><label class="form-check-label" for="formCheck-3">Drama</label></div>
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-4"><label class="form-check-label" for="formCheck-4">AcciÃ³n</label></div>
                                        </div>
                                        <div class="filter-item"></div>
                                        <div class="filter-item">
                                            <h3></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="products">
                                <div class="row no-gutters">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/20b509349b490a15d4c4e7cc1008c0fe.jpg"></a></div>
                                            <div class="product-name"><a href="#">Thorn El Retorno</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$50</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/cabcb2444022fd5364d6a0447de76c0b--sea-of-monsters-logan-lerman.jpg"></a></div>
                                            <div class="product-name"><a href="#">Percy Jackson</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$70</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/images.jpeg"></a></div>
                                            <div class="product-name"><a href="#">Iron Man</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$40</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/cabcb2444022fd5364d6a0447de76c0b--sea-of-monsters-logan-lerman.jpg"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$70</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/images.jpeg"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$40</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/20b509349b490a15d4c4e7cc1008c0fe.jpg"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$50</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/images.jpeg"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$40</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/20b509349b490a15d4c4e7cc1008c0fe.jpg"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$50</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/cabcb2444022fd5364d6a0447de76c0b--sea-of-monsters-logan-lerman.jpg"></a><a href="#"></a></div>
                                            <div class="product-name"><a href="#">Lorem ipsum dolor sit amet</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star.svg"><img src="assets/img/star-half-empty.svg"><img src="assets/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$70</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <nav>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">Â«</span></a></li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">Â»</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
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
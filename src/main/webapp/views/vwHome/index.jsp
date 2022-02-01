<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Online Shopping</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow mb-4">
        <a class="navbar-brand" href="/home/">
            <i class="fa fa-home fa-lg" aria-hidden="true"></i>
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="navbar-nav mr-auto">
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
            <div class="navbar-nav ml-auto">
                <a type="button" href="#" class="btn btn-outline-success mr-3">Đăng ký</a>
                <a type="button" href="#" class="btn btn-outline-danger">Đăng nhập</a>
            </div>
        </div>
    </nav>

    <div class="text-center mb-4 categories">
        <div class="btn-group">
            <button type="button" class="btn btn-outline-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">
                Đồ công nghệ
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
            </div>
        </div>

        <div class="btn-group ml-4">
            <button type="button" class="btn btn-outline-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">
                Thời trang
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
            </div>
        </div>
        <div class="btn-group ml-4">
            <button type="button" class="btn btn-outline-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">
                Giày
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
            </div>
        </div>
        <div class="btn-group ml-4">
            <button type="button" class="btn btn-outline-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">
                Gia dụng
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                Sản Phẩm Đấu Giá Nhiều Nhất
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Some representative placeholder content for the third slide.</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row row-cols-1 row-cols-md-2">
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid mt-4">
        <div class="card">
            <div class="card-header">
                Sản Phẩm Giá Cao Nhất
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Some representative placeholder content for the third slide.</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row row-cols-1 row-cols-md-2">
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid mt-4">
        <div class="card">
            <div class="card-header">
                Sản Phẩm Nhiều Lượt Xem Nhất
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://media.techz.vn/resize_x650x/media2019/upload2019/2021/09/23/surface-laptop-studio-1.jpeg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Some representative placeholder content for the third slide.</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions"
                                    data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row row-cols-1 row-cols-md-2">
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col mb-4">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">This is a longer card with supporting text below as a
                                            natural lead-in to additional content. This content is a little bit
                                            longer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="text-center text-white" style="background-color: #f8f8f8;">
        <div class="container pt-4">
            <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-facebook-f"></i>
                </a>

                <!-- Twitter -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-twitter"></i>
                </a>

                <!-- Google -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-google"></i>
                </a>

                <!-- Instagram -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-instagram"></i>
                </a>

                <!-- Linkedin -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-linkedin"></i>
                </a>
                <!-- Github -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark">
                    <i class="fa fa-github"></i>
                </a>
            </section>
        </div>
        <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2022 Copyright:
            <a class="text-dark" href="https://mdbootstrap.com/">OnlineShopping.com</a>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
            integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
            crossorigin="anonymous"></script>
</body>
</html>


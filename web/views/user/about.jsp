<%-- 
    Document   : about
    Created on : Sep 21, 2022, 3:02:29 PM
    Author     : Lenovo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="utf-8">
        <title>Educenter</title>
        <!-- mobile responsive meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- ** Plugins Needed for the Project ** -->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
        <!-- slick slider -->
        <link rel="stylesheet" href="plugins/slick/slick.css">
        <!-- themefy-icon -->
        <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
        <!-- animation css -->
        <link rel="stylesheet" href="plugins/animate/animate.css">
        <!-- aos -->
        <link rel="stylesheet" href="plugins/aos/aos.css">
        <!-- venobox popup -->
        <link rel="stylesheet" href="plugins/venobox/venobox.css">

        <!-- Main Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <!--Favicon-->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">

    </head>

    <body>

        <%@include file="views/user/header.jsp" %>
        <!-- Modal -->
        <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Register</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="login">
                            <form action="#" class="row">
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="signupPhone" name="signupPhone" placeholder="Phone">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="signupName" name="signupName" placeholder="Name">
                                </div>
                                <div class="col-12">
                                    <input type="email" class="form-control mb-3" id="signupEmail" name="signupEmail" placeholder="Email">
                                </div>
                                <div class="col-12">
                                    <input type="password" class="form-control mb-3" id="signupPassword" name="signupPassword" placeholder="Password">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">SIGN UP</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Login</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="#" class="row">
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="loginPhone" name="loginPhone" placeholder="Phone">
                            </div>
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="loginName" name="loginName" placeholder="Name">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password">
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">LOGIN</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">About Us</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- about -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <img class="img-fluid w-100 mb-4" src="images/about/about-page.jpg" alt="about image">
                        <h2 class="section-title">ABOUT OUR JOURNY</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Saepe ipsa illo quod veritatis, magni debitis fugiat dolore voluptates! Consequatur, aliquid. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat perferendis sint optio similique. Et amet magni facilis vero corporis quos.</p>
                        <p>exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum a, facere fugit error accusamus est officiis vero in, nostrum laboriosam corrupti explicabo, cumque repudiandae deleniti perspiciatis quae consectetur enim. Laboriosam!</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /about -->

        <!-- funfacts -->
        <section class="section-sm bg-primary">
            <div class="container">
                <div class="row">
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="60">0</h2>
                            <h5 class="text-white">TEACHERS</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="50">0</h2>
                            <h5 class="text-white">COURSES</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="1000">0</h2>
                            <h5 class="text-white">STUDENTS</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="3737">0</h2>
                            <h5 class="text-white">SATISFIED CLIENT</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /funfacts -->

        <!-- success story -->
        <section class="section bg-cover" data-background="images/backgrounds/success-story.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-4 position-relative success-video">
                        <a class="play-btn venobox" href="https://youtu.be/nA1Aqp0sPQo" data-vbtype="video">
                            <i class="ti-control-play"></i>
                        </a>
                    </div>
                    <div class="col-lg-6 col-sm-8">
                        <div class="bg-white p-5">
                            <h2 class="section-title">Success Stories</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /success story -->

        <!-- teachers -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <h2 class="section-title">Our Teachers</h2>
                    </div>
                    <!-- teacher -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/teachers/teacher-1.jpg" alt="teacher">
                            <div class="card-body">
                                <a href="teacher-single.jsp">
                                    <h4 class="card-title">Jacke Masito</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Teacher</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- teacher -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/teachers/teacher-2.jpg" alt="teacher">
                            <div class="card-body">
                                <a href="teacher-single.jsp">
                                    <h4 class="card-title">Clark Malik</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Teacher</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- teacher -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/teachers/teacher-3.jpg" alt="teacher">
                            <div class="card-body">
                                <a href="teacher-single.jsp">
                                    <h4 class="card-title">John Doe</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Teacher</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /teachers -->

        <!-- footer -->
        <%@include file="views/user/footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <script src="plugins/jQuery/jquery.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="plugins/bootstrap/bootstrap.min.js"></script>
        <!-- slick slider -->
        <script src="plugins/slick/slick.min.js"></script>
        <!-- aos -->
        <script src="plugins/aos/aos.js"></script>
        <!-- venobox popup -->
        <script src="plugins/venobox/venobox.min.js"></script>
        <!-- mixitup filter -->
        <script src="plugins/mixitup/mixitup.min.js"></script>
        <!-- google map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
        <script src="plugins/google-map/gmap.js"></script>

        <!-- Main Script -->
        <script src="js/script.js"></script>

    </body>
</html>

<%-- 
    Document   : index
    Created on : Sep 21, 2022, 3:10:03 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <%@include file="headCSS.jsp" %>
    <body>
        <%@include file="header.jsp" %>

        <!--Slider-->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0"  class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1" ></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2" ></button>
            </div>
            <div style="background-color: #ffbc3b; padding-top: 1% " class="carousel-inner">
                <div  class="carousel-item active">
                    <img src="<%=request.getContextPath()%>/img/slider/slider1.png" alt="slider1" class="d-block" style="width:100%; height: auto">
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath()%>/img/slider/slider2.png" alt="slider2" class="d-block" style="width:100%; height: auto">
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath()%>/img/slider/slider3.png" alt="slider3" class="d-block" style="width:100%; height: auto">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
        <!-- slider -->



        <!-- about us -->
        <section class="section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 order-2 order-md-1">
                        <h2 class="section-title">About Educenter</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat </p>
                        <p>cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem</p>
                        <a href="about.jsp" class="btn btn-primary-outline">Learn more</a>
                    </div>
                    <div class="col-md-6 order-1 order-md-2 mb-4 mb-md-0">
                        <img class="img-fluid w-100" src="images/about/about-us.jpg" alt="about image">
                    </div>
                </div>
            </div>
        </section>
        <!-- /about us -->

        <!-- courses -->
        <section class="section-sm">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex align-items-center section-title justify-content-between">
                            <h2 class="mb-0 text-nowrap mr-3">Our Course</h2>
                            <div class="border-top w-100 border-primary d-none d-sm-block"></div>
                            <div>
                                <a href="courses.jsp" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- course list -->
                <div class="row justify-content-center">
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-1.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Photography</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-2.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Programming</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-3.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Lifestyle Archives</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-4.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Complete Freelancing</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-5.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Branding Design</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                    <!-- course item -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card p-0 border-primary rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/courses/course-6.jpg" alt="course thumb">
                            <div class="card-body">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                    <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                </ul>
                                <a href="course-single.jsp">
                                    <h4 class="card-title">Art Design</h4>
                                </a>
                                <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna.</p>
                                <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /course list -->
                <!-- mobile see all button -->
                <div class="row">
                    <div class="col-12 text-center">
                        <a href="courses.jsp" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- /courses -->

        <!-- cta -->
        <section class="section bg-primary">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h6 class="text-white font-secondary mb-0">Click to Join the Advance Workshop</h6>
                        <h2 class="section-title text-white">Training In Advannce Networking</h2>
                        <a href="contact.jsp" class="btn btn-secondary">join now</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- /cta -->



        <!-- Mentors -->
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
                                <p>Teacher</p>
                                <ul class="list-inline">
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
                                </ul>
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
                                <p>Teacher</p>
                                <ul class="list-inline">
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
                                    <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
                                </ul>
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
                                <p>Teacher</p>
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
        </section>
        <!-- /Mentors -->

        <!-- blog -->
        <section class="section pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="section-title">Latest News</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <!-- blog post -->
                    <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/blog/post-1.jpg" alt="Post thumb">
                            <div class="card-body">
                                <!-- post meta -->
                                <ul class="list-inline mb-3">
                                    <!-- post date -->
                                    <li class="list-inline-item mr-3 ml-0">August 28, 2019</li>
                                    <!-- author -->
                                    <li class="list-inline-item mr-3 ml-0">By Jonathon</li>
                                </ul>
                                <a href="blog-single.jsp">
                                    <h4 class="card-title">The Expenses You Are Thinking.</h4>
                                </a>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>
                                <a href="blog-single.jsp" class="btn btn-primary btn-sm">read more</a>
                            </div>
                        </div>
                    </article>
                    <!-- blog post -->
                    <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/blog/post-2.jpg" alt="Post thumb">
                            <div class="card-body">
                                <!-- post meta -->
                                <ul class="list-inline mb-3">
                                    <!-- post date -->
                                    <li class="list-inline-item mr-3 ml-0">August 13, 2019</li>
                                    <!-- author -->
                                    <li class="list-inline-item mr-3 ml-0">By Jonathon Drew</li>
                                </ul>
                                <a href="blog-single.jsp">
                                    <h4 class="card-title">Tips to Succeed in an Online Course</h4>
                                </a>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>
                                <a href="blog-single.jsp" class="btn btn-primary btn-sm">read more</a>
                            </div>
                        </div>
                    </article>
                    <!-- blog post -->
                    <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                        <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="images/blog/post-3.jpg" alt="Post thumb">
                            <div class="card-body">
                                <!-- post meta -->
                                <ul class="list-inline mb-3">
                                    <!-- post date -->
                                    <li class="list-inline-item mr-3 ml-0">August 24, 2018</li>
                                    <!-- author -->
                                    <li class="list-inline-item mr-3 ml-0">By Alex Pitt</li>
                                </ul>
                                <a href="blog-single.jsp">
                                    <h4 class="card-title">Orientation Program for the new students</h4>
                                </a>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>
                                <a href="blog-single.jsp" class="btn btn-primary btn-sm">read more</a>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <!-- /blog -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>
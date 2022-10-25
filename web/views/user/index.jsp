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
    <style>
        .btn-primary {
            --bs-btn-color: #ffbc3b;
            --bs-btn-bg: #ffbc3b;
            --bs-btn-border-color: #ffbc3b;
            --bs-btn-hover-color: #ffbc3b;
            --bs-btn-hover-bg: #ffbc3b;
            --bs-btn-hover-border-color: #ffbc3b;
            --bs-btn-focus-shadow-rgb: 49,132,253;
            --bs-btn-active-color: #fff;
            --bs-btn-active-bg: #ffbc3b;
            --bs-btn-active-border-color: #ffbc3b;
            --bs-btn-active-shadow: inset 0 3px 5pxrgba(0, 0, 0, 0.125);
            --bs-btn-disabled-color: #ffbc3b;
            --bs-btn-disabled-bg: #ffbc3b;
            --bs-btn-disabled-border-color: #ffbc3b;
        }
        .btn{
            --bs-btn-hover-border-color: #ffbc3b;

        }

        .card-body p
        {
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
            display: -webkit-box
        }
    </style>
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
            <div style="padding: 0px 7%" class="container-fluid">
                <div  " class="row align-items-center">
                    <div class="col-md-7 order-2 order-md-1">
                        <h2 style="padding-bottom: 50px" class="section-title">About Happy Programming</h2>
                        <p style="padding-bottom: 5px;  line-height: 40px" >Happy programming is a website built based on the community's need to find mentors. What is a Mentor can help you gain professional knowledge and develop skills to achieve your personal career goals. Mentors can also provide value by connecting mentees with industry leaders and trends.</p>
                        <p style="padding-bottom: 50px;  line-height: 40px">Mentors can also practice their leadership and growth skills by helping young, inexperienced individuals in their industry.A career mentor will give you valuable advice and insight into their journey in your chosen field.</p>
                        <p style="padding-bottom: 50px;  line-height: 40px"> They can perfectly connect you with people in their network that can provide the opportunity to build your own network, as well as provide you with future job opportunities.</p>

                        <a href="about.jsp" class="btn btn-primary-outline">Learn more</a>
                    </div>
                    <div class="col-md-5 order-2 order-md-1">
                        <img src="<%=request.getContextPath()%>/img/slider/about.png" alt="about" class="d-block" style="width:100%; height: auto ">
                    </div>
                </div>
            </div>
        </section>
        <!-- /about us -->

        <!-- courses -->
        <section class="section-sm">
            <div style="padding: 0px 7%" class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex align-items-center section-title justify-content-between">
                            <h2 class="mb-0 text-nowrap mr-3">Our Course</h2>
                            <div class="border-top w-100 border-primary d-none d-sm-block"></div>
                            <div>
                                <a href="skills.jsp" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- course list -->
                <div  class="row justify-content-center">
                    <!-- course item -->
                    <c:forEach  items="${listSkill}" var="i" begin="0" end="2" >
                        <div  style="" class="col-lg-4 col-sm-6 mb-5">
                            <div class="card p-0 border-primary rounded-0 hover-shadow">
                                <div class="card-body">
                                    <a href="course-single.jsp">
                                        <h4 class="card-title">${i.getName()}</h4>
                                    </a>
                                    <p class="card-text mb-4"> Our skills offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                                    <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <!-- /course list -->
                <!-- mobile see all button -->
                <div class="row">
                    <div class="col-12 text-center">
                        <a href="skills.jsp" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- /courses -->

        <!-- cta -->
        <section class="section bg-primary">
            <div style="padding: 0px 7%" class="container-fluid">
                <div class="row">
                    <div class="col-12 text-center">
                        <h5 style="margin-bottom: 30px" class="text-white font-secondary mb-0">Click to join Happy Programming courses</h5>
                        <h2 class="section-title text-white">With a team of top, experienced Mentors</h2>
                        <c:if test="${sessionScope.Account == null}" >
                            <a href="login.jsp" class="btn btn-secondary">join now</a>
                        </c:if>
                        <c:if test="${sessionScope.Account != null}" >
                            <a href="<%=request.getContextPath()%>/views/user/mentorSuggest.jsp" class="btn btn-secondary">join now</a>
                        </c:if>

                    </div>
                </div>
            </div>
        </section>
        <!-- /cta -->



        <!-- Mentors -->
        <section class="section">
            <div style="padding: 0px 7%" class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <h2 class="section-title">Our Teachers</h2>
                    </div>
                    <c:forEach items="${sessionScope.listTeacher}" var="i" begin="1" end="3">
                        <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                            <div class="card border-0 rounded-0 hover-shadow">
                                <img style="object-fit: cover; clip-path: circle(150px at 50% 50%);" height="300px" class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/${i.getAvatar()}" alt="teacher">
                                <div class="card-body">
                                    <a href="<%=request.getContextPath()%>/viewCV?mentorID=${i.getID()}">
                                        <h4 class="card-title">${i.getFirstName()} ${i.getLastName()}</h4>
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
                    </c:forEach>

                    </section>
                    <!-- /Mentors -->

                    <!-- blog -->
                    <section class="section pt-0">
                        <div style="padding: 0px 7%" class="container-fluid">
                            <div class="d-flex align-items-center section-title justify-content-between">
                                <h2 class="mb-0 text-nowrap mr-3">Latest News</h2>
                                <div class="border-top w-100 border-primary d-none d-sm-block"></div>
                                <div>
                                    <a href="<%=request.getContextPath()%>/allPost" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <!-- blog post -->
                                <c:forEach items="${sessionScope.listPost}" var="i" begin="${listPost.size()-3}" end="${listPost.size()-1}">
                                    <article  class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                                        <div  class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                                            <div class="card-body">
                                                <a href="<%=request.getContextPath()%>/viewPost?postID=${i.getID()}">
                                                    <h4 style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis" class="card-text" class="card-title">${i.getTitle()}</h4>
                                                </a>
                                                <p style="-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden; display: -webkit-box" class="card-text">${i.getContent()}</p>
                                                <a href="<%=request.getContextPath()%>/viewPost?postID=${i.getID()}" class="btn btn-primary btn-sm">read more</a>
                                            </div>
                                        </div>
                                    </article>
                                </c:forEach>
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
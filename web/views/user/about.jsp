<%-- 
    Document   : about
    Created on : Sep 21, 2022, 3:02:29 PM
    Author     : Lenovo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS.jsp" %>
    <style>
        #box {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
            scroll-snap-type: x proximity;
            -webkit-overflow-scrolling: touch;
        }
        #item{
            scroll-snap-align: start;
        }
        #box::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }
        #box::-webkit-scrollbar-thumb {
            background: black;
            border-radius: 10px;
        }
        #box::-webkit-scrollbar-track {
            background: transparent;
        }
        img{
          object-fit: cover; 
        }
    </style>
    <body>

        <%@include file="header.jsp" %>
        <!-- Modal -->

        <!-- page title -->
        <section class="page-title-section overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">About Us</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our website offer a good communication between student who struggle with software engineering major and mentor on our website </p>
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
                        <h2 class="section-title">ABOUT OUR JOURNEY</h2>
                        <p>Many people nowadays are interested in having their own mentor to accelerate their learning. This is even more important in the age of the Internet and instant connectivity. This project is aimed at developing an online system which allows mentors, mentees and other actors to connect online and allow mentors to support mentees to learn programming. The project is a web application that users can use to make the connection process between all parties faster and more convenient.</p>
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
                            <h2 class="count text-white" data-count="${listUserProfile.size()}">0</h2>
                            <h5 class="text-white">USER</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="${listRequest.size()}">0</h2>
                            <h5 class="text-white">REQUEST</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="${listInv.size()}">0</h2>
                            <h5 class="text-white">INVITATION</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="${listResponse.size()}">0</h2>
                            <h5 class="text-white">RESPONSE</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /funfacts -->
        <!-- teachers -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center" id="box">
                    <div class="col-12">
                        <h2 class="section-title">Our Member</h2>
                    </div>
                    <!-- member -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0" id="item">
                        <div class="card border-0 rounded-0 hover-shadow" >
                            <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p2.png" style=" width:auto; height:330px;" alt="member">
                            <div class="card-body">
                                <a href="teacher-single.html">
                                    <h4 class="card-title">Ly Hong Ngoc</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Leader</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- member -->
                    <!-- member -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0" id="item">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p2.png" style=" width:auto; height:330px;" alt="member">
                            <div class="card-body">
                                <a href="teacher-single.html">
                                    <h4 class="card-title">Tran Ngoc Cuong</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Member</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- member -->
                    <!-- member -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0" id="item">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p2.png" style="width: 330px; height: 330px" alt="member">
                            <div class="card-body">
                                <a href="teacher-single.html">
                                    <h4 class="card-title">Ngo Minh Tien</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Member</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- member -->
                    <!-- member -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0" id="item">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p2.png" style="width: 330px; height: 330px" alt="member">
                            <div class="card-body">
                                <a href="teacher-single.html">
                                    <h4 class="card-title">Nguyen Xuan Hung</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Teacher</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- member -->
                    <!-- member -->
                    <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0" id="item">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p2.png" style="width: 330px; height: 330px" alt="teacher">
                            <div class="card-body">
                                <a href="teacher-single.html">
                                    <h4 class="card-title">Dang Nhat Minh</h4>
                                </a>
                                <div class="d-flex justify-content-between">
                                    <span>Teacher</span>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                                        <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- member -->
                </div>
            </div>
        </section>
        <!-- /teachers -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>

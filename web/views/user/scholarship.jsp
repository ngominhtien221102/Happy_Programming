<%-- 
    Document   : scholarship
    Created on : Sep 21, 2022, 3:34:34 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS.jsp" %>

    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Scholarship</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- scholarship -->
        <section class="section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6 mb-4 mb-md-0">
                        <img class="img-fluid" src="images/scholarship/scholarship.jpg" alt="scholarship news">
                    </div>
                    <div class="col-md-6">
                        <h2>SCHOLARSHIPS NEWS</h2>
                        <strong class="mb-4 d-block"><i>Our campuses are living laboratories for sustainability.</i></strong>
                        <p>Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor incididunt ut labore
                            et.dolore magna aliquauis aute irure dolor.
                            in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor, sit
                            amet consectetur adipisicing elit. Quas cum ut ab nesciunt distinctio maxime expedita fugit laborum? Aliquid,
                            quia.</p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <!-- scholarship item -->
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="card rounded-0 hover-shadow border-top-0 border-left-0 border-right-0">
                            <img class="card-img-top rounded-0" src="images/scholarship/scholarship-item-1.jpg" alt="scholarship-thumb">
                            <div class="card-body">
                                <p class="mb-1">Engineering</p>
                                <h4 class="card-title mb-3">CHEMICAL ENGINEERING</h4>
                                <ul class="list-styled">
                                    <li>institutes</li>
                                    <li>Smart-affiliated research</li>
                                    <li>Digital Access to Scholarship</li>
                                    <li>Smart Catalyst</li>
                                    <li>Smart Library Portal</li>
                                    <li>Smart research programs</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- scholarship item -->
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="card rounded-0 hover-shadow border-top-0 border-left-0 border-right-0">
                            <img class="card-img-top rounded-0" src="images/scholarship/scholarship-item-2.jpg" alt="scholarship-thumb">
                            <div class="card-body">
                                <p class="mb-1">Design & Arts</p>
                                <h4 class="card-title mb-3">MUSIC & ARTS</h4>
                                <ul class="list-styled">
                                    <li>institutes</li>
                                    <li>Smart-affiliated research</li>
                                    <li>Digital Access to Scholarship</li>
                                    <li>Smart Catalyst</li>
                                    <li>Smart Library Portal</li>
                                    <li>Smart research programs</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- scholarship item -->
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="card rounded-0 hover-shadow border-top-0 border-left-0 border-right-0">
                            <img class="card-img-top rounded-0" src="images/scholarship/scholarship-item-3.jpg" alt="scholarship-thumb">
                            <div class="card-body">
                                <p class="mb-1">Design & Arts</p>
                                <h4 class="card-title mb-3">GRAPHICS DESIGN</h4>
                                <ul class="list-styled">
                                    <li>institutes</li>
                                    <li>Smart-affiliated research</li>
                                    <li>Digital Access to Scholarship</li>
                                    <li>Smart Catalyst</li>
                                    <li>Smart Library Portal</li>
                                    <li>Smart research programs</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /scholarship -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>
<%-- 
    Document   : events
    Created on : Sep 21, 2022, 3:09:32 PM
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
        <%@include file="modal.jsp" %>

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Upcoming Events</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- courses -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-1.jpg" alt="event thumb">
                                <div class="card-date"><span>18</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Firefly training in trauma-informed yoga</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-2.jpg" alt="event thumb">
                                <div class="card-date"><span>21</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Research seminar in clinical science.</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-3.jpg" alt="event thumb">
                                <div class="card-date"><span>23</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Toward a public philosophy of justice</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-1.jpg" alt="event thumb">
                                <div class="card-date"><span>18</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Lorem ipsum dolor amet, consectetur adipisicing.</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-2.jpg" alt="event thumb">
                                <div class="card-date"><span>21</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Inequality seminar returns spring term</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- event -->
                    <div class="col-lg-4 col-sm-6 mb-5">
                        <div class="card border-0 rounded-0 hover-shadow">
                            <div class="card-img position-relative">
                                <img class="card-img-top rounded-0" src="images/events/event-3.jpg" alt="event thumb">
                                <div class="card-date"><span>23</span><br>December</div>
                            </div>
                            <div class="card-body">
                                <!-- location -->
                                <p><i class="ti-location-pin text-primary mr-2"></i>Dhanmondi Lake, Dhaka</p>
                                <a href="event-single.jsp">
                                    <h4 class="card-title">Social media and behavior economics conference</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /courses -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>

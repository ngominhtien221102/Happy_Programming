<%-- 
    Document   : notice
    Created on : Sep 21, 2022, 3:20:49 PM
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
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Notice</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- notice -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <ul class="list-unstyled">
                            <!-- notice item -->
                            <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
                                <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">30</span> APR,2019</div>
                                <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
                                    <a href="notice-single.jsp" class="h4 mb-3 d-block">Teaching Materials and Testing Methods</a>
                                    <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
                                </div>
                                <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
                            </li>
                            <!-- notice item -->
                            <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
                                <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">27</span> APR,2019</div>
                                <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
                                    <a href="notice-single.jsp" class="h4 mb-3 d-block">Biltong sirloin sausage brisket porchetta prosciutto</a>
                                    <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
                                </div>
                                <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
                            </li>
                            <!-- notice item -->
                            <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
                                <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">25</span> APR,2019</div>
                                <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
                                    <a href="notice-single.jsp" class="h4 mb-3 d-block">Teaching Materials and Testing Methods</a>
                                    <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
                                </div>
                                <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
                            </li>
                            <!-- notice item -->
                            <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
                                <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">23</span> APR,2019</div>
                                <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
                                    <a href="notice-single.jsp" class="h4 mb-3 d-block">Biltong sirloin sausage brisket porchetta prosciutto</a>
                                    <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
                                </div>
                                <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- /notice -->


        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>

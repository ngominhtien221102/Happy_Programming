<%-- 
    Document   : teacher
    Created on : Sep 21, 2022, 3:38:12 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS2.jsp" %>
    <style>
        .img-fluid {
            max-width: 60%;
            height: auto;
            margin-left: 20%;
        }

        img {
            vertical-align: middle;
            border: 0px;
            border-radius: 100%;
            margin: 0px auto;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->
        <%@include file="sidebar.jsp" %>
        <div class="col-10">
            <!-- teachers -->
            <section class="section" style="padding-top: 200px;">
                <div class="container">
                    <div class="row" >
                        <div class="col-md-5 mb-5">
                            <img class="img-fluid w-100" src="<%=request.getContextPath()%>/template1/images/teachers/teacher-1.jpg" alt="teacher">
                        </div>
                        <div class="col-md-6 mb-5">
                            <h3>Name: Tran Ngoc Cuong</h3>


                            <div class="row" style="margin-top:20px">
                                <div class="col-md-6 mb-5 mb-md-0">
                                    <h4 class="mb-4">CONTACT INFO:</h4>
                                    <ul class="list-unstyled">

                                        <li class="mb-3"><a class="text-color" href="mailto:johndoe@email.com"><i class="ti-email mr-2"></i>Email: johndoe@email.com</a></li>
                                        <li class="mb-3"><a class="text-color" href="callto:+120345876"><i class="ti-mobile mr-2"></i>Phone: 0973245766</a></li>
                                        <li class="mb-3"><a class="text-color" href="#"><i class="ti-user mr-2"></i>Gender: Male</a></li>
                                        <li class="mb-3"><a class="text-color" href="#"><i class="ti-calendar mr-2"></i>Birthday: 25/10/2002</a></li>
                                        <li class="mb-3"><a class="text-color" href="#"><i class="ti-alarm-clock mr-2"></i>Created at: 25/9/2022</a></li>
                                        <li class="mb-3"><a class="text-color" href="#"><i class="ti-location-pin mr-2"></i>Address: 1313 Boulevard
                                                Cremazie,Quebec</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row justify-content-center">

                        <!-- course item -->

                        <!-- course item -->

                        <!-- course item -->

                    </div>
                </div>
            </section>
            <!-- /teachers -->
        </div>
    </div>



    <!-- footer -->
    <%@include file="footer.jsp" %>
    <!-- /footer -->

    <!-- jQuery -->
    <%@include file="scriptJS.jsp" %>

</body>
</html>

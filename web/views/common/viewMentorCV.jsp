

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="../user/headCSS2.jsp" %>

    <body>
        <!-- header -->
        <%@include file="../user/header.jsp" %>
        <!-- /header -->

        <!-- teachers -->
        <section class="section" style="padding-top: 160px;">
            <div class="container">
                <div class="row" >
                    <div class="col-md-5 mb-5">
                        <img class="img-fluid w-100" src="<%=request.getContextPath()%>/template1/images/teachers/teacher-1.jpg" alt="teacher">
                        <br><br>
                        <a href="<%=request.getContextPath()%>/views/user/createInvitation.jsp">
                            <input type="submit" value="Invite" class="btn btn-primary btn-user btn-block" /></a>
                    </div>
                    <div class="col-md-6 mb-5 row">
                        <h3 class="col-md-12 ">John Doe</h3>
                        <div class="col-md-6 mb-5">
                            <h6 class="text-color">Gender:</h6>
                        </div >
                        <div class="col-md-6 mb-5"> 
                            <h6 class="text-color">DOB:</h6>
                        </div>
                        <h4 class="col-md-12 ">INTRODUCTION</h4>
                        <p class="mb-5"> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque accusamus tenetur ea harum
                            delectus ab consequatur excepturi, odit qui in quo quia voluptate nam optio, culpa aspernatur. Error placeat
                            iusto officia voluptas quae.</p>
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="mb-4">CONTACT INFO:</h4>
                                <ul class="list-unstyled">
                                    <li class="mb-3"><a class="text-color" href="mailto:johndoe@email.com"><i class="ti-email mr-2"></i>johndoe@email.com</a></li>

                                    <li class="mb-3"><a class="text-color" href="#"><i class="ti-location-pin mr-2"></i>1313 Boulevard
                                            Cremazie,Quebec</a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-12">
                        <h4 class="mb-4">INTRODUCTION</h4>
                        <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                            nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                            anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12">
                        <h4 class="mb-4">SKILL</h4>
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
            </div>
        </section>
        <!-- /teachers -->

        <!-- footer -->
        <%@include file="../user/footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="../user/scriptJS.jsp" %>

    </body>
</html>

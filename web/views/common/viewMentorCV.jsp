

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="../user/headCSS2.jsp" %>
    <%@include file="../user/rateCSS.jsp" %>  

    <body>
        <!-- header -->
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div>
            <!-- teachers -->
            <section class="section" style="padding-top: 160px;">
                <div class="container">
                    <div class="row" >
                        <div class="col-md-5 ">
                            <img class="img-fluid w-100" src="<%=request.getContextPath()%>/template1/images/teachers/teacher-1.jpg" alt="teacher">
                            <br><br>
                            <a href="<%=request.getContextPath()%>/views/user/createInvitation.jsp">
                                <input type="submit" value="Invite" class="btn btn-primary btn-user btn-block" /></a>
                        </div>
                        <div class="col-md-7 row">
                            <h4 class="col-md-12 ">${mentorProfile.firstName} ${mentorProfile.lastName}</h4>
                            <div class="col-md-6 mb-5">
                                <h6 class="text-color">Gender: ${mentorProfile.getGender()} </h6>
                            </div >
                            <div class="col-md-6 mb-5"> 
                                <h6 class="text-color">DOB: ${mentorProfile.getDob()}</h6>
                            </div>
                            <h4 class="col-md-12 ">INTRODUCTION</h4>
                            <p class="col-md-12"> ${mentorCV.introduction}</p>

                            <div class="col-md-12">
                                <h4 class="mb-4">CONTACT INFO:</h4>
                                <ul class="list-unstyled">
                                    <li class="mb-3"><a class="text-color" href="mailto:johndoe@email.com"><i class="ti-email mr-2"></i>${mentorProfile.email}</a></li>

                                    <li class="mb-3"><a class="text-color" href="#"><i class="ti-location-pin mr-2"></i>

                                            Address: ${xa} , ${huyen} , ${tinh}
                                        </a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="col-12" style="padding-top: 5%">
                            <h4 class="mb-4">SERVICE DESCRIPTION</h4>
                            <p class="mb-5">${mentorCV.serviceDescription}</p>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h4 class="mb-4">SKILL</h4>
                            <c:forEach items="${mentorCV.skillList}" var="s">
                                <p>${s.name}</p>
                            </c:forEach>
                        </div>
                    </div>
                    <!--Rate-->
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div class="well well-sm">
                                <div class="row">
                                    <div class="col-xs-12 col-md-6 text-center">
                                        <h1 class="rating-num">
                                            4.0</h1>
                                        <div class="rating">
                                            <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                                            </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                                            </span><span class="glyphicon glyphicon-star-empty"></span>
                                        </div>
                                        <div>
                                            <span class="glyphicon glyphicon-user"></span>1,050,008 total
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="row rating-desc">
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>5
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress progress-striped">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 5 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>4
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 4 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>3
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 3 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>2
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 2 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>1
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 1 -->
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--comment-->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                <p class="text-secondary text-center">15 Minutes Ago</p>
                            </div>
                            <div class="col-md-10">
                                <p>
                                    <a class="float-left" href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>Maniruzzaman Akash</strong></a>
                                    <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                    <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                    <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                    <span class="float-right"><i class="text-warning fa fa-star"></i></span>

                                </p>
                                <div class="clearfix"></div>
                                <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <p>
                                    <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
                                    <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                                </p>
                            </div>
                        </div>
                        <div class="card card-inner">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                        <p class="text-secondary text-center">15 Minutes Ago</p>
                                    </div>
                                    <div class="col-md-10">
                                        <p><a href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>Maniruzzaman Akash</strong></a></p>
                                        <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        <p>
                                            <a class="float-right btn btn-outline-primary ml-2">  <i class="fa fa-reply"></i> Reply</a>
                                            <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <!-- footer -->
            <%@include file="../user/footer.jsp" %>
            <!-- /footer -->

            <!-- jQuery -->
            <%@include file="../user/scriptJS.jsp" %>

    </body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="../user/headCSS2.jsp" %>
    <%@include file="../user/rateCSS.jsp" %>
    <style>

        img{
            object-fit: cover;
        }
        .main{
            margin-top:20px;
            color: #1a202c;
            text-align: left;
            background-color: #fff;
        }
        .main-body {
            padding: 15px;
        }
        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid rgba(0,0,0,.125);
            border-radius: .25rem;
        }

        .card-body {
            flex: 1 1 auto;
            min-height: 1px;
            padding: 1rem;
        }

        .gutters-sm {
            margin-right: -8px;
            margin-left: -8px;
        }

        .gutters-sm>.col, .gutters-sm>[class*=col-] {
            padding-right: 8px;
            padding-left: 8px;
        }
        .mb-3, .my-3 {
            margin-bottom: 1rem!important;
        }

        .bg-gray-300 {
            background-color: #e2e8f0;
        }
        .h-100 {
            height: 100%!important;
        }
        .shadow-none {
            box-shadow: none!important;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="../mentors/header.jsp" %>
        <!-- /header -->
        <div>
            <!-- teachers -->
            <section  class="main" ">
                <div id="content" class="row" >

                    <%@include file="mentorSidebar.jsp" %>

                    <div class="col-10 " style="padding-top: 90px; ">
                        <div class="main-body">
                            <div class="row gutters-sm">
                                <div class="col-md-4 mb-3">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="<%=request.getContextPath()%>/img/avatar/p${Account.ID}.png" onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'"alt="Admin" width="300" height="335">
                                        
                                        <a href="<%=request.getContextPath()%>/updateCV">
                                            <input type="submit" value="Update" class="btn btn-primary btn-user btn-block" style="padding: 10px 120px"/></a>

                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="card mb-3">
                                        <div class="card-body">
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Full Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    ${mentorProfile.firstName} ${mentorProfile.lastName}
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Email</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    ${mentorProfile.email}
                                                </div>
                                            </div>

                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">DOB</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    ${mentorProfile.getDob()}
                                                </div>
                                            </div>

                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Address</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    ${xa} , ${huyen} , ${tinh}
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Profession </h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    ${mentorCV.profession}
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Contact</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <ul class="list-unstyled">
                                                        <li class="list-inline-item"><a class="" href="https://www.facebook.com/themefisher"><i class="ti-facebook text-primary"></i></a></li>
                                                        <li class="list-inline-item"><a class="" href="https://www.twitter.com/themefisher"><i class="ti-twitter-alt text-primary"></i></a></li>
                                                        <li class="list-inline-item"><a class="" href="#"><i class="ti-instagram text-primary"></i></a></li>
                                                        <li class="list-inline-item"><a class="" href="https://dribbble.com/themefisher"><i class="ti-dribbble text-primary"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <hr>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div style="padding-left: 25px">
                                <div class="row mt-4" >
                                    <div class="col-12" >
                                        <h4 class="mb-4">SERVICE DESCRIPTION</h4>
                                        <p>${mentorCV.serviceDescription}</p>
                                    </div>
                                    <div class="col-12" >
                                        <h4 class="mb-4">INTRODUCTION</h4>
                                        <p class="text-left">
                                            ${mentorCV.serviceDescription}
                                        </p>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-12">
                                        <h4 class="mb-4">SKILL</h4>
                                        <c:forEach items="${mentorCV.skillList}" var="s" varStatus="loop">
                                            <form action="<%=request.getContextPath()%>/rate" method="">

                                                <p>
                                                    ${s.name}
                                                </p>

                                            </c:forEach>
                                        </form>

                                    </div>
                                </div>
                                <c:set value="${requestScope.rateHm}" var="rate"/>
                                <div id="rateAndCmt">   
                                    <!--Rate-->
                                    <h4 class="mb-4" style="margin-top: 30px">RATING</h4>
                                    <div class="well well-sm">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-6 text-center">
                                                <h1 class="rating-num" >
                                                    ${rate.get(mentorCV.ID)}</h1>
                                                <div>
                                                    <span class="ti ti-user" style="margin-right: 2%"></span>${rateTotal} total
                                                </div>
                                            </div>

                                            <div class="col-xs-12 col-md-6" >

                                                <div class="row rating-desc">
                                                    <div class="col-xs-3 col-md-3 text-right">
                                                        5<span class="ti ti-star"></span>
                                                    </div>
                                                    <div class="col-xs-8 col-md-9">
                                                        <div class="progress ">
                                                            <div class="progress-bar bg-success progress-striped" role="progressbar" aria-valuenow="20"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width: ${five}%">

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end 5 -->
                                                    <div class="col-xs-3 col-md-3 text-right">
                                                        4<span class="ti ti-star"></span>
                                                    </div>
                                                    <div class="col-xs-8 col-md-9">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-dark" role="progressbar" aria-valuenow="20"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width: ${four}%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end 4 -->
                                                    <div class="col-xs-3 col-md-3 text-right">
                                                        3<span class="ti ti-star"></span>
                                                    </div>
                                                    <div class="col-xs-8 col-md-9">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width: ${three}%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end 3 -->
                                                    <div class="col-xs-3 col-md-3 text-right">
                                                        2<span class="ti ti-star"></span>
                                                    </div>
                                                    <div class="col-xs-8 col-md-9">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="20"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width: ${two}%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end 2 -->
                                                    <div class="col-xs-3 col-md-3 text-right">
                                                        1<span class="ti ti-star"></span>
                                                    </div>
                                                    <div class="col-xs-8 col-md-9">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="80"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width: ${one}%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end 1 -->
                                                </div>
                                                <!-- end row -->

                                            </div>
                                        </div>
                                    </div>

                                    <!--comment-->
                                    <h4 class="mb-4" style="margin-top: 30px">COMMENT</h4>
                                    <!--show comment-->
                                    
                                    <c:forEach items="${sessionScope.listComment}" var="cmt">
                                        <c:if test="${mentorCV.ID == cmt.mentorID}">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-2 row" >
                                                        <div class="col-md-8"style="margin-left: 10px">
                                                            <c:forEach items="${listUserProfile}" var="user">
                                                                <c:if test="${user.ID == cmt.menteeID}">
                                                                    <img src="<%=request.getContextPath()%>/img/avatar/p${user.ID}.png" onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" style="height: 55px;
                                                                         width: 55px;" class="rounded-circle mr-2 "/>
                                                                </c:if>
                                                            </c:forEach>
                                                            <fmt:parseDate value="${cmt.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                                            <fmt:formatDate value="${Date}" var="Date1" pattern="dd/MM/yyyy"/> 
                                                            <span style="font-size: 12px" class="text-center">
                                                                ${Date1}
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-10" style="border-radius: 10px; background-color: #f0ede4">
                                                        <c:forEach items="${listUserProfile}" var="user">
                                                            <c:if test="${user.ID == cmt.menteeID}">
                                                                <p>
                                                                    <a class="float-left"><strong>${user.firstName}${user.lastName} </strong></a>
                                                                </p>
                                                            </c:if>
                                                        </c:forEach>
                                                        <div class="clearfix"></div>
                                                        <p>
                                                            ${cmt.content}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div> 
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- footer -->
            
            <!-- /footer -->

            <!-- jQuery -->
            <%@include file="../user/scriptJS.jsp" %>

    </body>
</html>



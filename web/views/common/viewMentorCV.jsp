

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            background-color: #a9bfde;
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
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div>
            <!-- teachers -->

            <section  class="main" style="padding-top: 160px; ">
                <div class="container">
                    <div class="main-body">
                        <div class="row gutters-sm">
                            <div class="col-md-4 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <img src="<%=request.getContextPath()%>/img/avatar/p1.png" alt="Admin" class="rounded-circle" width="150" height="150">
                                            <div class="mt-3">
                                                <h4>${mentorProfile.firstName} ${mentorProfile.lastName}</h4>
                                                <p class="text-secondary mb-1">Profession: ${mentorCV.profession}</p>
                                                <a href="<%=request.getContextPath()%>/views/user/createInvitation.jsp">
                                                    <input type="submit" value="Invite" class="btn btn-primary btn-user btn-block" style="padding: 5px"/></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-8">
                                <div class="card mb-3">
                                    <div class="card-body">
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
                        <div class="card mt-3">
                            <h4 class="mb-4" style="margin-top: 30px; margin-left: 30px ">INTRODUCTION</h4>
                            <p class="text-left" style="margin-left: 30px">As you know that the sole proprietorship and partnership forms of
                                organisation could not meet the growing needs of huge capital and
                                managerial skills required for increased scale of business and growing
                                economic activities. The liability of owner/owners of these organisations
                                is unlimited. In order to overcome these problems a new form of business
                                organisation known as company came into existance.</p>
                        </div>
                    </div>
                </div>
            </section>  
            <section >
                <div class="container">
                    <div class="row" >
                        <!--                        <div class="col-md-5 ">
                                                    <img class="img-fluid" src="<%=request.getContextPath()%>/img/avatar/p1.png" alt="teacher" style="height: 300px">
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
                                                            <li class="mb-3"><a class="text-color" href="mailto:${mentorProfile.email}"><i class="ti-email mr-2"></i>${mentorProfile.email}</a></li>
                        
                                                            <li class="mb-3"><a class="text-color" href="#"><i class="ti-location-pin mr-2"></i>
                        
                                                                    Address: ${xa} , ${huyen} , ${tinh}
                                                                </a></li>
                                                        </ul>
                                                    </div>
                        
                                                </div>-->
                        <div class="col-12" style="padding-top: 5%">
                            <h4 class="mb-4">SERVICE DESCRIPTION</h4>
                            <p class="mb-5">${mentorCV.serviceDescription}</p>
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
                                    <c:forEach items="${requestScope.invListAcept}" var="i" varStatus="loop">
                                        <c:if test="${s.ID == i.skillID}">
                                            <div class="rating">
                                                <button class=" btn-primary" type="submit"  style="border-color:#ffbc3b">Rate</button>
                                                <input style="" name="skillID" value="${s.ID}">
                                                <input style="" name="mentorID" value="${mentorCV.ID}">

                                                <input type="radio" name="rate" value="5" id="5${s.ID}"><label for="5${s.ID}">☆</label>
                                                <input type="radio" name="rate" value="4" id="4${s.ID}"><label for="4${s.ID}">☆</label>
                                                <input type="radio" name="rate" value="3" id="3${s.ID}"><label for="3${s.ID}">☆</label>
                                                <input type="radio" name="rate" value="2" id="2${s.ID}"><label for="2${s.ID}">☆</label>
                                                <input type="radio" name="rate" value="1" id="1${s.ID}"><label for="1${s.ID}">☆</label>

                                            </div>
                                        </c:if>
                                    </c:forEach>
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
                                <div class="col-xs-12 col-md-4 text-center">
                                    <h1 class="rating-num" >
                                        ${rate.get(mentorCV.ID)}</h1>
                                    <div>
                                        <span class="ti ti-user" style="margin-right: 2%"></span>${rateTotal} total
                                    </div>
                                </div>

                                <div class="col-xs-12 col-md-5">

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
                        <form action="<%=request.getContextPath()%>/comment" id="usrform" method="">

                            <div class="d-flex flex-row add-comment-section mt-4 mb-4">

                                <c:forEach items="${listUserProfile}" var="user">
                                    <c:if test="${Account.ID == user.ID}">
                                        <img class=" rounded-circle mr-2" onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" src="<%=request.getContextPath()%>/img/avatar/p.png"  style="height: 55px;
                                             width: 73px; margin-left: 20px;">
                                        <input name="content" type="text" class="form-control mr-3"  placeholder="Add comment">
                                        <input style="display: none" name="mentorID" value="${mentorCV.ID}">
                                        <button class="btn btn-primary" type="submit">Comment</button>
                                    </c:if>
                                </c:forEach>

                            </div>
                        </form>
                        <!--show comment-->

                        <c:forEach items="${sessionScope.listComment}" var="cmt">
                            <c:if test="${mentorCV.ID == cmt.mentorID}">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-2 row">
                                            <div class="col-md-8">
                                                <img src="<%=request.getContextPath()%>/img/avatar/p9.png" onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" style="height: 55px;
                                                     width: 55px;" class="rounded-circle mr-2 "/>
                                                <c:forEach items="${listUserProfile}" var="user">
                                                    <c:if test="${user.ID == cmt.menteeID}">

                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                            <p class="text-secondary text-center">15 Minutes Ago</p>
                                        </div>
                                        <div class="col-md-10">
                                            <c:forEach items="${listUserProfile}" var="user">
                                                <c:if test="${user.ID == cmt.menteeID}">
                                                    <p>
                                                        <a class="float-left"><strong>${user.lastName} ${user.firstName}</strong></a>
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
            </section>

            <!-- footer -->
            <%@include file="../user/footer.jsp" %>
            <!-- /footer -->

            <!-- jQuery -->
            <%@include file="../user/scriptJS.jsp" %>

    </body>
</html>



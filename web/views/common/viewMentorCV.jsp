

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
    </style>
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
                                    <li class="mb-3"><a class="text-color" href="mailto:${mentorProfile.email}"><i class="ti-email mr-2"></i>${mentorProfile.email}</a></li>

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
                                                <%--<c:if test="${}">--%>
                                                <input type="radio" name="rate" value="5" id="5${s.ID}"><label for="5${s.ID}">☆</label>
                                                <input class="checked" type="radio" name="rate" value="4"  id="4${s.ID}"><label for="4${s.ID}">☆</label>
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
                        <form action="<%=request.getContextPath()%>/comment" id="usrform" method="">

                            <div class="d-flex flex-row add-comment-section mt-4 mb-4">

                                <c:forEach items="${listUserProfile}" var="user">
                                    <c:if test="${Account.ID == user.ID}">
                                        <img class=" rounded-circle mr-2" onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" src="<%=request.getContextPath()%>/img/avatar/p1.png"  style="height: 55px;
                                             width: 73px; ">
                                    </c:if>
                                </c:forEach>
                                <input name="content" type="text" class="form-control mr-3"  placeholder="Add comment">
                                <input style="display: none" name="mentorID" value="${mentorCV.ID}">
                                <button class="btn btn-primary" type="submit">Comment</button>
                            </div>
                        </form>
                        <!--show comment-->


                        <c:forEach items="${sessionScope.listComment}" var="cmt">
                            <c:if test="${mentorCV.ID == cmt.mentorID}">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-2 row">
                                            <div class="col-md-8">
                                                <img src="<%=request.getContextPath()%>/img/avatar/p9.png" onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" style="height: 55px;
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



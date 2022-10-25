
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <style>
        .invite{
            border: 1px #dee2e6 solid;
            padding: 3% 5% 5% 5%;
            width: 60%;
            background-color: #f3f3f3;
            border-radius: 5px;
        }
        .content{
            word-wrap: break-word;
        }
        .signup__link{
            color: #1e1e4b;
            margin: 2%;
            border:  1px #ededf1 solid ;
            border-radius: 5px;
            padding: 2%;
            background: rgba(9,30,66,0.04);
        }
        .signup__link:hover{
            color: #ffbc3b;
            background: rgba(9,30,66,0.08);
        }
        .title{
            color: #ffbc3b;
        }

    </style>
    <body>
        <!-- header -->
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="mentorSidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <div class="container" style="display: flex">
                        <div class="invite" style="margin:30px auto;">
                            <h2 class="title text-align-center">Titile: ${Invitation.title} </h2><br>
                            <div class="ml-5" style="">
                                <h5 class=""><span class="font-weight-bold mr-2">From:</span>
                                    <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                        <c:if test="${user.ID == Invitation.menteeID}">
                                            ${user.firstName} ${user.lastName}
                                        </c:if>
                                    </c:forEach>
                                </h5><br>
                                <fmt:parseDate value="${Invitation.createdAt}" pattern="yyyy-MM-dd" var="Date1" />
                                <fmt:formatDate value="${Date1}" var="Date3" pattern="dd/MM/yyyy"/>        
                                <span class="font-weight-bold mr-2">Created at:</span> ${Date3}
                                <br><br>
                                <fmt:parseDate value="${Invitation.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                <span class="font-weight-bold mr-2">Deadline:</span> ${Date2}
                                <br><br>
                                <span class="font-weight-bold mr-2">Skill: </span>${HmSkill[Invitation.skillID]}
                                <br><br>
                                <span class="font-weight-bold mr-2">Status: </span>${listStatus[Invitation.statusID]}<br><br>
                                <span class="font-weight-bold mr-2">Content: </span>
                                <div class="content"><br>${Invitation.content}</div>
                                <br><br>
                            </div>
                            <c:set value="${requestScope.Invitation}" var="inv"/>
                            <div class="text-align-center row">
                                <div class="col-md-4">
                                    <c:if test="${inv.statusID == 2}">
                                        <a class="text-color" 
                                           href="<%=request.getContextPath()%>/updateStatus?id=${inv.ID}&statusID=${inv.statusID}&type=1&page=single">
                                            <input type="submit" value="Accept" class="btn btn-primary btn-user btn-block"/>
                                        </a>
                                    </c:if>
                                    <c:if test="${inv.statusID != 2}">
                                        <a class="text-color" >
                                            <input type="submit" value="Accept" class="btn btn-primary btn-user btn-block"/>
                                        </a>
                                    </c:if>
                                </div>
                                <div class="col-md-4">
                                    <c:if test="${inv.statusID == 2}">
                                        <a class="text-color" 
                                           href="<%=request.getContextPath()%>/updateStatus?id=${inv.ID}&statusID=${inv.statusID}&type=0&page=single">
                                            <input type="submit" value="Reject" class="btn btn-primary btn-user btn-block"/>
                                        </a>
                                    </c:if>
                                    <c:if test="${inv.statusID != 2}">
                                        <a class="text-color">
                                            <input type="submit" value="Reject" class="btn btn-primary btn-user btn-block"/>
                                        </a>
                                    </c:if>
                                </div>
                                <div class="col-md-4" >
                                    <c:if test="${inv.statusID == 1}">
                                        <a class="text-color " 
                                           href="<%=request.getContextPath()%>/updateStatus?id=${inv.ID}&statusID=${inv.statusID}&type=2&page=single">
                                            <input type="submit" value="Close" class="btn btn-primary btn-user btn-block"/>
                                        </a>
                                    </c:if>
                                    <c:if test="${inv.statusID != 1}">
                                        <a class="text-color" ><input type="submit" value="Close" class="btn btn-primary btn-user btn-block"/></a>
                                    </c:if>

                                </div>    
                            </div>
                        </div>
                    </div>
                    <!-- border -->
                    <!-- blog contect -->



                </section></div>
        </section>
    </div>
</div>
<!-- footer -->
<%@include file="footer.jsp" %>
<!-- /footer -->
<!-- jQuery -->
<%@include file="../user/scriptJS.jsp" %> 
<!-- /jQuery -->
</body>
</html>


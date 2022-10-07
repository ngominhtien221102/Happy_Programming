<%-- 
    Document   : ViewInvitationSingle
    Created on : Oct 6, 2022, 11:53:36 AM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <style>
        .section-sm{
            float: right;
            width: 80%;
            padding-top: 3%;
            margin-top: 2%;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <section class="section-sm bg-gray">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <ul class="list-inline">
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light">
                                    <span class="font-weight-bold mr-2">To:</span>
                                    <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                        <c:if test="${user.ID == Invitation.mentorID}">
                                            ${user.firstName} ${user.lastName}
                                        </c:if>
                                    </c:forEach>
                                </li>
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light">
                                    <fmt:parseDate value="${Invitation.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                    <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                    <span class="font-weight-bold mr-2">Deadline:</span> ${Date2}
                                </li><br>
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light" style="margin-top: 1%">    
                                    <span class="font-weight-bold mr-2">Skill: </span>${HmSkill[Invitation.skillID]}
                                </li><br>
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light" style="margin-top: 1%">    
                                    <span class="font-weight-bold mr-2">Status: </span>${listStatus[Invitation.statusID]}
                                </li>
                            </ul>
                        </div>
                        <!-- border -->
                        <!-- blog contect -->
                        <div class="col-12 mb-5">
                            <h2>${Invitation.title} </h2>
                            <p>${Invitation.content}</p>
                        </div>
                        <!-- comment box -->
                    </div>
                </div>
            </section>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %> 
        <!-- /jQuery -->
    </body>
</html>


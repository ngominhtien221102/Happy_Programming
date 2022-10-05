<%-- 
    Document   : viewRequest
    Created on : Oct 5, 2022, 11:25:31 AM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px">All Requests</h2>
                    <div class="container">
                        <div class="row">
                            <c:forEach items="${listRequest}" var="request" varStatus="loop">
                                <c:if test="${Account.ID == request.menteeID}">
                                    <!-- blog post -->
                                    <article class="col-lg-4 col-sm-6 mb-5">
                                        <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                                            <div class="card-body">
                                                <!-- post meta -->
                                                <ul class="list-inline mb-3">
                                                    <!-- post date -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                                        Created: ${Date2}</li>
                                                    <!-- to -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                                            <c:if test="${user.ID == request.mentorID}">
                                                                To: ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </ul>
                                                <a href="blog-single.jsp">
                                                    <h4 class="card-title">${request.title}</h4>
                                                </a>
                                                <a href="blog-single.jsp" class="btn btn-primary btn-sm">View</a>
                                            </div>
                                        </div>
                                    </article>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %> 
        <!-- /jQuery -->
    </body>
</html>

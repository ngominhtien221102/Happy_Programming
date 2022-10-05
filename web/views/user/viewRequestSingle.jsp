<%-- 
    Document   : viewRequesSingle
    Created on : Oct 5, 2022, 1:00:30 PM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS.jsp" %>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <section class="section-sm bg-gray" style="margin-top: 56px;">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <ul class="list-inline">
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light">
                                    <span class="font-weight-bold mr-2">To:</span>
                                <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                    <c:if test="${user.ID == request.mentorID}">
                                        ${user.firstName} ${user.lastName}
                                    </c:if>
                                </c:forEach>
                                </li>
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light">
                                    <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                    <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                    <span class="font-weight-bold mr-2">Created:</span> ${Date2}
                                </li>
                            </ul>
                        </div>
                        <!-- border -->
                        <div class="col-12 mt-4">
                            <div class="border-bottom border-primary"></div>
                        </div>
                        <!-- blog contect -->
                        <div class="col-12 mb-5">
                            <h2>${request.title} </h2>
                            <p>${request.content}</p>
                        </div>
                        <!-- comment box -->
                        <div class="col-12">
                            <form action="#" class="row">
                                <div class="col-12">
                                    <textarea name="comment" id="comment" class="form-control mb-4" placeholder="Comment Here..."></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" value="send" class="btn btn-primary">Post Response</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /blog details -->
            <!-- border -->
            <div class="col-12 mt-4">
                <div class="border-bottom border-primary"></div>
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

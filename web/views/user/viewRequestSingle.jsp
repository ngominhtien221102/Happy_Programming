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
    <%@include file="headCSS2.jsp" %>
    <style>
        .section-sm{
            float: right;
            width: 80%;
            padding-top: 3%;
            margin-top: 2%;
        }
        .card{
            width: 210%;
            margin: 2%;
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
                                    ${mentor.firstName} ${mentor.lastName}
                                </li>
                                <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light">
                                    <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                    <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                    <span class="font-weight-bold mr-2">Created:</span> ${Date2}
                                </li>
                            </ul>
                        </div>
                        <!-- border -->
                        <!-- blog contect -->

                        <div class="card-body" style="width: 100%;">
                            <h3 class="card-title">${request.title}</h3>
                            <p class="card-text">${request.content}</p>
                        </div>
                        <div class="col-sm-5 col-md-6 col-12 pb-4">
                            <h3 class="card-title">Response</h3>
                            <c:forEach items="${responseLst}" var="response" varStatus="loop">
                                <div class="card" style="">
                                    <div class="card-body">
                                        <span class="font-weight-bold mr-2">
                                            <c:if test="${mentor.ID == response.userId}">
                                                ${mentor.firstName} ${mentor.lastName}
                                            </c:if>
                                            <c:if test="${mentee.ID == response.userId}">
                                                ${mentee.firstName} ${mentee.lastName}
                                            </c:if>
                                        </span>
                                        <span>
                                            <fmt:parseDate value="${response.createAt}" pattern="yyyy-MM-dd" var="Date" />
                                            <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                            -  ${Date2}
                                        </span>

                                        <p class="card-text">${response.content}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- comment box -->
                        <div class="col-12">
                            <form action="#" class="row">
                                <div class="col-12">
                                    <textarea name="comment" id="comment" class="form-control mb-4" placeholder="Type your response here..."></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" value="send" class="btn btn-primary">Post Response</button>
                                </div>
                            </form>
                        </div>
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


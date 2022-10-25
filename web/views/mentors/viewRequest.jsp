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
    <style>
        .card-title,.list-inline-item{
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 300px;
            max-height: 150px;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <c:if test="${Account.roleID == 3}">
                <%@include file="mentorSidebar.jsp" %>
            </c:if>
            <c:if test="${Account.roleID == 2}">
                <%@include file="../user/sidebar.jsp" %>
            </c:if>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px">All Requests</h2>
                    <div class="container">
                        <div class="row">

                            <!-- blog post -->
                            <article class="col-lg-4 col-sm-6 mb-5">
                                <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                                    <div class="card-body" >
                                        <a href="">
                                            <h4 class="card-title"></h4>
                                        </a>
                                        <!-- post meta -->
                                        <ul class="list-inline mb-3">
                                            <!-- post date -->
                                            <li class="list-inline-item mr-3 ml-0">

                                                Created: 25/10/2002
                                            </li>
                                            <!-- to -->
                                            <li class="list-inline-item mr-3 ml-0">

                                                From: Minh

                                            </li> <br>
                                            <li class="list-inline-item mr-3 ml-0">    
                                                Response: 20
                                            </li>
                                        </ul>

                                        <a href="<%=request.getContextPath()%>/views/mentors/viewRequestSingle.jsp" class="btn btn-primary btn-sm">View</a>
                                    </div>
                                </div>
                            </article>

                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->

        <!-- /jQuery -->
    </body>
</html>

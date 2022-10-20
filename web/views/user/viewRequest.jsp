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
        .request{
            border: 1px #dee2e6 solid;
            background-color: #f3f3f3;
            border-radius: 5px;
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
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <c:if test="${Account.roleID == 3}">
                <%@include file="../mentors/mentorSidebar.jsp" %>
            </c:if>
            <c:if test="${Account.roleID == 2}">
                <%@include file="sidebar.jsp" %>
            </c:if>
            
            <div class="col-10">
                <section class="section">
                    <div class="container">
                        <h2>All Requests</h2>
                        <div class="row">
                            <c:forEach items="${LstRequest}" var="request" varStatus="loop">
                                <!-- blog post -->
                                <article class="col-lg-4 col-sm-6 mb-5">
                                    <div class="card border-bottom border-primary hover-shadow request">
                                        <div class="card-body" >
                                            <a href="<%=request.getContextPath()%>/singleRequest?requestId=${request.ID}">
                                                <h4 class="card-title text-align-center">${request.title}</h4>
                                            </a>
                                            <!-- post meta -->
                                            <div class="ml-5">
                                                <ul class="list-inline mb-3">
                                                    <!-- post date -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                                        Created: ${Date2}
                                                    </li> 
                                                    <br>
                                                    <!-- to -->
                                                    <li class="list-inline-item mr-3 ml-0">                                                 
                                                        ${Account.roleID==2?"To:":"From:"} ${urLst.get(loop.index).firstName} ${urLst.get(loop.index).lastName} 
                                                    </li> 
                                                    <br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Response: ${resCount.get(loop.index)}
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="text-align-center">
                                                <a class="signup__link" href="<%=request.getContextPath()%>/singleRequest?requestId=${request.ID}" >View</a>
                                            </div>
                                        </div>
                                    </div>
                                </article>
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

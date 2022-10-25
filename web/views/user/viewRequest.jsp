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
       .pagination a{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
           
        }
        .pagination select{
            color: #ffbc3b;
            background: #f3f3f3;
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
        }
        .pagination a:hover,.pagination a.active{
            background-color:#e9ecef;
            color: #ffbc3b;
            margin: 0px;
        }
        .pagination{
            margin: 30px 0;
            clear: both;
            justify-content: center;
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
                            <c:forEach items="${LstRequest}" var="request" begin="${pageIf.start}" end="${pageIf.end}" varStatus="loop">
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
                        <div class="pagination">
                            <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">                             
                                <a href="<%=request.getContextPath()%>/viewAllRequest?page=1&nrpp=${nrpp}"><<</a>
                                <a href="<%=request.getContextPath()%>/viewAllRequest?page=${pageIf.cp-1}&nrpp=${nrpp}"><</a>
                            </c:if>      
                            <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/viewAllRequest?page=${i}&nrpp=${nrpp}">${i}</a>
                            </c:forEach>
                            <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                <a href="<%=request.getContextPath()%>/viewAllRequest?page=${pageIf.cp+1}&nrpp=${nrpp}">></a>
                                <a href="<%=request.getContextPath()%>/viewAllRequest?page=${pageIf.np}&nrpp=${nrpp}">>></a>  
                            </c:if>
                            <form action="<%=request.getContextPath()%>/viewAllRequest" method="GET">
                                <select name="nrpp" onchange="this.form.submit()">
                                    <c:forEach items="${pageIf.arrNrpp}" var="i">
                                        <option <c:if test="${nrpp==i}">selected=""</c:if> value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->

        <!-- /footer -->
        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %> 
        <!-- /jQuery -->
    </body>
</html>

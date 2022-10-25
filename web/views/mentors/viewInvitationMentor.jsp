<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>

    <style>
        .cv:hover{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        input,textarea,.cv{
            margin: 16px 0px;
            border-radius: 5px;
        }
        .cv{
            color: black;
            border-color: #ced4da;
            background-color: #fff;
            padding: 10px;
        }
        table{
            margin-top: 30px;
        }
        .pagination a, .pagination select{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
            height: 40px;
        }
        .pagination select{
            color: #ffbc3b;
            background: #f3f3f3;
        }
        .pagination a:hover, .pagination a.active{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        .pagination{
            margin: 30px 0;
            float: right;
        }
        .col-9{
            margin: 0 auto;
        }

    </style>
    <body>
        <%@include file= "header.jsp" %>


        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="mentorSidebar.jsp" %>

            <div class="col-10">
                <section class="section" >
                    <div class="container">
                        <h2>All Invitation</h2>
                        <div class="row">
                            <c:forEach items="${requestScope.invList}" var="inv" begin="${pageIf.start}" end="${pageIf.end}" varStatus="loop">
                                <!-- blog post -->
                                <article class="col-lg-4 col-sm-6 mb-5">
                                    <div class="card border-bottom border-primary hover-shadow invite">
                                        <div class="card-body" >
                                            <a href="<%=request.getContextPath()%>/singleInvite?invitationId=${inv.ID}">
                                                <h4 class="card-title text-align-center">${inv.getTitleLimit()}</h4>
                                            </a>
                                            <!-- post meta -->
                                            <div class="ml-5">
                                                <ul class="list-inline mb-3">
                                                    <!-- post date -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${inv.createdAt}" pattern="yyyy-MM-dd" var="Date1" />
                                                        <fmt:formatDate value="${Date1}" var="Date3" pattern="dd/MM/yyyy"/>        
                                                        Created at: ${Date3}
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${inv.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                                        Deadline: ${Date2}
                                                    </li><br>
                                                    <!-- to -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        To: <c:forEach items="${listUserProfile}" var="user">
                                                            <c:if test="${user.ID == inv.menteeID}">
                                                                ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Skill: <c:forEach items="${listSkill}" var="skill">
                                                            <c:if test="${skill.ID == inv.skillID}">
                                                                ${skill.name} 
                                                            </c:if>
                                                        </c:forEach>
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Status:  <c:forEach items="${listStatus}" var="sta">
                                                            <c:if test="${sta.key == inv.statusID}">
                                                                ${sta.value} 
                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="text-align-center row">
                                                <div class="col-md-12" style="justify-content: center;">    
                                                    <a class="text-color" 
                                                       href="<%=request.getContextPath()%>/invSingle?id=${inv.ID}">
                                                        <input type="submit" value="View" class="btn btn-primary btn-user btn-block"/>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </c:forEach>

                            <!--phan trang-->
                            <div class="pagination col-md-12" style="justify-content: right; margin: 0">
                                <c:if test="${requestScope.pageIf.cp!=1 && requestScope.pageIf.end!=null}">
                                    <a href="<%=request.getContextPath()%>/invitationMentor?page=1&nrpp=${nrpp}"><<</a>  
                                </c:if>      
                                <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                    <a class="${i==requestScope.pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/invitationMentor?page=${i}&nrpp=${nrpp}">${i}</a>
                                </c:forEach>
                                <c:if test="${requestScope.pageIf.cp!=requestScope.pageIf.np && requestScope.pageIf.end!=0}">
                                    <a href="<%=request.getContextPath()%>/invitationMentor?page=${requestScope.pageIf.np}&nrpp=${nrpp}">>></a>  
                                </c:if>  
                                <form action="<%=request.getContextPath()%>/invitationMentor" method="GET">
                                    <select name="nrpp" id="selectElementId" onchange="this.form.submit()">
                                        <c:forEach items="${requestScope.pageIf.arrNrpp1}" var="i">
                                            <option <c:if test="${nrpp == i}">selected=""</c:if>value="${i}">${i}</option>
                                        </c:forEach>
                                    </select>
                                </form>

                            </div>
                        </div>
                    </div>
                </section>    
            </div>
        </div>



        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="../user/scriptJS.jsp" %>

    </body>

</html>

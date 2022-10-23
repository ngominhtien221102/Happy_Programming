<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <section class="section" style="margin-top: 50px">
                    <h2 style="margin-left:15px">All invitations</h2>
                    <div class="container">
                        <div class="row">  
                            <div class="col-md-12 table">

                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Mentee</th>
                                            <th>Skill</th>
                                            <th>Title</th> 
                                            <th>Deadline date</th>
                                            <th>Status</th>
                                            <th colspan="2" style="text-align: center">Options</th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.invList}" var="inv" begin="${pageIf.start}" end="${pageIf.end}" varStatus="loop">
                                            <tr>
                                                <td>${loop.count}</td>
                                                <td>
                                                    <c:forEach items="${listUserProfile}" var="user">
                                                        <c:if test="${user.ID == inv.menteeID}">
                                                            ${user.firstName} ${user.lastName}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listSkill}" var="skill">
                                                        <c:if test="${skill.ID == inv.skillID}">
                                                            ${skill.name} 
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>${inv.title}</td>
                                                <td>${inv.deadlineDate}</td>
                                                <td>
                                                    <c:forEach items="${listStatus}" var="sta">
                                                        <c:if test="${sta.key == inv.statusID}">
                                                            ${sta.value} 
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <c:if test="${inv.statusID == 2}">
                                                    <td>
                                                        <a class="text-color" 
                                                           href="<%=request.getContextPath()%>/updateStatus?id=${inv.ID}&statusID=${inv.statusID}&type=1">
                                                            Accept
                                                        </a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${inv.statusID != 2}">
                                                    <td>
                                                        <a class="text-color" >Accept</a>
                                                    </td>
                                                </c:if>

                                                <c:if test="${inv.statusID == 2}">
                                                    <td>
                                                        <a class="text-color" 
                                                           href="<%=request.getContextPath()%>/updateStatus?id=${inv.ID}&statusID=${inv.statusID}&type=0">
                                                            Reject
                                                        </a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${inv.statusID != 2}">
                                                    <td>
                                                        <a class="text-color">Reject</a>
                                                    </td>
                                                </c:if>
                                                <td>
                                                    <a class="text-color" 
                                                       href="<%=request.getContextPath()%>/invSingle?id=${inv.ID}">
                                                        View
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                                <!--phan trang-->
                                <div class="pagination">
                                    <c:if test="${requestScope.pageIf.cp!=1 && requestScope.pageIf.end!=null}">
                                        <a href="<%=request.getContextPath()%>/invitationMentor?page=1&nrpp=${nrpp}"><<</a>  
                                    </c:if>      
                                    <c:forEach begin="${1}" end="${requestScope.pageIf.np}" var="i">
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

<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>

    <style>
        .card-title,.list-inline-item{
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 300px;
            max-height: 150px;
        }
        .signup__link{
            margin: 2%;
        }
        .signup__link:hover{
            color: #1a1a37;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px">All Invitation</h2>
                    <div class="container">
                        <div class="row">
                            <c:forEach items="${listInv}" var="inv" varStatus="loop">
                                <c:if test="${inv.menteeID == Account.ID}">
                                    <!-- blog post -->
                                    <article class="col-lg-4 col-sm-6 mb-5">
                                        <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                                            <div class="card-body" >
                                                <a href="<%=request.getContextPath()%>/singleInvite?invitationId=${inv.ID}">
                                                    <h4 class="card-title">${inv.title}</h4>
                                                </a>
                                                <!-- post meta -->
                                                <ul class="list-inline mb-3">
                                                    <!-- post date -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${inv.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                                        Deadline: ${Date2}
                                                    </li><br>
                                                    <!-- to -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <c:forEach items="${listUserProfile}" var="user">
                                                            <c:if test="${user.ID == inv.mentorID}">
                                                                To: ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Skill: ${HmSkill[inv.skillID]}
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Status: ${listStatus[inv.statusID]}
                                                    </li>
                                                </ul>
                                                <a href="<%=request.getContextPath()%>/singleInvite?invitationId=${inv.ID}" class="signup__link">View</a>
                                                <a class="signup__link" <c:if test="${inv.statusID==2}">href="<%=request.getContextPath()%>/editInvitation?type=1&id=${inv.ID}"</c:if><c:if test="${inv.statusID!=2}">href=""</c:if>>Update</a>
                                                <a class="signup__link" <c:if test="${inv.statusID==2}">href="<%=request.getContextPath()%>/editInvitation?type=2&id=${inv.ID}"</c:if><c:if test="${inv.statusID!=2}">href=""</c:if>>Cancel</a>
                                                <a class="signup__link" href="<%=request.getContextPath()%>/editInvitation?type=0&id=${inv.ID}">Delete</a>
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
        <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
        <script>
            var value;
            ClassicEditor
                    .create(document.querySelector('#editor'))
                    .then(editor => {
                        value = editor;
                    })
                    .catch(error => {
                        console.error(error);
                    });

            const handleSubmit = () => {
                document.getElementById('a').innerHTML = value.getData()
            }
        </script>
    </body>

</html>

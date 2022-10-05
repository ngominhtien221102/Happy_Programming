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


        .cv:hover{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        input,select,textarea,.cv{
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

    </style>
    <body>
        <%@include file= "header.jsp" %>
        <div id="content" class="row" style="padding-top: 50px">
            <%@include file="sidebar.jsp" %>

            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px">All invitations</h2>
                    <div class="container">
                        
                        <br><h3>Invitations</h3>
                        <div class="row">  
                            <div class="col-md-12 table">
                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>.NO</th>
                                            <th>Mentor</th>
                                            <th>Skill</th>
                                            <th>Title</th> 
                                            <th>Content</th>         
                                            <th>Deadline date</th>
                                            <th>Status</th>
                                            <th colspan="2" style="text-align: center">Option</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <c:forEach items="${listInv}" var="inv" varStatus="loop"> 
                                            <c:if test="${Account.ID == inv.menteeID}">
                                                <tr>
                                                    <td>${loop.index+1}</td>
                                                    <td>
                                                        <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                                            <c:if test="${user.ID == inv.mentorID}" >
                                                                ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${HmSkill[inv.skillID]}</td>
                                                    <td>${inv.title}</td>
                                                    <td>${inv.content}</td>
                                                    <td>
                                                        <fmt:parseDate value="${inv.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>
                                                        ${Date2}
                                                    </td>
                                                    <td>${listStatus[inv.statusID]}</td>
                                                    
                                                    <td><a class="text-color" <c:if test="${inv.statusID==2}">href="<%=request.getContextPath()%>/editInvitation?type=1&id=${inv.ID}"</c:if><c:if test="${inv.statusID!=2}">href=""</c:if>>update</a></td>
                                                    <td><a class="text-color" href="<%=request.getContextPath()%>/editInvitation?type=0&id=${inv.ID}">delete</a></td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <!--form-->
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

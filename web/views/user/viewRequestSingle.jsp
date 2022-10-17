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
            width: 80%;
        }
        .card{
            width: 200%;
            margin: 2% 0;
        }
        .response{
            padding: 0;
        }
        .card-body{
            background-color: #f3f3f3;
        }
        
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section">
                    <div class="container">
                            
                        <div class="card-body" style="width: 100%;">
                            <h3 class="card-title" style="margin: 2% 0;">Request</h3>
                            <h3 class="card-title">${request.title}</h3>
                        </div>
                        <div class="card-body">
                            <span class="font-weight-bold mr-2">${Account.roleID==2?"To:":"From:"}</span>
                            <c:if test="${Account.roleID==2}">
                                ${mentor.firstName} ${mentor.lastName}
                            </c:if>
                            <c:if test="${Account.roleID!=2}">
                                ${mentee.firstName} ${mentee.lastName}
                            </c:if>
                            <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                            <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                            <br><br><span class="font-weight-bold mr-2">Created:</span> ${Date2}
                            <p class="card-text">${request.content}</p>
                        </div>  

                        <div class="col-sm-5 col-md-6 col-12 pb-4 response">
                            <h3 class="card-title" style="margin: 2% 0;">Response</h3>
                            <h4 style="color: green;">${resAlert2}</h4>
                            <c:forEach items="${responseLst}" var="response" varStatus="loop">
                                <div class="card response">
                                    <div class="card-body">
                                        <span class="font-weight-bold mr-2">
                                            <c:if test="${mentor.ID == response.userID}">
                                                ${mentor.firstName} ${mentor.lastName}
                                            </c:if>
                                            <c:if test="${mentee.ID == response.userID}">
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
                            <div class="card">
                                <div class="card-body">
                                    <form action="singleRequest" method="POST" class="row">
                                        <input type="hidden" name="userID" value="${Account.ID}">
                                        <input type="hidden" name="requestId" value="${request.ID}">
                                        <div class="card-body">
                                            <textarea name="response" id="editor" class="form-control mb-6" placeholder="Type your response here..."></textarea>
                                        </div>
                                        <div class="col-12">
                                            <button type="submit" value="send" class="btn btn-primary" style="margin-top: 1%; border-radius: 2%;">Post Response</button>
                                            <p style="color: #ff3333; margin-top: 1%;">${resAlert}</p>
                                        </div>

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
        <!-- /jQuery -->
    </body>
</html>

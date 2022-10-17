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
        .responseBox{
            padding: 0;
            margin: 2% 0;
            height: fit-content;
            max-height: 500px;
            overflow-y: scroll;
            background: #f3f3f3;
            display: flex;
            flex-direction: column;
            padding: 5%;
            border-radius: 15px;
        }
        .responseContent{
            margin: 0 ;
            border-radius: 20px;
            padding: 10px;
            max-width: 60%;
            width: fit-content;
        }
        .myResponse{
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }
        .otherResponse{
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .card-body{
            background-color: #f3f3f3;
            border-radius: 15px;
        }
        .myResponseCnt{
            background: rgb(0, 132, 255);

        }

        .otherResponseCnt{
            background: #E4E6EB;
            color: #050505;
            position: relative;

        }
        .resHead{
            margin: 1%;
        }
        .text-black p{
            color: #050505;
        }
        .text-white p{
            color: #fff;
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
                        
                            <span class="font-weight-bold mr-2">${Account.roleID==2?"To:":"From:"}</span>
                            <c:if test="${Account.roleID==2}">
                                ${mentor.firstName} ${mentor.lastName}
                            </c:if>
                            <c:if test="${Account.roleID!=2}">
                                ${mentee.firstName} ${mentee.lastName}
                            </c:if>
                            <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                            <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                            <br><br><span class="font-weight-bold mr-2">Created:</span> ${Date2}<br><br>
                            <span class="font-weight-bold mr-2">Content:</span><p class="card-text">${request.content}</p>
                        </div>  
                        <h3 class="card-title" style="margin: 2% 0;">Response</h3>
                        <h4 style="color: green;">${resAlert2}</h4>
                        <div class="col-12 responseBox" id="chat" >
                            <c:forEach items="${responseLst}" var="response" varStatus="loop">
                                <div class="response ${Account.ID==response.userID?"myResponse":"otherResponse"}">
                                    <div class="resHead ${Account.ID==response.userID?"":""}">
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
                                    </div>
                                    <div class="responseContent ${Account.ID==response.userID?"myResponseCnt":"otherResponseCnt"}">
                                        <div class="${Account.ID==response.userID?"text-white":"text-black"}">${response.content}</div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
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
        <script>
            $('.responseBox').scrollTop($('.responseBox')[0].scrollHeight);
        </script>
        <!-- /jQuery -->
    </body>
</html>

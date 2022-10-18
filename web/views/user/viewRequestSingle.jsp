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
            margin-bottom:20px;
            height: fit-content;
            max-height: 500px;
            overflow-y: scroll;
            background: #f3f3f3;
            display: flex;
            flex-direction: column;
            padding: 5px 28px;
            border-radius: 0 15px 15px 15px;
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
            margin: 1% 0;
        }
        .text-black p{
            color: #050505;
        }
        .text-white p{
            color: #fff;
        }
        .request{
            display: flex;

            background: #f3f3f3;
            border-radius: 15px 15px 0 0;
            border-bottom: 1px #dee2e6 solid;

        }
        .mentorCV {
            border-radius: 10px;
            padding: 20px;
            margin: 8px;
            color: #5c5c77;
        }
        .mentorCV:hover{
            background-color: #E4E6EB;
        }
        .avatar{
            width: 40px;
            height: 40px;
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
                        <h2>${request.title}</h2>

                        <div class="request" style="width: 100%;">
                            <div class="">
                                <span class="font-weight-bold">
                                    <c:if test="${Account.roleID==2}">
                                        <a class="" href="viewCV?mentorID=${mentor.ID}"><div class="mentorCV">
                                                <img src="<%=request.getContextPath()%>/img/avatar/${mentor.avatar}" 
                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" 
                                                     class="rounded-circle mr-2 avatar"/>

                                                ${mentor.firstName} ${mentor.lastName}
                                            </div></a>
                                        </c:if>
                                        <c:if test="${Account.roleID!=2}">
                                        <a class="" href=""><div class="mentorCV">
                                                <img src="<%=request.getContextPath()%>/img/avatar/${mentee.avatar}" 
                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" 
                                                     class="rounded-circle mr-2 avatar"/>
                                                ${mentee.firstName} ${mentee.lastName}
                                            </div></a>
                                        </c:if>
                                </span>
                            </div>
                        </div>
                        <div class="col-12 responseBox">
                            <div class="response ${Account.ID==request.menteeID?"myResponse":"otherResponse"}">
                                <!--                                request dau tien-->
                                <div class="resHead">
                                    <span class="font-weight-bold mr-2">
                                        <img src="<%=request.getContextPath()%>/img/avatar/${mentee.avatar}" 
                                             onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" 
                                             class="rounded-circle mr-2 avatar"/>
                                        ${mentee.firstName} ${mentee.lastName}
                                    </span>
                                    <span>
                                        <fmt:parseDate value="${request.createdAt}" pattern="yyyy-MM-dd" var="Date" />
                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                        -  ${Date2}
                                    </span>
                                </div>
                                <div class="responseContent ${Account.ID==request.menteeID?"myResponseCnt":"otherResponseCnt"}">
                                    <div class="${Account.ID==request.menteeID?"text-white":"text-black"}">${request.content}</div>
                                </div>
                            </div>
                            <c:forEach items="${responseLst}" var="response" varStatus="loop">
                                <div class="response ${Account.ID==response.userID?"myResponse":"otherResponse"}">
                                    <div class="resHead">
                                        <span class="font-weight-bold mr-2">
                                            <c:if test="${mentor.ID == response.userID}">
                                                <img src="<%=request.getContextPath()%>/img/avatar/${mentor.avatar}" 
                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" 
                                                     class="rounded-circle mr-2 avatar"/>
                                                ${mentor.firstName} ${mentor.lastName}
                                            </c:if>
                                            <c:if test="${mentee.ID == response.userID}">
                                                <img src="<%=request.getContextPath()%>/img/avatar/${mentee.avatar}" 
                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/p9.png'" 
                                                     class="rounded-circle mr-2 avatar"/>
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
                            <h4 style="color: green;">${resAlert2}</h4>
                            <form action="singleRequest" method="POST" class="row">
                                <input type="hidden" name="userID" value="${Account.ID}">
                                <input type="hidden" name="requestId" value="${request.ID}">
                                <div class="card-body">
                                    <textarea name="response" id="editor" class="form-control mb-6" placeholder="Type your response here..."></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" value="send" class="btn btn-primary" style="margin-top: 1%; float: right">Post Response</button>
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
            // tu keo xuong cuoi o chat
            $('.responseBox').scrollTop($('.responseBox')[0].scrollHeight);
        </script>
        <!-- /jQuery -->
    </body>
</html>

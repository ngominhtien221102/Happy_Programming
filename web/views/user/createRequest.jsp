<%-- 
    Document   : createRequest.jsp
    Created on : Oct 4, 2022, 6:00:02 PM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <style>
        .background{
            width: 60%;
            background-color: #eaf1fb;
            margin: 7% 2% 2% 2%;
            border-radius: 2%;
            height: 50%;
        }
        .form-control{
            background-color: #eaf1fb;
            border: 0;
            border-radius: 0;
            width: 80%
        }
        .form-group{
            border-bottom: 1px #ccccff solid;
        }
        .app-form-group {
            margin-bottom: 15px;
        }

        .app-form-group.message {
            margin-top: 40px;
        }

        .app-form-group.buttons {
            margin-bottom: 0;
            text-align: right;
        }

        .app-form-control {
            width: 100%;
            padding: 10px 0;
            background: none;
            border: none;
            border-bottom: 1px solid #666;
            font-size: 14px;
            outline: none;
            transition: border-color .2s;
        }
        .app-form-control::placeholder {
            color: #666;
        }
        .app-form-button {
            background: none;
            border: none;
            color: #ffbc3b;
            font-size: 14px;
            cursor: pointer;
            outline: none;
        }

        .app-form-button:hover {
            color: #666666;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="background">
                <div class="screen-body">
                    <div class="screen-body-item">
                        <form action="<%=request.getContextPath()%>/send_request" method="POST" >
                            <div class="app-form" style="margin: 2%;">
                                <div class="app-form-group">
                                    <span style="font-size: 20px; color: #1a1a37; ">New Request</span>
                                </div>
                                <div class="app-form-group">
                                    <input class="app-form-control" name ="mentorName" placeholder="To" value="${mentorName==null?"":mentorName}">
                                    <p>${nanme_alert}</p>
                                </div>
                                <div class="app-form-group">
                                    <input class="app-form-control" name = "title" placeholder="Title" value="${title==null?"":title}">
                                </div>
                                <div class="app-form-group message">
                                    <textarea class="app-form-control" name="content" placeholder="MESSAGE" rows="10" cols="10" value="${content==null?"":content}"></textarea>
                                     <p>${content_alert}</p>
                                </div>
                                <div class="app-form-group buttons">
                                    <button class="app-form-button">SEND</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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

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
        .col-9{
            margin: 0 auto;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" ">
                    <h2 style="margin-left:15px">Send Request</h2>
                    <h3 style="color: green; margin-left:15px;">${message}</h3>
                    <div class="container">
                        <br><h3>Invited Mentors</h3>
                        <div class="row">  
                            <div class="col-md-12 table">
                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>.NO</th> 
                                            <th>Name</th>
                                            <th>Skills</th>
                                            <th>Option</th>         
                                        </tr>
                                    </thead>
                                    <c:forEach items="${upLst2}" var="lst" varStatus="loop">
                                        <tbody>
                                            <tr>
                                                <td>${loop.index+1}</td>
                                                <td>${lst.firstName} ${lst.lastName}</td>
                                                <td>${HmSkill[skillId.get(loop.index)]}</td>
                                                <td><a class="text-color" href="<%=request.getContextPath()%>/sendRequest?mentorId=${lst.ID}">send</a></td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                        <!--form-->

                        <form action="sendRequest" method="POST" class="">
                            Mentor's name:
                            <input type="text" class="form-control" id="" name="" readonly="" value="${mentor==null?"":mentor.firstName} ${mentor==null?"":mentor.lastName}">
                            <button class="cv" style=""><a href="<%=request.getContextPath()%>/viewCV?mentorID=${mentor.ID}">View mentor's CV</a></button><br>               
                            Title:<input type="text" class="form-control" id="" name="title" placeholder="" value="${title==null?"":title}">
                            <label style="margin-bottom: 16px" for="">Content:</label><textarea id="editor" class="form-control" name="content" rows="4" cols="50" value="">${content==null?"":content}</textarea>
                            <p style="color: red">${content_alert}</p>
                            <input type="hidden" name="mentor" value="${mentor.ID}" >
                            <button type="submit" style="float:right; margin-top: 16px;" class="btn btn-primary">SEND</button>

                        </form>
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

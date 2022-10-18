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
        .search input[type="text"]{
            border: 1px solid #08080B;
            border-right: none;
            border-left: none;
            border-top: none;
            font-family: 'Open Sans', sans-serif;
            outline: none;
            padding: 0.8em 0;
            color: #A5A5A5;
            width: 20%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
            flex-wrap: unset;

        }
        .search input[type="text"]:focus {
            width: 25%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
        }
        .search button{
            margin-top:25px;
            margin-left:15px;
            border: 0px;
            background-color: #fff;
            width: 35px;
            height: 35px;
            border-radius: 5px;
        }
        .search button:hover{
            background-color: #ffbc3b;
            color: #fff;

        }
        .cv:hover{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        input,textarea,.cv{
            margin: 16px 0px;
            border-radius: 5px;
        }
        select{
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
        .pagination a,.pagination select{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
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
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" ">
                    <div class="container">
                        <div style="margin-bottom: 20px;margin-top: -10px"><button style="margin-right: 10px" class="cv"><a href="<%=request.getContextPath()%>/viewAllRequest"><i class="ti-arrow-left"></i></a></button> <a class="text-color" href="<%=request.getContextPath()%>/viewAllRequest">Back to VIEW REQUEST</a></div>
                        <h2>Send Request</h2>
                        <h3 style="color: green; margin-left:15px;">${message}</h3>
                        <div class="search" style="margin-left:15px" > 
                            <form action="sendRequest" Method="GET" class="row">
                                <input  type="text" name="search" value="${requestScope.search}" placeholder="Search Your Mentor">
                                <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                            </form>
                        </div>
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
                                    <c:forEach items="${upInvLst}" var="lst" begin="${pageIf.start}" end="${pageIf.end}" varStatus="loop">
                                        <tbody>
                                            <tr>
                                                <td>${loop.index+1}</td>
                                                <td>${lst.firstName} ${lst.lastName}</td>
                                                <td>${HmSkill[skillId.get(loop.index)]}</td>
                                                <td><a class="text-color" href="<%=request.getContextPath()%>/sendRequest?mentorId=${lst.ID}&page=${pageIf.cp}">send</a></td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                                <div class="pagination">
                                    <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                        <a href="<%=request.getContextPath()%>/sendRequest?page=1"><<</a>  
                                    </c:if>      
                                    <c:forEach begin="${1}" end="${pageIf.np}" var="i">
                                        <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/sendRequest?page=${i}">${i}</a>
                                    </c:forEach>
                                    <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                        <a href="<%=request.getContextPath()%>/sendRequest?page=${pageIf.np}">>></a>  
                                    </c:if>
                                    <form action="<%=request.getContextPath()%>/sendRequest" method="GET">
                                        <select name="nrpp" onchange="this.form.submit()">
                                            <c:forEach items="${pageIf.arrNrpp}" var="i">
                                                <option <c:if test="${nrpp==i}">selected=""</c:if> value="${i}">${i}</option>
                                            </c:forEach>
                                        </select>
                                    </form>
                                </div>
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


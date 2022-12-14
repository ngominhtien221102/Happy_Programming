<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>

    <style>
        .container{
            margin-bottom: 144px;
        }
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
        /*phan trang*/
        .pagination a{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
        }
        .pagination .nrpp{
            color: #ffbc3b;
            background: #f3f3f3;
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .pagination a:hover, .pagination a.active{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        .pagination{
            margin: 30px 0;
            float: right;
        }
        #nrpp{
            display: none;
            flex-flow: column;
            position: absolute;
            top:40px;
            background: #fff;
            width: 100%;
            border: 1px solid;
        }
        #nrpp a{
            padding: 5px;
            margin-right: 0;
            border: 0;
            border-radius: 0;
        }
        #nrpp a:hover, .selected{
            background:hsl(214, 100%, 59%) ;
            color: #fff ;
        }
        .select-nrpp{
            display: flex;
            flex-flow: column;
            position: relative
        }
        /*phan trang*/
        
        .invite{
            font-weight: 700;
        }

    </style>
    <body>
        <%@include file= "header.jsp" %>

        <div id="content" class="row" style="padding-top: 50px">
            <%@include file="sidebar.jsp" %>

            <div class="col-10">
                <section class="section" >

                    <div class="container">
                        <div style="margin-bottom: 20px;margin-top: -10px"><button style="margin-right: 10px" class="cv"><a href="<%=request.getContextPath()%>/viewAllInvite"><i class="ti-arrow-left"></i></a></button> <a class="text-color" href="<%=request.getContextPath()%>/viewAllInvite">Back to VIEW INVITATIONS</a></div>
                        <h2>Send Invitation</h2>
                        <c:if test="${requestScope.success!=null}">
                            <br><h3 style="color: green">${success}</h3>
                        </c:if>
                        <c:if test="${requestScope.failed!=null}">
                            <br><h3 style="color: red">${failed}</h3>
                        </c:if>
                        <div class="search" style="margin-left:15px" > 
                            <form action="<%=request.getContextPath()%>/sendInvitation" class="row">
                                <input  type="text" name="search" value="${requestScope.search}" placeholder="Search Your Mentor">
                                <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                            </form>
                        </div>
                        <br><h3>Mentors</h3>
                        <div class="row">  
                            <div class="col-md-12">

                                <table>
                                    <thead>
                                        <tr>
                                            <th>#</th> 
                                            <th>Name</th>
                                            <th>Skills</th>
                                            <th colspan="2" class="text-align-center"></th>         
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.listSearch}" var="m" varStatus="loop" begin="${pageIf.start}" end="${pageIf.end}"> 

                                            <tr>
                                                <td>${loop.index+1}</td>
                                                <td><c:forEach items="${sessionScope.listUserProfile}" var="u">
                                                        <c:if test="${m.ID==u.ID}">${u.firstName} ${u.lastName}</c:if>
                                                    </c:forEach></td>
                                                <td><c:forEach items="${m.skillList}" var="s">
                                                        ${s.name}
                                                    </c:forEach></td>
                                                <td><a class="text-color invite" href="<%=request.getContextPath()%>/sendInvitation?mentorID=${m.ID}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>&page=${pageIf.cp}">Invite</a></td>
                                                <td><a class="text-color invite" href="<%=request.getContextPath()%>/viewCV?mentorID=${m.ID}">View CV</a></td>
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                                <!--phan trang-->

                                <div class="pagination">
                                    <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                        <a href="<%=request.getContextPath()%>/sendInvitation?page=1&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>"><<</a> 
                                        <a href="<%=request.getContextPath()%>/sendInvitation?page=${pageIf.cp-1}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>"><</a>
                                    </c:if>      
                                    <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                        <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/sendInvitation?page=${i}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">${i}</a>
                                    </c:forEach>
                                    <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                        <a href="<%=request.getContextPath()%>/sendInvitation?page=${pageIf.cp+1}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">></a>
                                        <a href="<%=request.getContextPath()%>/sendInvitation?page=${pageIf.np}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">>></a>  
                                    </c:if>  

                                    <!--nrpp-->
                                    <div class="select-nrpp" style="">
                                        <div class="nrpp" onclick="showNrpp()">${nrpp}<i class="ti ti-angle-down ml-1"></i></div>
                                        <div id="nrpp">
                                            <c:forEach items="${pageIf.arrNrpp}" var="i">
                                                <a class="<c:if test="${nrpp==i}">selected</c:if>" href="<%=request.getContextPath()%>/sendInvitation?nrpp=${i}<c:if test="${search!=null}">&search=${search}</c:if>">${i}</a>
                                            </c:forEach>
                                        </div>
                                    </div>

                                </div>
                                        <!--phan trang-->
                            </div>
                        </div>          
                        <!--form-->

                        <form action="<%=request.getContextPath()%>/sendInvitation" method="post" id="myForm">
                            Mentor's name:
                            <input type="text" class="form-control" id="" name="" readonly="" value="${requestScope.mentorName}">
                            <button class="cv" style=""><a href="<%=request.getContextPath()%>/viewCV?mentorID=${requestScope.mentorId}">View mentor's CV</a></button>
                            <br><label for="">Choose a skill:</label>
                            <select style="margin-left:10px;margin-right: 30px" name="skill" required="" id="">
                                <c:forEach items="${requestScope.listSkill}" var="m">
                                    <option value="${m.ID}">${m.name}</option>
                                </c:forEach>
                            </select>
                            Deadline date:<input required="" style="margin-left:10px;" type="date" name="deadline"><br>
                            Title:<input required="" type="text" class="form-control"  id="" name="title" placeholder="">
                            <label style="margin-bottom: 16px" for="">Content:</label><textarea id="editor"  class="form-control" name="content" rows="4" cols="50"></textarea>
                            <button type="submit" style="float:right; margin-top: 16px;" class="btn btn-primary">SEND</button>
                        </form>

                    </div>
                </section>
            </div>
        </div>

        <!-- footer -->

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
                                            
//                                            phan trang
                                            function showNrpp() {
                                                if (document.getElementById('nrpp').style.display === "flex")
                                                    document.getElementById('nrpp').style.display = "none";
                                                else
                                                    document.getElementById('nrpp').style.display = "flex";
                                            }
        </script>


    </body>

</html>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <style>
        .card-title,.list-inline-item{
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 300px;
            max-height: 150px;
        }
        .progress{
            margin: 20px 0;
        }
        .card-block{
            margin-top: 50px;
            background-color: #f3f3f3;
            padding: 50px;
            border-radius: 5px;
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
        .pagination a{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
        }
        .pagination a:hover, .pagination a.active{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        .pagination{
            margin: 30px 0;
            float: right;
        }
        .ti-arrow-down{
            width: 20%;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Mentor</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!--                            total invitation -->
                            <article class="col-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #0ac282;">${total}</h4>
                                            <h6 class="text-muted">All Mentors</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <i class="ti-user" style="color: #0ac282;"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#0ac282,#0df3a3); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Total Mentor</p>
                                    </div>
                                </div>

                            </article>
                            <!--number of invitations accepted-->



                            <article class="col-6" >
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-6">
                                            <h4 style="color: #01a9ac;">${lastMonth} Mentors</h4>
                                            <h6 class="text-muted">Last month</h6>
                                        </div>
                                        <div class="col-6">
                                            <h4 style="color: #01a9ac;">${thisMonth} Mentors</h4>
                                            <h6 class="text-muted">This month</h6>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#01a9ac,#01dbdf); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 "><i class="ti-arrow-up m-2"></i>${percent}%</p>
                                        <!--                                        <p style="color: #fff; margin: 0 "><i class="ti-arrow-down m-2"></i>10%</p>-->
                                    </div>
                                </div>


                            </article>
                        </div>

                        <div class="card-block" style="">
                            <div class="search" style="margin-left:15px" > 
                                <form action="<%=request.getContextPath()%>/allMentorControl" class="row">
                                    <input  type="text" name="search" value="${search}" placeholder="Search Mentors">
                                    <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <br><h3>Mentors</h3>
                            <div class="row">  
                                <div class="col-md-12 table">

                                    <table border="2" style="width: 100%">
                                        <thead>
                                            <tr>
                                                <th>STT</th> 
                                                <th>Name<a style="float: right;color: #000" href="<%=request.getContextPath()%>/allMentorControl?sort=${sort}&search=${search}"><i class="ti-arrow-down"></i><i class="ti-arrow-up"></i></a></th>
                                                <th>Gender</th>
                                                <th style="width: 30%">Address</th>
                                                <th>DOB</th>
                                                <th>Status</th>
                                                <th>Rate</th>
                                                <th colspan="2"></th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                            <c:forEach items="${listMentor}" var="m" varStatus="loop">
                                                <tr>
                                                    <td>${loop.index + 1}</td>
                                                    <td>${m.getFirstName()} ${m.getLastName()}</td>
                                                    <td>${m.getGender()}</td>
                                                    <td>${m.getAddress(m.getID(), listAddress)}</td>
                                                    <td>${m.getDob()}</td>
                                                    <td>${iUser.getUserById(m.getID(), listUser).isStatus()?'Active':'In-active'}</td>
                                                    <td>${iRate.getRateByMentorID(m.getID())}</td>
                                                    <td><a href="<%=request.getContextPath()%>/viewCV?mentorID=${m.getID()}">Detail</a></td>
                                                    <td><a href="<%=request.getContextPath()%>/allMentorControl?mentorID=${m.getID()}&sort=${statusSort}">${iUser.getUserById(m.getID(), listUser).isStatus()?'Ban':'Open'}</a></td>
                                                </tr> 
                                            </c:forEach>


                                        </tbody>

                                    </table>
                                    <!--phan trang-->
                                    <div class="pagination">
                                        <%--<c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                            <a href="<%=request.getContextPath()%>/sendMentor?page=1&search=${search}"><<</a>  
                                        </c:if>      
                                        <c:forEach begin="${1}" end="${pageIf.np}" var="i">
                                            <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/sendMentor?page=${i}&search=${search}">${i}</a>
                                        </c:forEach>
                                        <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                            <a href="<%=request.getContextPath()%>/sendMentor?page=${pageIf.np}&search=${search}">>></a>  
                                        </c:if>  --%>
                                        <a class="active" href="">1</a>
                                        <a class="" href="">2</a>
                                        <a class="" href="">3</a>
                                        <a class="" href="">4</a>
                                        <a class="" href="">>></a>
                                    </div>
                                </div>
                            </div>
                        </div></div></section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->

        <!-- /jQuery -->
    </body>
</html>

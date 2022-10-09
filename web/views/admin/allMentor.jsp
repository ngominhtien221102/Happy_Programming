


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
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Invitation</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!--                            total invitation -->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #fe9365;">696</h4>
                                            <h6 class="text-muted">All Invitations</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <i class="ti-user" style="color: #fe9365;"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#fe9365,#feb798); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Total Invitation</p>
                                    </div>
                                </div>

                            </article>
                            <!--number of invitations accepted-->

                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #0ac282;">300</h4>
                                            <h6 class="text-muted">Accepted</h6>
                                        </div>
                                        <div class="col-4 text-right" style="color: #0ac282;" >
                                            <i class="ti-user"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#0ac282,#0df3a3); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitations accepted</p>
                                    </div>
                                </div>
                            </article>

                            <!--Invitation rejected-->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #fe5d70;">200</h4>
                                            <h6 class="text-muted">Rejected</h6>
                                        </div>
                                        <div class="col-4 text-right" style="color: #fe5d70;">
                                            <i class="ti-user"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#fe5d70,#fe909d); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitation rejected</p>
                                    </div>
                                </div>

                                <!--Invitation in progress-->
                            </article>
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #01a9ac;">169</h4>
                                            <h6 class="text-muted">Progressing</h6>
                                        </div>
                                        <div class="col-4 text-right" style="color: #01a9ac;">
                                            <i class="ti-user"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#01a9ac,#01dbdf); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitation in progress</p>
                                    </div>
                                </div>
                            </article>

                            <article class="col-md-10" style="margin: 50px auto 0 auto">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-6">
                                            <h3 style="color: #fe9365;">Last month</h3>
                                            <h4 style="color: #fe9365;">300</h4>
                                            <h6 class="text-muted">Invitations</h6>
                                        </div>
                                        <div class="col-6">
                                            <h3 style="color: #fe9365;">This month</h3>
                                            <h4 style="color: #fe9365;">369</h4>
                                            <h6 class="text-muted">Invitations</h6>
                                        </div>
                                    </div>
                                    
                                    <div style="background: linear-gradient(to right,#2b5876,#4e4376); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <div style="color: #fff">Note: tăng hoặc giảm </div>
                                        <p style="color: #fff; margin: 0 "><i class="ti-arrow-up m-2"></i>10%</p>
                                        <p style="color: #fff; margin: 0 "><i class="ti-arrow-down m-2"></i>10%</p>
                                    </div>
                                </div>
                                

                            </article>
                        </div>
                        <div class="card-block" >
                            <h3 style="margin-bottom: 20px" class="">Invitations</h3>
                            <h4>696</h4>
                            <p class="text-muted">All invitation</p>
                            <!--accepted-->
                            <div style="margin: 20px 0">
                                <h5 class="">300</h5>
                                <p class="text-muted">Accepted<span style="float: right">60%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: 60%;background: linear-gradient(to right,#0ac282,#0df3a3); "></div>
                                </div>
                            </div>
                            <!--rejected-->
                            <div style="margin: 20px 0">
                                <h5 class="">200</h5>
                                <p class="text-muted">Rejected<span style="float: right">20%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: 20%;background: linear-gradient(to right,#fe5d70,#fe909d); "></div>
                                </div>
                            </div>
                            <!--progress-->
                            <div style="margin: 20px 0">
                                <h5 class="">169</h5>
                                <p class="text-muted">Progressing<span style="float: right">20%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: 20%; background: linear-gradient(to right,#01a9ac,#01dbdf); "></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-block" style="">
                            <div class="search" style="margin-left:15px" > 
                                <form action="<%=request.getContextPath()%>/sendInvitation" class="row">
                                    <input  type="text" name="search" value="" placeholder="Search Your Mentor">
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
                                                <th>Mentee</th>
                                                <th>Mentor</th>
                                                <th>Status</th>
                                                <!--sap xep theo tittle-->
                                                <th>Title<a style="float: right;color: #000" href=""><i class="ti-arrow-down"></i><i class="ti-arrow-up"></i></a></th>         
                                                <th>Deadline Date</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Dang Nhat Minh</td>
                                                <td>Tran Ngoc Cuong</td>
                                                <td>Processing</td>
                                                <td>Hello Cuong Dep Trai !</td>
                                                <td>25/10/2002</td>
                                                <td><a href="">Detail</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Dang Nhat Minh</td>
                                                <td>Tran Ngoc Cuong</td>
                                                <td>Processing</td>
                                                <td>Hello Cuong Dep Trai !</td>
                                                <td>25/10/2002</td>
                                                <td><a href="">Detail</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Dang Nhat Minh</td>
                                                <td>Tran Ngoc Cuong</td>
                                                <td>Processing</td>
                                                <td>Hello Cuong Dep Trai !</td>
                                                <td>25/10/2002</td>
                                                <td><a href="">Detail</a></td>
                                            </tr><!-- comment -->
                                            <tr>
                                                <td>4</td>
                                                <td>Dang Nhat Minh</td>
                                                <td>Tran Ngoc Cuong</td>
                                                <td>Processing</td>
                                                <td>Hello Cuong Dep Trai !</td>
                                                <td>25/10/2002</td>
                                                <td><a href="">Detail</a></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Dang Nhat Minh</td>
                                                <td>Tran Ngoc Cuong</td>
                                                <td>Processing</td>
                                                <td>Hello Cuong Dep Trai !</td>
                                                <td>25/10/2002</td>
                                                <td><a href="">Detail</a></td>
                                            </tr>
                                        </tbody>

                                    </table>
                                    <!--phan trang-->
                                    <div class="pagination">
                                        <%--<c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                            <a href="<%=request.getContextPath()%>/sendInvitation?page=1&search=${search}"><<</a>  
                                        </c:if>      
                                        <c:forEach begin="${1}" end="${pageIf.np}" var="i">
                                            <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/sendInvitation?page=${i}&search=${search}">${i}</a>
                                        </c:forEach>
                                        <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                            <a href="<%=request.getContextPath()%>/sendInvitation?page=${pageIf.np}&search=${search}">>></a>  
                                        </c:if>  --%>
                                        <a class="active" href="">1</a>
                                        <a class="" href="">2</a>
                                        <a class="" href="">3</a>
                                        <a class="" href="">4</a>
                                        <a class="" href="">>></a>
                                    </div>
                                </div>
                            </div>
                        </div></section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->

        <!-- /jQuery -->
    </body>
</html>
    
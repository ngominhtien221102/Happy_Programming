


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="../user/headCSS2.jsp" %>
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
            background-color: rgba(0,0,0,.03);
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
        .pagination a,.pagination select{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
            height: 40px;
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
            height: 40px;

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

        .static-number{
            margin-top: 39px;
        }
        .bgr-white{
            background: #fff;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="adminSidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Invitation</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">


                            <!--number of invitations accepted-->

                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #0ac282;">${acpt}</h4>
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
                                            <h4 style="color: #fe5d70;">${reject}</h4>
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

                            <!--Invitation processing-->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #01a9ac;">${process}</h4>
                                            <h6 class="text-muted">Processing</h6>
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

                            <!--                            cancel invitation -->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #fe9365;">${cancel}</h4>
                                            <h6 class="text-muted">Cancel</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <i class="ti-user" style="color: #fe9365;"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#fe9365,#feb798); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitation Canceled</p>
                                    </div>
                                </div>

                            </article>


                        </div>
                                            
                                            <!-- Bar Chart -->
                        <div class="card shadow mb-4" style="margin-top: 50px">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold ">Total invitations in the year</h6>
                            </div>
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="myBarChart" style="height: 400px"></canvas>
                                </div>
                                <hr>
                            </div>
                        </div>

                        <!-- Area Chart -->
                        <div class="card shadow mb-4" style="margin-top: 50px">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold ">Number of invitations in the year</h6>
                            </div>
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="myAreaChart" style="height: 400px"></canvas>
                                </div>
                                <hr>
                            </div>
                        </div>
                        <div class="card-block" >
                            <h3 style="margin-bottom: 20px" class="">Invitations</h3>
                            <h4>${totalInv}</h4>
                            <p class="text-muted">All invitation</p>
                            <!--accepted-->
                            <div style="margin: 20px 0">
                                <h5 class="">${acpt}</h5>
                                <p class="text-muted">Accepted<span style="float: right">${Math.round(acpt*100/totalInv) }%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: ${acpt*100/totalInv}%;background: linear-gradient(to right,#0ac282,#0df3a3); "></div>
                                </div>
                            </div>
                            <!--rejected-->
                            <div style="margin: 20px 0">
                                <h5 class="">${reject}</h5>
                                <p class="text-muted">Rejected<span style="float: right">${Math.round(reject*100/totalInv)}%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: ${reject*100/totalInv}%;background: linear-gradient(to right,#fe5d70,#fe909d); "></div>
                                </div>
                            </div>
                            <!--progress-->
                            <div style="margin: 20px 0">
                                <h5 class="">${process}</h5>
                                <p class="text-muted">Processing<span style="float: right">${Math.round(process*100/totalInv)}%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: ${process*100/totalInv}%; background: linear-gradient(to right,#01a9ac,#01dbdf); "></div>
                                </div>
                            </div>

                            <!--Cancel-->
                            <div style="margin: 20px 0">
                                <h5 class="">${cancel}</h5>
                                <p class="text-muted">Cancel<span style="float: right">${Math.round(cancel*100/totalInv)}%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: ${cancel*100/totalInv}%; background: linear-gradient(to right,#fe9365,#feb798); "></div>
                                </div>
                            </div>
                        </div>

                        <div class="card-block" style="">
                            <div class="search" style="margin-left:15px" > 
                                <form action="<%=request.getContextPath()%>/allInvitation" method="" class="row">
                                    <input  type="text" name="search" value="${search}" placeholder="Search Your Invitation">
                                    <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <br>
                            <h3>Invitation</h3>
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
                                                <th>
                                                    Title
                                                    <a style="float: right;color: #000" href="<%=request.getContextPath()%>/allInvitation?sort=${sort}&nrpp=${nrpp}<c:if test="${search != null}">&search=${search}</c:if>">
                                                            <i class="ti-arrow-down" ></i><i class="ti-arrow-up"></i>
                                                        </a>
                                                    </th> 

                                                    <th>Deadline Date</th>
                                                </tr>
                                            </thead>


                                            <tbody class="bgr-white">
                                            <c:forEach items="${invitationList}" var="inv" varStatus="loop" begin="${pageIf.start}" end="${pageIf.end}" >
                                                <tr>
                                                    <td>${loop.index + 1}</td>
                                                    <td>
                                                        <c:forEach items="${listUserProfile}" var="user">
                                                            <c:if test="${user.ID == inv.menteeID}">
                                                                ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach items="${listUserProfile}" var="user">
                                                            <c:if test="${user.ID == inv.mentorID}">
                                                                ${user.firstName} ${user.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>Processing</td>
                                                    <td>${inv.title}</td>
                                                    <td>${inv.deadlineDate}</td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>

                                    <!--phan trang-->
                                    <div class="pagination col-md-12" style="justify-content: right; padding-right: 0">
                                        <c:if test="${requestScope.pageIf.cp!=1 && requestScope.pageIf.end!=null}">
                                            <a href="<%=request.getContextPath()%>/allInvitation?page=1&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>"><<</a>  
                                        </c:if>      
                                        <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                            <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/allInvitation?page=${i}&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>">${i}</a>
                                        </c:forEach>
                                        <c:if test="${requestScope.pageIf.cp!=requestScope.pageIf.np && requestScope.pageIf.end!=0}">
                                            <a href="<%=request.getContextPath()%>/allInvitation?page=${requestScope.pageIf.np}&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>">>></a>  
                                        </c:if>  
                                        <div class="select-nrpp" style="">
                                            <div class="nrpp" onclick="showNrpp()">${nrpp}<i class="ti ti-angle-down ml-1"></i></div>
                                            <div id="nrpp">
                                                <c:forEach items="${pageIf.arrNrpp}" var="i">
                                                    <a class="<c:if test="${nrpp==i}">selected</c:if>" href="<%=request.getContextPath()%>/allInvitation?nrpp=${i}<c:if test="${search!=null}">&search=${search}</c:if><c:if test="${status != null}">&sort=${status}</c:if>">${i}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
        
        <!-- /footer -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Page level plugins -->
        <script src="<%=request.getContextPath()%>/js/vendor/chart.js/Chart.min.js"></script>
        <script>
                                                function showNrpp() {
                                                    if (document.getElementById('nrpp').style.display === "flex")
                                                        document.getElementById('nrpp').style.display = "none";
                                                    else
                                                        document.getElementById('nrpp').style.display = "flex";
                                                }
</script>
        <!-- Page level custom scripts -->
        <script src="<%=request.getContextPath()%>/js/admin/invitation/chart-area-demo.js"></script>

    </body>
</html>

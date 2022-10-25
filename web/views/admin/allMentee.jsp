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
        input,textarea,.cv{
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
        }.pagination a,.pagination select{
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
        .ti-arrow-down{
            width: 20%;
        }
        .bgr-white{
            background: #fff;
        }
    </style>
    <body>
        <!-- header -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="adminSidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Mentee</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!--                            total invitation -->
                            <article class="col-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-6">
                                            <h4 style="color: #0ac282;">${total}</h4>
                                            <h6 class="text-muted">All Mentees</h6>
                                        </div>
                                        <div class="col-6">
                                            <h4 style="color: #0ac282;">${mActive}</h4>
                                            <h6 class="text-muted">Active Mentees</h6>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#0ac282,#0df3a3); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Total Mentee</p>
                                    </div>
                                </div>

                            </article>
                            <!--number of invitations accepted-->



                            <article class="col-6" >
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-6">
                                            <h4 style="color: #01a9ac;">${lastMonth} Mentees</h4>
                                            <h6 class="text-muted">Last month</h6>
                                        </div>
                                        <div class="col-6">
                                            <h4 style="color: #01a9ac;">${thisMonth} Mentees</h4>
                                            <h6 class="text-muted">This month</h6>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#01a9ac,#01dbdf); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <c:if test="${thisMonth >= lastMonth}" >
                                            <p style="color: #fff; margin: 0 "><i class="ti-arrow-up m-2"></i>${percent}</p>
                                            </c:if>
                                            <c:if test="${thisMonth < lastMonth}" >
                                            <p style="color: #fff; margin: 0 "><i class="ti-arrow-down m-2"></i>${percent}</p>
                                            </c:if>
                                    </div>
                                </div>
                            </article>
                        </div>

                        <!-- Area Chart -->
                        <div class="card shadow mb-4" style="margin-top: 50px">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold ">Number of mentees registered in the year</h6>
                            </div>
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="myAreaChart"></canvas>
                                </div>
                                <hr>
                            </div>
                        </div>

                        <div class="card-block" style="">
                            <div class="search" style="margin-left:15px" > 
                                <form action="<%=request.getContextPath()%>/allMentee" class="row">
                                    <input  type="text" name="search" value="${search}" placeholder="Search Mentees">
                                    <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                                </form>
                            </div>

                                    <br><h3>Mentees</h3>
                        <div class="row">  
                            <div class="col-md-12 table">

                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>STT</th> 
                                            <th>Name<a style="float: right;color: #fff" 
                                                       href="<%=request.getContextPath()%>/allMentee?sort=${sort}&nrpp=${nrpp}<c:if test="${search != null}">&search=${search}</c:if>"><i class="ti-arrow-down"></i><i class="ti-arrow-up"></i></a></th>
                                                <th>Gender</th>
                                                <th style="width: 25%">Address</th>
                                                <th>DOB</th>
                                                <th>Email</th>
                                                <th>Active</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>

                                       
                                            <tbody class="bgr-white">
                                            <c:forEach items="${listMentee}" var="m" varStatus="loop" begin="${pageIf.start}" end="${pageIf.end}">
                                                <tr>
                                                    <td>${loop.index + 1}</td>
                                                    <td>${m.getFirstName()} ${m.getLastName()}</td>
                                                    <td>${m.getGender()}</td>
                                                    <td>${m.getAddress(m.getID(), listAddress)}</td>
                                                    <td>${m.getDob()}</td>
                                                    <td>${m.getEmail()}</td>
                                                    <td>${iUser.getUserById(m.getID(), listUser).isStatus()}</td>
                                                    <td><a style="${iUser.getUserById(m.getID(), listUser).isStatus()?'color:red':'color:green'}"
                                                           href="<%=request.getContextPath()%>/allMentee?menteeID=${m.getID()}&nrpp=${nrpp}&page=${pageIf.cp}<c:if test="${search != null}">&search=${search}</c:if><c:if test="${status != null}">&sort=${status}</c:if>">
                                                            ${iUser.getUserById(m.getID(), listUser).isStatus()?'Ban':'Open'}</a></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>

                                    </table>
                                    <!--phan trang-->

                                    <div class="pagination">
                                        <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                            <a href="<%=request.getContextPath()%>/allMentee?page=1&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>"><<</a>  
                                        </c:if>      
                                        <c:forEach begin="${1}" end="${pageIf.np}" var="i">
                                            <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/allMentee?page=${i}&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>">${i}</a>
                                        </c:forEach>
                                        <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                            <a href="<%=request.getContextPath()%>/allMentee?page=${pageIf.np}&nrpp=${nrpp}<c:if test="${status != null}">&sort=${status}</c:if><c:if test="${search != null}">&search=${search}</c:if>">>></a>  
                                        </c:if>  
                                        <div class="select-nrpp" style="">
                                            <div class="nrpp" onclick="showNrpp()">${nrpp}<i class="ti ti-angle-down ml-1"></i></div>
                                            <div id="nrpp">
                                                <c:forEach items="${pageIf.arrNrpp}" var="i">
                                                    <a class="<c:if test="${nrpp==i}">selected</c:if>" href="<%=request.getContextPath()%>/allMentee?nrpp=${i}<c:if test="${search!=null}">&search=${search}</c:if><c:if test="${status != null}">&sort=${status}</c:if>">${i}</a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <!--nrpp-->
                                </div>        
                            </div>
                        </div>
                        </div>
                        
                    </section></div></div>
  


<!-- footer -->
<%@include file="footer.jsp" %>
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
<script src="<%=request.getContextPath()%>/js/admin/mentee/chart-area-demo.js"></script>
</body>
</html>
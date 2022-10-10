
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
        <c:set value="${requestScope}" var="rS"/>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="mentorSidebar.jsp" %>
            <div class="col-10" style="padding: 0">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Invitation</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!-- Invitations cancel -->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #fe9365;">${rS.totalCancelInv}</h4>
                                            <h6 class="text-muted">Cancel</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <i class="ti-user" style="color: #fe9365;"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#fe9365,#feb798); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitations cancel</p>
                                    </div>
                                </div>

                            </article>
                                            
                            <!-- Invitations accepted-->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #0ac282;">${rS.totalAcceptedInv}</h4>
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
                                            <h4 style="color: #fe5d70;">${rS.totalRejectedInv}</h4>
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
                                            
                            <!--Invitations in progress-->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #01a9ac;">${rS.totalProcessingInv}</h4>
                                            <h6 class="text-muted">Progressing</h6>
                                        </div>
                                        <div class="col-4 text-right" style="color: #01a9ac;">
                                            <i class="ti-user"></i>
                                        </div>
                                    </div>
                                    <div style="background: linear-gradient(to right,#01a9ac,#01dbdf); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Invitations in progress</p>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="card-block" >
                            <h3 style="margin-bottom: 20px" class="">Invitations</h3>
                            <h4>${rS.totalInv}</h4>
                            <p class="text-muted">All invitation</p>
                            <!--accepted-->
                            <div style="margin: 20px 0">
                                <h5 class="">${rS.totalAcceptedInv}</h5>
                                <p class="text-muted">Accepted<span style="float: right">${rS.percentAccepted}%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: ${rS.percentAccepted}%;background: linear-gradient(to right,#0ac282,#0df3a3); "></div>
                                </div>
                            </div>
                            <!--rejected-->
                            <div style="margin: 20px 0">
                                <h5 class="">${rS.totalRejectedInv}</h5>
                                <p class="text-muted">Rejected<span style="float: right">${rS.percentRejected}%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: ${rS.percentRejected}%;background: linear-gradient(to right,#fe5d70,#fe909d); "></div>
                                </div>
                            </div>
                            <!--progress-->
                            <div style="margin: 20px 0">
                                <h5 class="">${rS.totalProcessingInv}</h5>
                                <p class="text-muted">Progressing<span style="float: right">${rS.percentProcessing}%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: ${rS.percentProcessing}%; background: linear-gradient(to right,#01a9ac,#01dbdf); "></div>
                                </div>
                            </div>
                            <!--cancel-->
                            <div style="margin: 20px 0">
                                <h5 class="">${rS.totalCancelInv}</h5>
                                <p class="text-muted">Cancel<span style="float: right">${rS.percentCancel}%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: ${rS.percentCancel}%; background: linear-gradient(to right,#fe9365,#feb798); "></div>
                                </div>
                            </div>
                        </div>
                
                </section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->

        <!-- /jQuery -->
    </body>
</html>

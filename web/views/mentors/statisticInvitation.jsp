<%-- 
    Document   : viewRequest
    Created on : Oct 5, 2022, 11:25:31 AM
    Author     : minhd
--%>

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

    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="mentorSidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Invitation statistics</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!--                            total invitation -->
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #fe9365;">50</h4>
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


                                <!--number of invitations accepted-->
                            </article>
                            <article class="col-xl-3 col-md-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-8">
                                            <h4 style="color: #0ac282;">30</h4>
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
                                            <h4 style="color: #fe5d70;">10</h4>
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
                                            <h4 style="color: #01a9ac;">10</h4>
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

                        </div>
                        <div class="card-block" style="margin-top: 50px;background-color: #f3f3f3; padding: 50px; border-radius: 5px">
                            <h3 style="margin-bottom: 20px" class="">Invitations</h3>
                            <h4>50</h4>
                            <p class="text-muted">All invitation</p>
                            <!--accepted-->
                            <div style="margin: 20px 0">
                                <h5 class="">30</h5>
                                <p class="text-muted">Accepted<span style="float: right">60%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: 60%;background: linear-gradient(to right,#0ac282,#0df3a3); "></div>
                                </div>
                            </div>
                            <!--rejected-->
                            <div style="margin: 20px 0">
                                <h5 class="">10</h5>
                                <p class="text-muted">Rejected<span style="float: right">20%</span></p>

                                <div class="progress">
                                    <div class="progress-bar" style="width: 20%;background: linear-gradient(to right,#fe5d70,#fe909d); "></div>
                                </div>
                            </div>
                            <!--progress-->
                            <div style="margin: 20px 0">
                                <h5 class="">10</h5>
                                <p class="text-muted">Progressing<span style="float: right">20%</span></p>
                                <div class="progress">
                                    <div class="progress-bar" style="width: 20%; background: linear-gradient(to right,#01a9ac,#01dbdf); "></div>
                                </div>
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

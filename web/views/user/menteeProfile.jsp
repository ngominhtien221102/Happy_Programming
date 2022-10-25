<%-- 
    Document   : profileNew
    Created on : Oct 22, 2022, 3:41:32 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS2.jsp" %>
    <style>

        body{
            margin-top:20px;
            color: #1a202c;
            text-align: left;
            background-color: #ffff;
        }
        .main-body {
            margin-top: 11%;
        }
        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);

        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid rgba(0,0,0,.125);
            border-radius: .25rem;
        }

        .card-body {
            flex: 1 1 auto;
            min-height: 1px;
            min-height: 330px;
        }

        .gutters-sm {
            margin-right: -8px;
            margin-left: -8px;
        }

        .gutters-sm>.col, .gutters-sm>[class*=col-] {
            padding-right: 8px;
            padding-left: 8px;
        }
        .mb-3, .my-3 {
            margin-bottom: 1rem!important;
        }

        .bg-gray-300 {
            background-color: #e2e8f0;
        }
        .h-100 {
            height: 100%!important;
        }
        .shadow-none {
            box-shadow: none!important;
        }

    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->
        <div id="content" class="row" style="padding-top: 30px">
            <%@include file="sidebar.jsp" %>
            <div style="" class="container">
                <div class="main-body">

                    <div class="row gutters-sm">
                        <div style="" class="col-md-4 mb-3">
                            <div class="card">

                                <div class="d-flex flex-column align-items-center text-center">
                                    <img style="height: 409px; width: 370px" src="<%=request.getContextPath()%>/img/avatar/${us.getAvatar()}" alt="Avatar" >
                                </div>

                            </div>            
                        </div>
                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${us.getFirstName()} ${us.getLastName()}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${us.getEmail()}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Gender:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${us.getGender()}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Birthday:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${us.getDob()}
                                        </div>
                                    </div>
                                    <hr>    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Create at:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${us.getCreateAt()}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Address:</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${xa} , ${huyen} , ${tinh}
                                        </div>
                                    </div> 
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="d-flex flex-column align-items-center text-center">
                                            <a href="<%=request.getContextPath()%>/updateProfile" class="btn btn-primary" >Update</a>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>
    </body>
</html>

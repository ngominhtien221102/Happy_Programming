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


        .main-body {
            padding: 12%;
        }
        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
            background-color: rgba(0,0,0,.03);
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: rgba(0,0,0,.03);
            background-clip: border-box;
            border: 0 solid rgba(0,0,0,.125);
            border-radius: .25rem;
        }

        .card-body {
            flex: 1 1 auto;
            min-height: 1px;
            padding: 1rem;
            min-height: 325px;
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
        .profile-avar{
            height: 190px;
            width: 190px;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->
        <div id="content" class="row" style="padding-top: 30px">
            <%@include file="sidebar.jsp" %>
            <div class="container">
                <div class="main-body">

                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="<%=request.getContextPath()%>/img/avatar/${us.avatar}" 
                                             onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" 
                                             class="profile-avar rounded-circle"/>
                                        <div class="mt-3">
                                            <h4>${us.getFirstName()} ${us.getLastName()}</h4>
                                            <a href="<%=request.getContextPath()%>/updateProfile" class="btn btn-primary" >Update</a>
                                        </div>
                                    </div>
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
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- footer -->

        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>
    </body>
</html>

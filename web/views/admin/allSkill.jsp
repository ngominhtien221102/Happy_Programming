


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

        .card-block{
            margin-top: 50px;
            background-color: #f3f3f3;
            padding: 50px;
            border-radius: 5px;
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

        .col-9{
            margin: 0 auto;
        }

    </style>
    <body>
        <!-- header -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Skill</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <!--                            total invitation -->
                            <article class="col-6">
                                <div class="card border-bottom hover-shadow" style="border-radius: 5px;background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-12 text-lg-center">
                                            <h4 style="color: #0ac282;">10</h4>
                                            <h6 class="text-muted">All Skills</h6>
                                        </div>

                                    </div>
                                    <div style="background: linear-gradient(to right,#0ac282,#0df3a3); text-align: center; align-items: center; padding: 20px;
                                         border-bottom-left-radius: 5px;
                                         border-bottom-right-radius: 5px;">
                                        <p style="color: #fff; margin: 0 ">Total Skill</p>
                                    </div>
                                </div>
                                <form class="mt-3" action="action">
                                    <h5>Skill's name:</h5> <input class="form-control" type="text" name="name">
                                    <button type="submit" class="btn btn-primary float-right">Create</button>
                                </form>
                            </article>
                            <div class="col-6 table">
                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>STT</th> 
                                            <th>Name</th>
                                            <th colspan="2" class="text-lg-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr><tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr><tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr><tr>
                                            <td>1</td>
                                            <td>Java</td>
                                            <td>Edit</td>
                                            <td><a>Delete</a></td>
                                        </tr>
                                    </tbody>

                                </table>
                                <!--number of invitations accepted-->
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

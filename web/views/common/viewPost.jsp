<%-- 
    Document   : blog-single
    Created on : Sep 21, 2022, 3:04:36 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS.jsp" %>

    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->


        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="<%=request.getContextPath()%>/allPost">Our Blog</a></li>
                            <li class="list-inline-item text-white h3 font-secondary nasted">Blog Details</li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- blog details -->
        <section class="section-sm bg-gray">
            <div class="container">
                <div class="row">

                    <!-- border -->
                    <div class="col-12 mt-4">
                        <div class="border-bottom border-primary"></div>
                    </div>
                    <!-- blog contect -->
                    <div class="col-12 mb-5">
                        <h2>${post.getTitle()} </h2>
                        <p>${post.getContent()}</p>

                    </div
                </div>
            </div>
        </section>
        <!-- /blog details -->

        <!-- recommended post -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="section-title">Recommended</h2>
                    </div>
                </div>
                <div class="row justify-content-center">       
                    <c:forEach items="${rcPost}" var="i">
                        <article class="col-lg-4 col-sm-6 mb-5">
                            <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                                <div class="card-body">

                                    <a href="<%=request.getContextPath()%>/viewPost?postID=${i.getID()}">
                                        <h4 style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis" class="card-title">${i.getTitle()}</h4>
                                    </a>
                                    <p style="-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden; display: -webkit-box;" class="card-text">${i.getContent()}</p>
                                    <a href="<%=request.getContextPath()%>/viewPost?postID=${i.getID()}" class="btn btn-primary btn-sm">read more</a>
                                </div>
                            </div>
                        </article>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- /recommended post -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>

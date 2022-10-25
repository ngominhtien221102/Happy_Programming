<%-- 
    Document   : blog
    Created on : Sep 21, 2022, 3:05:05 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS.jsp" %>
    <style>
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
        }
        .pagination a:hover, .pagination a.active{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        .pagination{
            margin: 30px 0;
            float: right;
            margin-right: 13%;
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



    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- page title -->
        <div>
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="<%=request.getContextPath()%>/views/common/blog.jsp">Our Blog</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- blogs -->
        <div  class="card-block" style="padding-top: 2%; display: flex">
            <div class="search" style="margin-left:15%; min-width: 50%"> 
                <form action="<%=request.getContextPath()%>/allPost" method="Get" class="row">
                    <input  type="text" name="search" value="${search}" placeholder="Search Post">
                    <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                </form> 
            </div>
            <span><select class="select"  style=" margin-top: 1.6%; margin-right: 15%; position: absolute; height: 30px; font-family: 'Open Sans', sans-serif ">
                    <option >Default Sort</option>
                    <option>Sort By Title</option>
                    <option>Sort By Date</option>
                </select></span>

        </div>
        <section class="section">
            <div class="container">
                <div class="row">
                    <c:forEach items="${postList}" var="i" begin="${pageIf.start}" end="${pageIf.end}">
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
            <div class="pagination" >
            <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                <a href="<%=request.getContextPath()%>/allPost?page=1&nrpp=${nrpp}<c:if test="${search != null}">&search=${search}</c:if>"><<</a>  
            </c:if>      
            <c:forEach begin="${1}" end="${pageIf.np}" var="i">
                <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/allPost?page=${i}&nrpp=${nrpp}<c:if test="${search != null}">&search=${search}</c:if>">${i}</a>
            </c:forEach>
            <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                <a href="<%=request.getContextPath()%>/allPost?page=${pageIf.np}&nrpp=${nrpp}<c:if test="${search != null}">&search=${search}</c:if>">>></a>  
            </c:if>  
            <div class="select-nrpp" style="">
                <div class="nrpp" onclick="showNrpp()">${nrpp}<i class="ti ti-angle-down ml-1"></i></div>
                <div id="nrpp">
                    <c:forEach items="${pageIf.arrNrpp1}" var="i">
                        <a class="<c:if test="${nrpp==i}">selected</c:if>" href="<%=request.getContextPath()%>/allPost?nrpp=${i}<c:if test="${search!=null}">&search=${search}</c:if>">${i}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        </section>

        
    </div>
        <script>
            function showNrpp() {
                if (document.getElementById('nrpp').style.display === "flex")
                    document.getElementById('nrpp').style.display = "none";
                else
                    document.getElementById('nrpp').style.display = "flex";
            }
        </script>

        <%@include file="footer.jsp" %>

        <%@include file="scriptJS.jsp" %>

    </body>
</html>

<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>

    <style>
        .card-title,.list-inline-item{
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 300px;
            max-height: 150px;
        }
        .signup__link{
            color: #1e1e4b;
            margin: 2%;
            border:  1px #ededf1 solid ;
            border-radius: 5px;
            padding: 2%;
            background: rgba(9,30,66,0.04);
        }
        .signup__link:hover{
            color: #ffbc3b;
            background: rgba(9,30,66,0.08);
        }
        .invite{
            border: 1px #dee2e6 solid;
            background-color: #f3f3f3;
            border-radius: 5px;
        }
        .pagination a,.pagination select{
            border: #ced4da solid 1px;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
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
            clear: both;
            justify-content: center;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >

                    <div class="container">
                        <h2>All Invitation</h2>
                        <div class="row">
                            <c:forEach items="${listInv2}" var="inv" begin="${pageIf.start}" end="${pageIf.end}" varStatus="loop">
                                <!-- blog post -->
                                <article class="col-lg-4 col-sm-6 mb-5">
                                    <div class="card border-bottom border-primary hover-shadow invite">
                                        <div class="card-body" >
                                            <a href="<%=request.getContextPath()%>/singleInvite?invitationId=${inv.ID}">
                                                <h4 class="card-title text-align-center">${inv.title}</h4>
                                            </a>
                                            <!-- post meta -->
                                            <div class="ml-5">
                                                <ul class="list-inline mb-3">
                                                    <!-- post date -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${inv.createdAt}" pattern="yyyy-MM-dd" var="Date1" />
                                                        <fmt:formatDate value="${Date1}" var="Date3" pattern="dd/MM/yyyy"/>        
                                                        Created at: ${Date3}
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        <fmt:parseDate value="${inv.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                                        <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                                        Deadline: ${Date2}
                                                    </li><br>
                                                    <!-- to -->
                                                    <li class="list-inline-item mr-3 ml-0">
                                                        To: ${name.get(loop.index)}
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Skill: ${HmSkill[inv.skillID]}
                                                    </li><br>
                                                    <li class="list-inline-item mr-3 ml-0">    
                                                        Status: ${listStatus[inv.statusID]}
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="text-align-center">
                                                <a href="<%=request.getContextPath()%>/singleInvite?invitationId=${inv.ID}" class="signup__link">View</a>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </c:forEach>
                        </div>
                        <div class="pagination">
                            <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                <a href="<%=request.getContextPath()%>/viewAllInvite?page=1&nrpp=${nrpp}"><<</a> 
                                <a href="<%=request.getContextPath()%>/viewAllInvite?page=${pageIf.cp-1}&nrpp=${nrpp}"><</a>
                            </c:if>      
                            <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/viewAllInvite?page=${i}&nrpp=${nrpp}">${i}</a>
                            </c:forEach>
                            <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                <a href="<%=request.getContextPath()%>/viewAllInvite?page=${pageIf.cp+1}&nrpp=${nrpp}">></a>
                                <a href="<%=request.getContextPath()%>/viewAllInvite?page=${pageIf.np}&nrpp=${nrpp}">>></a>  
                            </c:if>
                            <form action="<%=request.getContextPath()%>/viewAllInvite" method="GET">
                                <select name="nrpp" onchange="this.form.submit()">
                                    <c:forEach items="${pageIf.arrNrpp}" var="i">
                                        <option <c:if test="${nrpp==i}">selected=""</c:if> value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </form>
                        </div>
                    </div>
                </section>    
            </div>
        </div>
        <!-- footer -->

        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>
        <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
        <script>
                                    var value;
                                    ClassicEditor
                                            .create(document.querySelector('#editor'))
                                            .then(editor => {
                                                value = editor;
                                            })
                                            .catch(error => {
                                                console.error(error);
                                            });

                                    const handleSubmit = () => {
                                        document.getElementById('a').innerHTML = value.getData()
                                    }

        </script>
    </body>

</html>

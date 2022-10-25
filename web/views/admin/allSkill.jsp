


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="../user/headCSS2.jsp" %>
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
            width: 40%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
            flex-wrap: unset;

        }
        .search input[type="text"]:focus {
            width: 50%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
        }
        .search button{
            margin-top:4px;
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
            margin: 0 0 16px 0;
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
        td p{
            margin-bottom: 0;
        }
        /*phan trang*/
    </style>
    <body>
        <!-- header -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <%@include file="adminSidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <h2 style="margin-left:15px; text-align: center">Skill</h2>
                    <div class="container">
                        <div class="row" style="margin-top: 50px">

                            <article class="col-6">
                                <div class=" border-bottom hover-shadow" style="background-color: #f3f3f3">
                                    <div class="card-body row align-items-center" >
                                        <div class="col-12 text-lg-center">
                                            <h4 style="color: #ffbc3b;">${sessionScope.listSkill.size()}</h4>
                                            <h6 class="text-muted">All Skills</h6>
                                        </div>

                                    </div>
                                    <div style="background: #ffbc3b; text-align: center; align-items: center; padding: 20px;">
                                        <p style="color: #fff; margin: 0">Total Skill</p>
                                    </div>
                                </div>
                                <c:if test="${requestScope.success!=null}">
                                    <br><h5 style="color: green">${success}</h5>
                                </c:if>
                                <c:if test="${requestScope.failed!=null}">
                                    <br><h5 style="color: red">${failed}</h5>
                                </c:if>
                                <form class="mt-3" action="<%=request.getContextPath()%>/editSkill" method="post">
                                    <h5>Skill's name:</h5> <input class="form-control" type="text" name="name" value="${name}">
                                    <label style="margin-bottom: 16px" for="">Description:</label><textarea id="editor" class="form-control" name="description" rows="4" cols="50">${description}</textarea>
                                    <button type="submit" class="btn btn-primary float-right mt-3">
                                        <c:if test="${type.equals('1')}">Update</c:if>
                                        <c:if test="${type==null}">Create</c:if>
                                        </button>
                                    </form>
                                </article>

                                <div class="col-6">
                                    <div class="search" style="margin-left:15px" > 
                                        <form action="<%=request.getContextPath()%>/editSkill" class="row">
                                        <input  type="text" name="search" value="${requestScope.search}" placeholder="Search Skill">
                                        <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>STT</th> 
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th colspan="2" class="text-lg-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${sessionScope.listSkillSearch}" var="s" varStatus="loop" begin="${pageIf.start}" end="${pageIf.end}"> 

                                            <tr>
                                                <td>${loop.index+1}</td>
                                                <td>${s.name}</td>
                                                <td ><div style="    white-space: nowrap;
                                                          overflow: hidden;
                                                          width: 100px;
                                                          text-overflow: ellipsis;">${s.description}</div></td>
                                                <td><a class="text-color" href="<%=request.getContextPath()%>/editSkill?skillID=${s.ID}&type=1&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>&page=${pageIf.cp}">update</a></td>
                                                <td><a class="text-color" href="<%=request.getContextPath()%>/editSkill?skillID=${s.ID}&type=0&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>&page=${pageIf.cp}">delete</a></td>
                                                </tr>
                                        </c:forEach>
                                    </tbody>

                                </table>
                                <div class="pagination">
                                    <c:if test="${pageIf.cp!=1 && pageIf.end!=null}">
                                        <a href="<%=request.getContextPath()%>/editSkill?page=1&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>"><<</a> 
                                        <a href="<%=request.getContextPath()%>/editSkill?page=${pageIf.cp-1}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>"><</a>
                                    </c:if>      
                                    <c:forEach begin="${pageIf.cp>2?pageIf.cp-2:1}" end="${pageIf.cp+2>pageIf.np?pageIf.np:pageIf.cp+2}" var="i">
                                        <a class="${i==pageIf.cp?"active":""}" href="<%=request.getContextPath()%>/editSkill?page=${i}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">${i}</a>
                                    </c:forEach>
                                    <c:if test="${pageIf.cp!=pageIf.np && pageIf.end!=0}">
                                        <a href="<%=request.getContextPath()%>/editSkill?page=${pageIf.cp+1}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">></a>
                                        <a href="<%=request.getContextPath()%>/editSkill?page=${pageIf.np}&nrpp=${nrpp}<c:if test="${search!=null}">&search=${search}</c:if>">>></a>  
                                    </c:if>  

                                    <!--nrpp-->
                                    <div class="select-nrpp" style="">
                                        <div class="nrpp" onclick="showNrpp()">${nrpp}<i class="ti ti-angle-down ml-1"></i></div>
                                        <div id="nrpp">
                                            <c:forEach items="${pageIf.arrNrpp}" var="i">
                                                <a class="<c:if test="${nrpp==i}">selected</c:if>" href="<%=request.getContextPath()%>/editSkill?nrpp=${i}<c:if test="${search!=null}">&search=${search}</c:if>">${i}</a>
                                            </c:forEach>
                                        </div>
                                    </div>

                                </div>
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
                                            //phan trang
                                            function showNrpp() {
                                                if (document.getElementById('nrpp').style.display === "flex")
                                                    document.getElementById('nrpp').style.display = "none";
                                                else
                                                    document.getElementById('nrpp').style.display = "flex";
                                            }
        </script>
        <!-- /jQuery -->
    </body>
</html>

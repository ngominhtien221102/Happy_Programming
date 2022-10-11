<%-- 
    Document   : course
    Created on : Sep 21, 2022, 3:07:46 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS.jsp" %>
    <style>
        .card{
            border-radius: 16px;
            background-color: #f3f3f3;
        }
        .skill{
            margin-bottom: 4%;
        }

        .name{
            color: #ffbc3b;
        }
        .skillBot{
            text-align: center;
            align-items: center;
            padding: 20px;
            border-bottom-left-radius: 16px;
            border-bottom-right-radius: 16px;
            background:  linear-gradient(#ffbc3b,yellow);
        }
        .option{
            display: none;
        }
        .option:hover{
            display: block;
        }

    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->

        <!-- page title -->

        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="skills.jsp">Our Skills</a></li>
                            <li class="list-inline-item text-white h3 font-secondary "></li>
                        </ul>
                        <p class="text-lighten">Our skills offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>


            </div>

        </section>



        <!-- /page title -->


        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <section class="section">
                        <div class="container"> 
                            <div class="row">
                                <c:forEach items="${sessionScope.listSkill}" var="lst" varStatus="loop"> 
                                    <article class="col-xl-3 col-md-6 skill">    
                                        <div class="card border-bottom hover-shadow" style="">
                                            <div class="card-body row align-items-center justify-content-center" >
                                                <div >
                                                    <h4 class="name">${lst.name}</h4>
                                                </div>
                                            </div>
                                            <div class="skillBot">
                                                <a href="" style="color: #fff;">View Mentors</a>
                                            </div>
                                        </div>

                                    </article>
                                </c:forEach>

                            </div>
                    </section></div>
            </div>
        </div>

    </div>
</div>
</div>




<!-- footer -->
<%@include file="footer.jsp" %>
<!-- /footer -->

<!-- jQuery -->
<%@include file="scriptJS.jsp" %>

</body>
</html>

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

    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->
        <%@include file="modal.jsp" %>

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="skills.jsp">Our Courses</a></li>
                            <li class="list-inline-item text-white h3 font-secondary "></li>
                        </ul>
                        <p class="text-lighten">Our skills offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- skills -->
        <section class="section">
            <div class="container">
                <!-- course list -->
                <c:forEach items="${sessionScope.listSkill}" var="lst"> 
                    <table border="2">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Test</th> 
                            <th>Test</th>                  
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${lst.getID()}</td>
                            <td>${lst.getName}</td>
                            <td><a href="<%=request.getContextPath()%>/viewMentor?id=${lst.getID()}">Mentor</a></td>
                            <td></td>
                        </tr>

                    </tbody>
                </table>

                </c:forEach>
                
            </div>
        </section>
        <!-- /skills -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>

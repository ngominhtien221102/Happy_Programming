<%-- 
    Document   : createMenteeProfile
    Created on : Oct 2, 2022, 8:37:54 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%@include file="../user/headCSS2.jsp" %>

    </head>
    <body>

        <%@include file="header.jsp" %>

        <!-- Main Content -->

        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">

            <%@include file="mentorSidebar.jsp" %>


            <div class="col-10">
                <div class="container">

                    <div style="padding:5rem">
                        <div class="text-center">
                            <h3>
                                Update CV</h3>
                        </div>
                        <c:if test="${requestScope.updateSuccess!=null}" >
                            <h4 style="color: green">${requestScope.updateSuccess}</h4>
                        </c:if>
                        <form class="user" action="<%=request.getContextPath()%>/updateCV" method="post">      

                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <h4>Profession</h4>
                                <input type="text" class="form-control form-control-user" value="${CV.profession}"
                                       placeholder="Profession" name="profession" required>
                            </div>


                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <h4>Service Description</h4>
                                <input type="text" class="form-control form-control-user" value="${CV.serviceDescription}"
                                       placeholder="Service Description" name="serviceDes" required>
                            </div>


                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <h4>Achivements</h4>
                                <input type="text" class="form-control form-control-user" value="${CV.achivements}"
                                       placeholder="Achivements" name="achivements" required>
                            </div>



                            <div class=" row checkbox-group required" style="padding-bottom: 20px;" >

                                <c:forEach items="${sessionScope.listSkill}" var="s">
                                    <div class="col-md-3">
                                        <input type="checkbox" class="skill " required="" 
                                           <c:forEach items="${CV.skillList}" var="skillMentor">
                                               <c:if test="${s.ID==skillMentor.ID}">
                                                   checked=""
                                               </c:if>
                                           </c:forEach>

                                           onclick="deRequireCb('skill')"
                                           name="skill${s.ID}" style="height: 20px; width: 10%">${s.name}
                                    </div>
                                    
                                </c:forEach>

                            </div>

                            <!--introduction-->
                            <div class="form-group row flex-column" style="padding-bottom: 20px;">
                                <h4>Introduction</h4>
                                </br>
                                <textarea value="" name="introduction" id="editor" cols="75" rows="10" placeholder="Introduction" required>
                                    ${CV.introduction}
                                </textarea>
                            </div>

                            <input type="submit" value="Save Change" class="btn btn-primary btn-user btn-block" />
                        </form>
                    </div>

                    <!-- /.container-fluid -->
                </div>
            </div>


            <!-- End of Main Content -->
        </div>
        <%@include file="footer.jsp" %>
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
                                                   document.getElementById('a').innerHTML = value.getData();
                                               };
        </script>
        <script>
            function deRequireCb(elClass) {
                el = document.getElementsByClassName(elClass);

                var atLeastOneChecked = false; //at least one cb is checked
                for (i = 0; i < el.length; i++) {
                    if (el[i].checked === true) {
                        atLeastOneChecked = true;
                    }
                }

                if (atLeastOneChecked === true) {
                    for (i = 0; i < el.length; i++) {
                        el[i].required = false;
                    }
                } else {
                    for (i = 0; i < el.length; i++) {
                        el[i].required = true;
                    }
                }
            }
        </script>
    </body>
</html>

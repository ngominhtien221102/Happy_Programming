<%-- 
    Document   : createMenteeProfile
    Created on : Oct 2, 2022, 8:37:54 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <body>

        <%@include file="../user/header.jsp" %>

        <!-- Main Content -->
        <div id="content" class="row" style="padding-top: 50px;  min-height: 800px">
            <!-- Begin Page Content -->

            <%@include file="mentorSidebar.jsp" %>


            <div class="col-10">
                <div class="container">
                    <div style="padding:5rem">
                        <div class="text-center">
                            <h3>
                                Create CV</h3>
                        </div>
                        <c:if test="${requestScope.createSuccess!=null}" >
                            <h4 style="color: green">${requestScope.createSuccess}</h4>
                        </c:if>
                        <form class="user" action="<%=request.getContextPath()%>/createCV" method="post">      

                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="Profession" name="profession" required>
                            </div>


                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="Service Description" name="serviceDes" required>
                            </div>


                            <div class="form-group row flex-column" style="padding-bottom: 20px;" >
                                <textarea class="editor"  name="achivements" id="editor1" cols="75" rows="10" placeholder="Achivements" required>
                                </textarea>
                            </div>

                            <div class=" row checkbox-group required flex-lg-row" style="padding-bottom: 20px;" >

                                <c:forEach items="${sessionScope.listSkill}" var="s">
                                    <div style="height: 20px; width: 100px">
                                        <input type="checkbox" class="skill" required=""  onclick="deRequireCb('skill')"
                                               name="skill${s.ID}" >${s.name}
                                    </div>

                                </c:forEach>

                            </div>

                            <!--introduction-->
                            <div class="form-group row flex-column" style="padding-bottom: 20px;">
                                <div>Introduction</div>
                                </br>
                                <textarea class="editor"  name="introduction" id="editor" cols="75" rows="10" placeholder="Introduction" required>
                                </textarea>
                            </div>
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="submit" value="Create" class="btn btn-primary btn-user btn-block" />

                            </div>
                        </form>
                    </div>

                </div>
            </div>


            <!-- End of Main Content -->
        </div>
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


        </script>
        <script>
            var value;
            ClassicEditor
                    .create(document.querySelector('#editor1'))
                    .then(editor => {
                        value = editor;
                    })
                    .catch(error => {
                        console.error(error);
                    });


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

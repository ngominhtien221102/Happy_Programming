<%-- 
    Document   : createMenteeProfile
    Created on : Oct 2, 2022, 8:37:54 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="headCSS.jsp" %>

    </head>
    <body>

        <%@include file="header.jsp" %>

        <!-- Main Content -->
        <div id="content" class="row">
            <!-- Begin Page Content -->
            <div class="col-sm-2">
                <%@include file="mentorSidebar.jsp" %>
            </div>

            <div class="col-sm-10">
                <div class="container">
                    <div style="padding:5rem">
                        <div class="text-center"><p style="font-size: 20px;">
                                Update CV</p>
                        </div>
                        <form class="user" action="" method="">      

                            <!-- Full Name -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="Profession" name="profession" required>
                            </div>

                            <!-- DOB -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="ServiceDescription" name="serviceDescription" required>
                            </div>

                            <!-- Email -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="Achivements" name="achivements" required>
                            </div>

                            <!--list -->
                            <div class="form-group row" style="padding-bottom: 20px;" >

                                <input type="checkbox" class="form-control form-control-user"
                                       name="skill" required style="height: 20px; width: 10%">Java
                            </div>

                            <!--introduction-->
                            <div class="form-group row flex-column" style="padding-bottom: 20px;">
                                <div>Introduction</div>
                                </br>
                                <textarea class=""  name="introduction" id="editor" cols="75" rows="10" placeholder="introduction" required>
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
    </body>
</html>

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
                <%@include file="../admin/sidebar.jsp" %>
            </div>

            <div class="col-sm-10">
                <div class="container">
                    <div style="padding:5rem">
                        <div class="text-center"><p style="font-size: 20px;">
                               Update Profile</p>
                        </div>
                        <form class="user" action="" method="">      
                            <!-- Full Name -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user"
                                           placeholder="FirstName" name="firstName" required>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user"
                                           placeholder="LastName" name="lastName" required>
                                </div>
                            </div>

                            <!-- DOB -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="date" class="form-control form-control-user"
                                       placeholder="Date Of Birth" name="dob" required>
                            </div>

                            <!-- Email -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="email" class="form-control form-control-user"
                                       placeholder="Email" name="email" required>
                            </div>

                            <!-- Gender -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <div class="col-sm-6">
                                    <input type="radio" class="form-control form-control-user"
                                           name="male" value="male" required style="height: 20px; width: 10%">Male
                                </div>
                                <div class="col-sm-6">
                                    <input type="radio" class="form-control form-control-user"
                                           name="female" value="female" required style="height: 20px;width: 10%">Female
                                </div>

                            </div>

                            <!--Adress-->
                            <div class="form-group row" style="padding-bottom: 20px;">
                                <!--Province--> 
                                <div class="input-group col-sm-4">
                                    <select id="province" name="province" class="form-control form-control-user" required="" style="height: 60px">
                                        <option value="" disabled="" selected="">Select province</option>

                                    </select>
                                </div>
                                <!--District--> 
                                <div class="input-group col-sm-4">
                                    <select id="district" name="district" class="form-control form-control-user"  required="" style="height: 60px">
                                        <option value="" disabled="" selected="">Select district</option>
                                    </select>
                                </div>

                                <!--Ward--> 
                                <div class="input-group col-sm-4">

                                    <select id="ward" name="ward" class="form-control form-control-user" required="" style="height: 60px">
                                        <option value="" disabled="" selected="">Select ward</option>
                                    </select>
                                </div>
                            </div>

                            <!--upload img-->
                            <div class="form-group row" style="padding-bottom: 20px;">

                                <input type="file" id="img" name="img" accept="image/*" multiple="" style="height: 60px">
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
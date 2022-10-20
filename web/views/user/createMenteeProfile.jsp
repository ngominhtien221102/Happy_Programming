<%-- 
    Document   : createMenteeProfile
    Created on : Oct 2, 2022, 8:37:54 AM
    Author     : ADMIN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="headCSS2.jsp" %>

    </head>
    <body>

        <%@include file="header.jsp" %>

        <!-- Main Content -->
                <div id="content" class="row" style="padding-top: 50px">
            <!-- Begin Page Content -->

            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <div class="container" style="padding: 1.5% ;">
                    <div style="padding:5rem">
                        <div style="margin-bottom: 5%" class="text-center" >
                            <h3>
                                Create Profile
                            </h3>
                        </div>

                        <form class="user" action="<%=request.getContextPath()%>/createProfile" method="POST" enctype="multipart/form-data">      
                            <!-- Full Name -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="LastName" name="lastName" value="${lastName}" required>
                            </div>

                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="FirstName" name="firstName" value="${firstName}"  required>
                            </div>

                            <!-- DOB -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="date" class="form-control form-control-user"
                                       placeholder="Date Of Birth" name="dob" value="${dob}"  required>
                            </div>

                            <p style="color:red">${Error}</p>
                            <!-- Email -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="email" class="form-control form-control-user"
                                       placeholder="Email" name="email" value="${email}" required>
                            </div>

                            <!-- Gender -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <h5>Gender:</h5>
                                <input type="radio" class="form-control form-control-user" id="male"
                                       name="gender" value='True' ${gender ? "checked":""} required style="height: 20px; width: 10%">
                                <label for="male">Male</label>

                                <input type="radio" class="form-control form-control-user" id="female"
                                       name="gender" value='False' ${gender ? "":"checked"} required style="height: 20px;width: 10%">
                                <label for="female">Female</label>
                            </div>

                            <p style="color:red">${Error1}</p>
                            <div class="form-group row" style="padding-bottom: 20px;">
                                <!--Province--> 
                                <div class="input-group col-sm-4">
                                    <select id="province" name="province" class="form-control form-control-user" required="" style="height: 60px">
                                        <option value="" disabled="" selected="">Select province</option>
                                        <c:forEach items="${sessionScope.listProvince}" var="pv">
                                            <option value="${pv}">${pv}</option>
                                        </c:forEach>
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
                                <h5 style="padding-right: 5%">Avatar:</h5>
                                <input type="file" id="img" name="img" accept="image/png, image/jpeg"  style="height: 60px">
                            </div>
                            <input type="submit" value="Create Profile" class="btn btn-primary btn-user btn-block" />
                        </form>
                    </div>
                    <!-- /.container-fluid -->
                </div>
            </div>

            <!-- End of Main Content -->
        </div>
    </body>

    <script>
        $(function () {
            $('input, select').on('focus', function () {
                $(this).parent().find('.input-group-text').css('border-color', '#80bdff');
            });
            $('input, select').on('blur', function () {
                $(this).parent().find('.input-group-text').css('border-color', '#ced4da');
            });
        });
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#province").change(function () {
                $.ajax({
                    url: "/Happy_Programming/addressControl",
                    type: 'GET',
                    data: {province: $('#province option:selected').val()},

                    success: function (data) {
                        var row = document.getElementById("district");
                        row.innerHTML = data;
                    }
                });
            });
        });

    </script>    

    <script>
        $(document).ready(function () {
            $("#district").change(function () {
                $.ajax({
                    url: "/Happy_Programming/addressControl",
                    type: 'GET',
                    data: {province: $('#province option:selected').val(),
                        district: $('#district option:selected').val()},
                    success: function (data) {
                        var row = document.getElementById("ward");
                        row.innerHTML = data;
                    }
                });
            });
        });
    </script>
</html>

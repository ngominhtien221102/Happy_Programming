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
        <%@include file="headCSS.jsp" %>

    </head>
    <body>
        
        <%@include file="header.jsp" %>

        <!-- Main Content -->
        <div id="content" class="row" style="padding-top: 50px">
            <!-- Begin Page Content -->

            <%@include file="../user/sidebar.jsp" %>
           
            <div class="col-10">
                <div class="container" style="padding: 5% ;">
                     
                    <div style="padding:5rem">
                        <div class="text-center" >
                             <p style="Color:green">${alert}</p>
                            <h3>
                                Update Profile
                            </h3>
                        </div>
                        <form class="user" action="<%=request.getContextPath()%>/updateProfile" method="POST" enctype="multipart/form-data">      
                            <!-- Full Name -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="LastName" name="lastName"  value="${u.getLastName()}" required>
                            </div>

                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="text" class="form-control form-control-user"
                                       placeholder="FirstName" name="firstName" value="${u.getFirstName()}" required >
                            </div>

                            <!-- DOB -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="date" class="form-control form-control-user"
                                       placeholder="Date Of Birth" name="dob" value="${u.getDob()}" required>
                            </div>

                            <!-- Email -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <input type="email" class="form-control form-control-user"
                                    readonly   placeholder="Email" name="email" value="${u.getEmail()}" required>
                            </div>

                            <!-- Gender -->
                            <div class="form-group row" style="padding-bottom: 20px;" >
                                <h5>Gender:</h5>
                                <input type="radio" class="form-control form-control-user" id="male"
                                       name="gender" value='True' ${u.isGender() ? "checked":""} required style="height: 20px; width: 10%">
                                <label for="male">Male</label>

                                <input type="radio" class="form-control form-control-user" id="female"
                                       name="gender" value='False' ${u.isGender() ? "":"checked"} required style="height: 20px;width: 10%">
                                <label for="female">Female</label>
                            </div>
                              <p style="Color:red">${Error1}</p>   
                            <!--Adress-->
                              <div class="form-group row" style="padding-bottom: 20px;">
                                <!--Province--> 
                                <div class="input-group col-sm-4">
                                    <select id="province" name="province" class="form-control form-control-user" required="" style="height: 60px">
                                        <option value="" disabled="" selected ="">Select province</option>
                                        <c:forEach items="${sessionScope.listProvince}" var="pv">
                                            <option value="${pv}" ${province ==pv ?"Selected":""}>${pv}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <!--District--> 
                                <div class="input-group col-sm-4">
                                    <select id="district" name="district" class="form-control form-control-user"  style="height: 60px">
                                        <option value="" disabled="" selected="">${district}</option>
                                    </select>
                                </div>

                                <!--Ward--> 
                                <div class="input-group col-sm-4">

                                    <select id="ward" name="ward" class="form-control form-control-user" style="height: 60px">
                                        <option value="" disabled="" Selected="">${ward}</option>
                                    </select>
                                </div>
                            </div>

                            <!--upload img-->
                            <div class="form-group row" style="padding-bottom: 20px;">
                                <h5 style="padding-right: 5%">Avatar:</h5>
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

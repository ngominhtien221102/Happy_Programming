
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS.jsp" %>

    <body>

        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <section class="hero-section overlay bg-cover" data-background="">
            <div class="container">
                <p style="Color:red">${Alert}</p>
                <div class="ChangePass">
                    <form action="<%=request.getContextPath()%>/changePassword" method="POST" class="row">
                        <div class="col-12">
                            <input type="text" class="form-control mb-3"  name="oldpass" placeholder="Old Password">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" name="newpass" placeholder="New Password">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control mb-3"  name="confirmpass" placeholder="Confirm Password">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Change</button>
                        </div>
                    </form>
                </div>
            </div>
            <section>
                <!-- footer -->
                <!-- /footer -->
                </body>
                </html>


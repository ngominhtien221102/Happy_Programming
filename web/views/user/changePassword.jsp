
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->

        <div id="content" class="row" style="padding-top: 50px">
            <%@include file="sidebar.jsp" %>

            <div class="col-10">
                <section class="section">
                    <div class="container">
                        <h2>Change Password</h2>    
                        <p style="color: green">${message}</p>
                        <p style="color: red">${error1}</p>
                        <p style="color: red">${error2}</p>
                        <p style="color: red">${error3}</p>
                        <form action="<%=request.getContextPath()%>/changePass" method="POST" class="row">

                            <div class="col-12">
                                <input type="password" class="form-control mb-3" name="oldPass" placeholder="Old Password" required="" value="${oldPass}">
                                <input type="password" class="form-control mb-3"  name="newPass" placeholder="New Password" required="" value="${newPass}">
                                <input type="password" class="form-control mb-3"  name="confirmPass" placeholder="Confirm Password" required="">

                                <button type="submit"  class="btn btn-primary float-right ml-3">Save</button>
                                <a class="btn btn-primary float-right" href="<%=request.getContextPath()%>/home">Cancel</a>
                            </div>
                        </form>

                    </div></section>
            </div>
        </div>

        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>                                                                 
</html>


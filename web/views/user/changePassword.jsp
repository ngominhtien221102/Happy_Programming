
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS.jsp" %>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href=#k">Change Password</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Change your password to make your account more secure</p>
                    </div>
                </div>
            </div>
        </section>
        <div  id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">

                    <div class="modal-body">
                        <p style="Color:red">${Alert}</p>
                        <form action="<%=request.getContextPath()%>/changePass" method="POST" class="row">
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" name="oldPass" placeholder="Old Password">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3"  name="newPass" placeholder="New Password">
                            </div>
                            <div class="col-12">
                                <input type="text" class="form-control mb-3"  name="confirmPass" placeholder="Confirm Password">
                            </div>
                            
                            <div class="col-12">
                                <button type="submit"  class="btn btn-primary">Save</button>
                                <a class="btn btn-primary" style="float: right" href="<%=request.getContextPath()%>/home">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>                                                                 
</html>


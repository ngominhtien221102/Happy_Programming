<%-- 
    Document   : forgotpass
    Created on : Sep 26, 2022, 11:06:04 PM
    Author     : ADMIN
--%>

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
            <div  id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content rounded-0 border-0 p-4">

                        <div class="modal-body">
                            <p style="color: red">${Error}</p>
                            <form action="<%=request.getContextPath()%>/forgotPass" method="POST" class="row">
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="loginName" name="accountName" placeholder="Account Name">
                                </div>
                                <div class="col-12">
                                    <input type="password" class="form-control mb-3" id="signupEmail" name="email" placeholder="Email">
                                </div>

                                <div class="col-12" style="margin-left: 40%;">
                                    <button type="submit"  class="btn btn-primary">SEND</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </body>
</html>

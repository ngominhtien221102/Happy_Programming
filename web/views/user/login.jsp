<%-- 
    Document   : login
    Created on : Sep 28, 2022, 12:06:20 AM
    Author     : Lenovo
--%>

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
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href=#k">Login</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Sign in to experience more features</p>
                    </div>
                </div>
            </div>
        </section>
        <div  id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    
                    <div class="modal-body">
                        <p style="Color:red">${Alert}</p>
                        <form action="<%=request.getContextPath()%>/LoginController" method="POST" class="row">
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="loginName" name="Username" placeholder="Account Name">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3" id="loginPassword" name="Password" placeholder="Password">
                            </div>
                            <div class="col-12">
                                <div class="w-50 text-left">
                                    <label class="Remeber_Button"><input type="checkbox" name="rem" ${(cookie.rem.value eq 'ON')?"checked":""} value="ON">
                                        <span class="checkmark"></span>Remember Me

                                    </label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit"  class="btn btn-primary">Sign In</button>
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

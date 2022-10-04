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
    <style>
        .forgot:hover{
            color: orange;
        }
        
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
       <div class="container" style="padding: 5% ;">
                    <div style="padding:5rem">
                        <div class="text-center" >
                            <h2>Login</h2>
                        </div>
        <div  id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">

                    <div class="modal-body">
                        <p style="Color:red">${Alert}</p>
                        <form action="<%=request.getContextPath()%>/login" method="POST" class="row">
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="loginName" name="Username" placeholder="Account Name">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3" id="loginPassword" name="Password" placeholder="Password">
                            </div>
                            <div class="col-12">

                                <label class="Remeber_Button"><input type="checkbox" name="rem" ${(cookie.rem.value eq 'ON')?"checked":""} value="ON">
                                    <span class="checkmark"></span>Remember Me
                                </label>

                                <a style="position: absolute;
                                   right: 0px" href="<%=request.getContextPath()%>/views/user/forgotPass.jsp">Forgot Pass?</a>

                            </div>
                            <div class="col-12" style="margin-left: 40%;">
                                <button type="submit"  class="btn btn-primary">Sign In</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                    </div>
                 </div>   
                                  
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>                                                                 
</html>

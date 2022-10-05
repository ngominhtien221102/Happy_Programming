<%-- 
    Document   : registerView
    Created on : Oct 4, 2022, 4:24:40 PM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS.jsp" %>
    <style>
        .signup_container{
            margin: 12% 10% 10% 10%;
            overflow: hidden;
        }
        .signup_thumbnail{
            float: left;
            width: 40%;
        }
        .signup_form{
            float: right;
            width: 50%;

        }
        .form-group{
            margin: 2%;
        }
        .form-control {
            background-color: transparent;
            border-top: 0;
            border-right: 0;
            border-left: 0;
            border-radius: 0;
            &:focus {
                border-color: #111;
            }
        }
        .m-t-lg{
            margin: 2%;
        }
        .btn--form {
            padding: .5rem 2.5rem;
            font-size: .95rem;
            font-weight: 600;
            text-transform: uppercase;
            color: #fff;
            background: #182b45;
            border-radius: 5%; 
        }
        .btn--form:focus,.btn--form:hover {
                color: #fd7e14;
            }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div class="signup_container">
            <div class="signup_thumbnail">
                <div class="thumbnail__content text-center">
                    <h2 class="heading--primary">Welcome to Happy Programming</h2>
                    <h4 class="heading--secondary">Are you ready to join the elite?</h4>
                </div>
                <div class="signup__overlay"></div>
            </div>
            <div class="signup_form">
                <form action="<%=request.getContextPath()%>/signup" method="POST">
                    <div class="form-group">
                        <label for="username">Account Name</label>
                        <input class="form-control" type="text" name="username" id="username" placeholder="" required />
                        <p style="color: red">${username_alert}</p>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input class="form-control" type="password" name="password" id="password" placeholder="********" required />
                        <p style="color: red">${Password_alert}</p>
                    </div>
                    <div class="form-group">
                        <label for="passwordRepeat">Repeat Password</label>
                        <input class="form-control" type="password" name="passwordRepeat" id="passwordRepeat" placeholder="********" required />
                    </div>
                    <div class="m-t-lg">
                        <ul class="list-inline">
                            <li>
                                <input class="btn btn--form" type="submit" value="Register" />
                            </li>
                            <li>
                                <a class="signup__link" href="#">I am already a member</a>
                            </li>
                        </ul>
                    </div>
                </form>  
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->
        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %> 
        <!-- /jQuery -->
    </body>
</html>

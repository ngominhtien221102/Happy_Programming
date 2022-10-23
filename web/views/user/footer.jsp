<%-- 
    Document   : footer
    Created on : Sep 22, 2022, 10:51:47 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .footer{
                margin-top: 100px;
                position: relative;
                width: 100%;
                top: 100%;
                z-index: 1;
            }
        </style>
    </head>
    <body>
        <footer class="">
            <!-- footer content -->
            <div class="footer bg-footer section border-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-8 mb-5 mb-lg-0">
                            <!-- logo -->
                            <a class="logo-footer" href="index.jsp"><img class="img-fluid mb-4" src="<%=request.getContextPath()%>/template1/images/logo.png" alt="logo"></a>
                            <ul class="list-unstyled">
                                <li class="mb-2 "> <i class="ti-home text-primary"></i> Thạch Thất, Hà Nội, Việt Nam</li>
                                <br/>
                                <li class="mb-2"><i class="ti-mobile text-primary"></i> +(84) 12345 6789</li>
                                <br/>
                                <li class="mb-2"><i class="ti-email text-primary"></i> HappyProgramming@gmail.com</li>
                            </ul>
                        </div>
                        <!-- company -->
                        <div class="col-lg-3 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
                            <h4 class="text-white mb-5">COMPANY</h4>
                            <ul class="list-unstyled">
                                <li class="mb-3"><a class="text-color" href="<%=request.getContextPath()%>/views/user/about.jsp">About Us</a></li>
                                <li class="mb-3"><a class="text-color" href="<%=request.getContextPath()%>/views/user/mentorSuggest.jsp">Our Mentor</a></li>
                                <li class="mb-3"><a class="text-color" href="contact.jsp">Contact</a></li>
                                <li class="mb-3"><a class="text-color" href="blog.jsp">Blog</a></li>
                            </ul>
                        </div>
                        <!-- links -->
                        <div class="col-lg-3 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
                            <h4 class="text-white mb-5">LINKS</h4>
                            <ul class="list-unstyled">
                                <li class="mb-3"><a class="text-color" href="<%=request.getContextPath()%>/views/user/index.jsp">Home</a></li>
                                <li class="mb-3"><a class="text-color" href="<%=request.getContextPath()%>/views/user/skills.jsp">Skills</a></li>
                                <li class="mb-3"><a class="text-color" href="<%=request.getContextPath()%>/views/user/mentorSuggest.jsp">Mentors</a></li>
                                <li class="mb-3"><a class="text-color" href="#">FAQs</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
                            <h4 class="text-white mb-5">CONTACT</h4>
                            <ul class="list-unstyled">
                                <li class="list-inline-item"><a class="" href="https://www.facebook.com/themefisher"><i class="ti-facebook text-primary"></i></a></li>
                                <li class="list-inline-item"><a class="" href="https://www.twitter.com/themefisher"><i class="ti-twitter-alt text-primary"></i></a></li>
                                <li class="list-inline-item"><a class="" href="#"><i class="ti-instagram text-primary"></i></a></li>
                                <li class="list-inline-item"><a class="" href="https://dribbble.com/themefisher"><i class="ti-dribbble text-primary"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
        </footer>
    </body>
</html>

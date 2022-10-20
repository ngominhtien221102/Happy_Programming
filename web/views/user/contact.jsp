<%-- 
    Document   : contact
    Created on : Sep 21, 2022, 3:05:36 PM
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
        <!-- Modal -->

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>
                            <li class="list-inline-item text-white h3 font-secondary"></li>
                        </ul>
                        <p class="text-lighten">Do you have other questions? Don't worry, there aren't any dumb questions. Just fill out the form below and we'll get back to you as soon as possible.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- contact -->
        <section class="section bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="section-title">Contact Us</h2>
                        <p style="color: green">${alert}</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7 mb-4 mb-lg-0">
                        <form action="<%=request.getContextPath()%>/contact">
                            <input type="text" class="form-control mb-3" id="name" name="name" placeholder="Your Name" required>
                            <input type="email" class="form-control mb-3" id="mail" name="mail" placeholder="Your Email" required>
                            <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject" required>
                            <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message" required></textarea>
                            <button type="submit" value="send" class="btn btn-primary">SEND MESSAGE</button>
                        </form>
                    </div>
                    <div class="col-lg-5">
                        <a href="tel:+880 2057843248" class="text-color h5 d-block">+840 1234567892</a>
                        <a href="mailto:yourmail@email.com" class="mb-5 text-color h5 d-block">happyprogramming@gmail.com</a>
                        <p>Thach That, Hanoi, Vietnam<br>FPT University</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /contact -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>


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
    <style>
        .ck-editor__editable_inline {
            min-height: 172px;
        }
    </style>
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
                    <div class="col-lg-6 mb-4 mb-lg-0">
                        <form action="<%=request.getContextPath()%>/contact">
                            <input type="text" class="form-control mb-3" id="name" name="name" placeholder="Your Name" required>
                            <input type="email" class="form-control mb-3" id="mail" name="mail" placeholder="Your Email" required>
                            <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject" required>
                            <p style="color: red">${subjectAlert}</p>
                            <textarea name="message" class="form-control mb-3 ck-editor__editable ck-editor__editable_inline" placeholder="Your Message" id="editor" rows="4" required></textarea>
                            <button type="submit" value="send" class="btn btn-primary" style="margin-top: 1%; width: 100%;">SEND MESSAGE</button>
                        </form>
                    </div>
                    <div class="col-lg-6">
                        <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/success-story.jpg">
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
        <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
        <script>
            var value;
            ClassicEditor
                    .create(document.querySelector('#editor'))
                    .then(editor => {
                        value = editor;
                    })
                    .catch(error => {
                        console.error(error);
                    });



        </script>
    </body>
</html>


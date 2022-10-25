<%-- 
    Document   : contact
    Created on : Sep 21, 2022, 3:05:36 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <%@include file="headCSS2.jsp" %>
        <style>
            .ck-editor__editable_inline {
                min-height: 500px;
            }
        </style>

        <script src="<%=request.getContextPath()%>/template1/plugins/jQuery/jquery.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="<%=request.getContextPath()%>/template1/plugins/bootstrap/bootstrap.min.js"></script>
        <!-- slick slider -->
        <script src="<%=request.getContextPath()%>/template1/plugins/slick/slick.min.js"></script>
        <!-- aos -->
        <script src="<%=request.getContextPath()%>/template1/plugins/aos/aos.js"></script>
        <!-- venobox popup -->
        <script src="<%=request.getContextPath()%>/template1/plugins/venobox/venobox.min.js"></script>
        <!-- mixitup filter -->
        <script src="<%=request.getContextPath()%>/template1/plugins/mixitup/mixitup.min.js"></script>
        <!-- google map -->
        <script src="<%=request.getContextPath()%>/template1/https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
        <script src="<%=request.getContextPath()%>/template1/plugins/google-map/gmap.js"></script>

        <!-- Main Script -->
        <script src="<%=request.getContextPath()%>/template1/js/script.js"></script>

    </head>

    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->

        <!-- page title -->

        <!-- /page title -->

        <!-- contact -->
        <section style="margin-top: 3%"  class="section bg-gray">
            <div class="container">
                <div class="row">
                    <div style="text-align: center" class="col-lg-12">
                        <h2 class="section-title">Create Post</h2>
                        <p style="color: green">${message}</p>
                        <p style="color: red">${Error}</p>

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-lg-0">
                        <form action="<%=request.getContextPath()%>/createPost" method="Post"> 
                            <input value="${Title}" type="text" class="form-control mb-3" id="subject" name="Title" placeholder="Title" required>
                            <textarea    name="Content" id="editor" placeholder="Type your content" required>
                            </textarea>
                            <button type="submit" value="send" class="btn btn-primary" style="margin-top: 1%; width: 100%;">Create</button>
                        </form>
                    </div>         
                </div>
            </div>
        </section>
        <!-- /contact -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
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

            const handleSubmit = () => {
                document.getElementById('a').innerHTML = value.getData()
            }
        </script>
    </body>
</html>


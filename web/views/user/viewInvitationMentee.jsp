<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS.jsp" %>
    <%@include file="headCSS2.jsp" %>

    <style>


        .cv:hover{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        input,select,textarea,.cv{
            margin: 16px 0px;
            border-radius: 5px;
        }
        .cv{
            color: black;
            border-color: #ced4da;
            background-color: #fff;
            padding: 10px;
        }
        table{
            margin-top: 30px;
        }
        .col-9{
            margin: 0 auto;
        }

    </style>
    <body>
        <%@include file= "header.jsp" %>
        <%@include file="sidebar.jsp" %>

        <div class="col-9">
            <section class="section" style="margin-top: 50px">
                <h2 style="margin-left:15px">All invitations</h2>
                <div class="container">

                    <br><h3>Invitations</h3>
                    <div class="row">  
                        <div class="col-md-12 table">

                            <table border="2" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Mentor</th>
                                        <th>Skill</th>
                                        <th>Title</th> 
                                        <th>Content</th>         
                                        <th>Deadline date</th>
                                        <th>Status</th>
                                        <th colspan="2" style="text-align: center">Option</th>
                                    </tr>
                                </thead>
                                <c:forEach items="" var="lst"> 
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td><a class="text-color" href="">update</a></td>
                                            <td><a class="text-color" href="">delete</a></td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                    <!--form-->



                </div>
            </section>
        </div>
    </div>
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

        const handleSubmit = () => {
            document.getElementById('a').innerHTML = value.getData()
        }
    </script>
</body>

</html>

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
                <h2 style="margin-bottom:30px">Edit invitation</h2>
                        <form action="" method="" class="">
                            Mentor's name:
                            <input type="text" class="form-control" id="" name="" readonly="">
                            <button class="cv" style=""><a>View mentor's CV</a></button>
                            <br><label for="">Choose a skill:</label>
                            <select style="margin-left:10px; margin-right: 30px" name="" id="">
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                            </select>
                            Deadline date:<input style="margin-left:10px" type="date" name="name"><br>
                            Title:<input type="text" class="form-control" id="" name="" placeholder="">
                            <label style="margin-bottom: 16px" for="">Content:</label><textarea id="editor" class="form-control" name="editor" rows="4" cols="50"></textarea>
                            <button type="submit" style="float:right; margin-top: 16px;" class="btn btn-primary">UPDATE</button>
                        </form>
                    
                    
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

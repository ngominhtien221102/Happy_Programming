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

        .search input[type="text"]{
            border: 1px solid #08080B;
            border-right: none;
            border-left: none;
            border-top: none;
            font-family: 'Open Sans', sans-serif;
            outline: none;
            padding: 0.8em 0;
            color: #A5A5A5;
            width: 20%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
            flex-wrap: unset;

        }
        .search input[type="text"]:focus {
            width: 25%;
            -moz-transition: width 0.5s ease-out;
            -webkit-transition: width 0.5s ease-out;
            transition: width 0.5s ease-out;
        }
        .search button{
            margin-top:25px;
            margin-left:15px;
            border: 0px;
            background-color: #fff;
            width: 35px;
            height: 35px;
            border-radius: 5px;
        }
        .search button:hover{
            background-color: #ffbc3b;
            color: #fff;

        }
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
                <h2 style="margin-left:15px">Send invitation</h2>
                <div class="container">
                    <div class="search" style="margin-left:15px" > 
                        <form action="action" class="row">
                            <input  type="text" name="name" placeholder="Search Your Mentor">
                            <button type="submit"><i class="ti ti-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                    <br><h3>Mentors</h3>
                    <div class="row">  
                        <div class="col-md-12 table">

                            <table border="2" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th> 
                                        <th>Name</th>
                                        <th>Skills</th>
                                        <th>Option</th>         
                                    </tr>
                                </thead>
                                <c:forEach items="" var="lst"> 
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td><a class="text-color" href="">invite</a></td>
                                            
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                    <!--form-->
                    
                        <form action="" method="" class="">
                            Mentor's name:
                            <input type="text" class="form-control" id="" name="" readonly="">
                            <button class="cv" style=""><a>View mentor's CV</a></button>
                            <br><label for="">Choose a skill:</label>
                            <select style="margin-left:10px;margin-right: 30px" name="" id="">
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                            </select>
                            Deadline date:<input style="margin-left:10px;" type="date" name="name"><br>
                            Title:<input type="text" class="form-control" id="" name="" placeholder="">
                            <label style="margin-bottom: 16px" for="">Content:</label><textarea id="editor" class="form-control" name="editor" rows="4" cols="50"></textarea>
                            <button type="submit" style="float:right; margin-top: 16px;" class="btn btn-primary">SEND</button>
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

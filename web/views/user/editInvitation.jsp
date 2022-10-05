<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
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
    </style>
    <body>
        <%@include file= "header.jsp" %>

        <div id="content" class="row" style="padding-top: 50px">
            <%@include file="sidebar.jsp" %>

            <div class="col-10">
                <section class="section" >
                    <div class="container">
                        <div style="margin-bottom: 20px;margin-top: -10px"><button style="margin-right: 10px" class="cv"><a href="<%=request.getContextPath()%>/views/user/viewInvitationMentee.jsp"><i class="ti-arrow-left"></i></a></button> <a class="text-color" href="<%=request.getContextPath()%>/views/user/viewInvitationMentee.jsp">Back to VIEW INVITATIONS</a></div>
                        <h2 style="margin-bottom:30px">Edit invitation</h2>
                        <c:if test="${requestScope.success!=null}">
                            <br><h3 style="color: green">${success}</h3>
                        </c:if>
                        <c:if test="${requestScope.failed!=null}">
                            <br><h3 style="color: red">${failed}</h3>
                        </c:if>
                        <form action="<%=request.getContextPath()%>/editInvitation" method="POST">
                            Mentor's name:
                            <input type="text" class="form-control" id="" name="mentorName" readonly="" value="${mentorName}">
                            <button class="cv" style=""><a href="<%=request.getContextPath()%>/viewCV?mentorID=${invitation.mentorID}">View mentor's CV</a></button>
                            <br><label style="margin-right: 10px" for="">Skill:</label>
                            <c:forEach items="${mentorSkill}" var="m">
                                <c:if test="${m.ID==invitation.skillID}"><label style="margin-right: 30px;font-size: 20px;font-weight: 900;">${m.name}</label></c:if>
                            </c:forEach>
                            Deadline date:<input required="" style="margin-left:10px" type="date" name="deadline" value="${invitation.deadlineDate}"><br>
                            Title:<input type="text" required="" class="form-control" id="" name="title" placeholder="" value="${invitation.title}">
                            <label style="margin-bottom: 16px" for="">Content:</label><textarea id="editor" class="form-control" required="" name="content" rows="4" cols="50">
                                ${invitation.content}
                            </textarea>
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

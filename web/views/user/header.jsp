<%-- 
    Document   : header
    Created on : Sep 22, 2022, 10:51:40 PM
    Author     : Admin
--%>


<header class="header">
    <style>
        #someNotify{
            position: absolute;
            box-shadow: 0px 3px 9px 0px rgba(0, 0, 0, 0.12);
            border-bottom: 5px solid #ffbc3b;
            padding: 10px;
            top: 98px;
            display: none;
            left: -166px;
            border-radius: 0;
            width: 370px;
            transition: .3s ease;
            background: #fff;
            text-align: start;
            max-height: 360px;
            overflow-y:auto;
            border-radius: 8px;

        }
        /* width */
        ::-webkit-scrollbar {
            border-radius: 15px;
            width: 10px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 10px;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background: #888;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
        .notiItem {
            display: flex;
            padding: 8px 8px;
            border-radius: 10px;
            margin: 4px 0;
        }

        .notiItem:hover{
            background-color: #E4E6EB;
            cursor: pointer;
        }

        #someNotify a{
            color: #1e1e4b;
        }

        .unread{
            color: hsl(214, 89%, 52%);
            background: #E7F3FF;
            font-weight: 600;
        }

        .senderAvar{
            width: 56px;
            height: 56px;
            object-fit: cover;
        }
        .notiIcon{
            border-radius: 15px;
        }
        #notification{
            color: #fff;
        }
       
    </style>
    <div class="fixed-top navigation w-100" style="margin-top: 0px;
         background: #ffbc3b">

        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/views/user/index.jsp"><img src="<%=request.getContextPath()%>/template1/images/logo.png" alt="logo"></a>
                <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
                        aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navigation">
                    <ul class="navbar-nav ml-auto text-center">
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/index.jsp">Home</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/skills.jsp">SKILLS</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/mentorSuggest.jsp">SUGGEST</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/blog.jsp">BLOG</a>
                        </li>
                        <li class="nav-item dropdown view">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Pages
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-50px">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/teacher.jsp">Teacher</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/teacher-single.jsp">Teacher Single</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/notice.jsp">Notice</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/notice-single.jsp">Notice Details</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/research.jsp">Research</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/scholarship.jsp">Scholarship</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/course-single.jsp">Course Details</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/event-single.jsp">Event Details</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/blog-single.jsp">Blog Details</a>
                            </div>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/contact.jsp">CONTACT</a>
                        </li>                 
                        <li class="notiIcon dropdown view">
                            <a onclick="Show()" class="nav-link " href="#" id="notification">
                                <i class="ti ti-bell"></i><span id="amountNew" class="badge bg-danger" style="color: #fff">${sessionScope.NewNotification}</span>
                            </a>
                            <div id="someNotify" style="">
                                
                            </div>
                            
                        </li>




                        <li class="nav-item dropdown view ">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="ti ti-user" aria-hidden="true"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-50px">

                                <c:if test="${sessionScope.Account != null}">
                                    <c:if test="${sessionScope.Account.getRoleID() == 2}">
                                        <a class="dropdown-item" href="<%=request.getContextPath()%>/viewMenteeProfile">Profile</a>
                                    </c:if>   
                                    <c:if test="${sessionScope.Account.getRoleID() == 3}">
                                        <a class="dropdown-item" href="<%=request.getContextPath()%>/viewCV?mentorID=${Account.ID}">Profile</a>
                                    </c:if>   
                                </c:if>  


                                <c:if test="${sessionScope.Account != null}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/changePassword.jsp">Change password</a>
                                </c:if>  
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/signup.jsp">Register</a>

                                <c:if test="${sessionScope.Account == null}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/login.jsp">Login</a>
                                </c:if>
                                <c:if test="${sessionScope.Account != null}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/logout">Logout</a>
                                </c:if>


                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

                                $(document).ready(function () {
                                    $('#notification').click(function (e) {
                                        e.preventDefault();
                                        $.ajax({
                                            url: '/Happy_Programming/subNotification',
                                            type: 'GET',

                                            data: {

                                            }
                                        }).done(function (data) {

                                            var row = document.getElementById("someNotify");
                                            row.innerHTML = data;

                                            var row1 = document.getElementById("amountNew");
                                            row1.innerHTML = 0;


                                        });

                                    });
                                });

                                function Show() {

                                    if (document.getElementById('someNotify').style.display === "block")
                                        document.getElementById('someNotify').style.display = "none";
                                    else
                                        document.getElementById('someNotify').style.display = "block";
                                }



    </script>

</header>
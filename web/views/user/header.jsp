<%-- 
    Document   : header
    Created on : Sep 22, 2022, 10:51:40 PM
    Author     : Admin
--%>


<header class="fixed-top header">

    <div class="navigation w-100" style="margin-top: 0px;">
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
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/events.jsp">EVENTS</a>
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
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/contact.jsp">CONTACT</a>
                        </li>                 
                        <li class="nav-item dropdown view " style="position: relative">
                            <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="ti ti-bell" aria-hidden="true"></i><span class="badge bg-danger" style="top: 0px; position: absolute; margin-top: 35px; border-radius: 0.5rem; font-weight: 400; font-size: 60% ">3</span>
                            </a>
                            <div class=" dropdown-menu " aria-labelledby="navbarDropdown" style="left:-50px">
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
                        <li class="nav-item dropdown view ">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="ti ti-user" aria-hidden="true"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-50px">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/profile.jsp">Profile</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/teacher-single.jsp">Change password</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/notice.jsp">Register</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/notice.jsp">Login</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/notice-single.jsp">Logout</a>

                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>
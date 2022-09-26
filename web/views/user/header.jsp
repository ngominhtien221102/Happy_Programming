<%-- 
    Document   : header
    Created on : Sep 22, 2022, 10:51:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="fixed-top header">
  <!-- top header -->
  <div class="top-header py-2 bg-white">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-lg-4 text-center text-lg-left">
          <a class="text-color mr-3" href="callto:+443003030266"><strong>CALL</strong> +44 300 303 0266</a>
          <ul class="list-inline d-inline">
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-facebook"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-linkedin"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-instagram"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-8 text-center text-lg-right">
          <ul class="list-inline">
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="<%=request.getContextPath()%>/views/user/notice.jsp">notice</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="<%=request.getContextPath()%>/views/user/research.jsp">research</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="<%=request.getContextPath()%>/views/user/scholarship.jsp">SCHOLARSHIP</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#loginModal">login</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#signupModal">register</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- navbar -->
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/views/user/index.jsp"><img src="<%=request.getContextPath()%>/images/logo.png" alt="logo"></a>
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
              <a class="nav-link" href="<%=request.getContextPath()%>/views/user/about.jsp">About</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="<%=request.getContextPath()%>/views/user/skills.jsp">COURSES</a>
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
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
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
          </ul>
        </div>
      </nav>
    </div>
  </div>
</header>
    </body>
</html>

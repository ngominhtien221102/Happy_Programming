<%-- 
    Document   : header
    Created on : Sep 22, 2022, 10:51:40 PM
    Author     : Admin
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class=" header">

    <div class="fixed-top navigation w-100" style="margin-top: 0px; background: #ffbc3b">

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
                        <c:if test="${sessionScope.Account.getRoleID() != 3}">
                            <li class="nav-item ">
                                <a class="nav-link" href="<%=request.getContextPath()%>/views/user/skills.jsp">SKILLS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="<%=request.getContextPath()%>/views/user/mentorSuggest.jsp">SUGGEST MENTOR</a>
                            </li>
                        </c:if>
                        <li class="nav-item dropdown view">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Options
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-50px">
                                <c:if test="${sessionScope.Account.getRoleID() == 2}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/updateMenteeProfile.jsp">Update Profile</a>
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/sendRequest">Create Request</a> 
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/viewAllRequest">Sent Request</a>
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/sendInvitation">Create Invitation</a>      
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/viewAllInvite">Sent invitation</a> 
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/views/viewUser.jsp">Rate mentor</a> 
                                </c:if>
                                <c:if test="${sessionScope.Account.getRoleID() == 3}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/viewAllRequest">Requests</a>
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/viewAllInvite">Invitations</a> 
                                </c:if>
                            </div>                           
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="<%=request.getContextPath()%>/views/user/contact.jsp">CONTACT</a>
                        </li>  
                        <c:if test="${sessionScope.Account != null}">
                            <li class="nav-item dropdown view " style="position: relative">
                                <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <i class="ti ti-bell" aria-hidden="true"></i><span class="badge bg-danger" style="top: 0px; position: absolute; margin-top: 35px; border-radius: 0.5rem; font-weight: 400; font-size: 60% ">3</span>
                                </a>
                                <div class=" dropdown-menu " aria-labelledby="navbarDropdown" style="left:-50px">

                                </div>
                            </li>
                        </c:if>
                        <li class="nav-item dropdown view ">
                        <c:if test="${sessionScope.Account != null && sessionScope.Account.roleID != 4}">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" style="padding: 28px 0 ;" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <img src="<%=request.getContextPath()%>/img/avatar/p${Account.ID}.png" style="height:40px;
                                     width:40px;
                                     border-radius:50%;
                                     vertical-align: middle;
                                     object-fit: cover;"  
                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png';"/>
                            </a>
                        </c:if>
                        <c:if test="${sessionScope.Account == null || sessionScope.Account.roleID == 4}">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="ti ti-user" aria-hidden="true"></i>
                            </a>
                        </c:if>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-50px">
                            <c:if test="${sessionScope.Account != null}">
                                <c:if test="${sessionScope.Account.getRoleID() == 2}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/viewMenteeProfile">Profile</a>
                                </c:if>   
                                <c:if test="${sessionScope.Account.getRoleID() == 3}">
                                    <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/profile.jsp">Profile</a>
                                </c:if>   
                            </c:if>  
                            <c:if test="${sessionScope.Account != null}">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/changePassword.jsp">Change password</a>
                            </c:if>  
                            <c:if test="${sessionScope.Account == null}">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/login.jsp">Login</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/signup.jsp">Register</a>
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
</header>
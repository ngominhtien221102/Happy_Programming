<%-- 
    Document   : sidebar
    Created on : Sep 29, 2022, 6:02:01 PM
    Author     : Admin
--%>


<div class="col-2" style="padding-top: 5%; background-color: #1a1a37">
    <!-- Sidebar -->
    <ul class="navbar-nav"  style="background-color: #1a1a37; margin-top: 10px; padding: 20px 10px 0px 30px">
        <!-- Nav Item - Dashboard -->
        <!-- Divider -->

        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Account
        </div>

        <!-- Nav Item - Add product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/common/viewMentorCV.jsp" >
                <span>Mentor</span>
            </a>
        </li>

        <!-- Nav Item - Update product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/user/changePassword.jsp" >
                <span>Mentee</span>
            </a>
        </li>

        <!-- Nav Item - Add product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/common/viewMentorCV.jsp" >
                <span>Static</span>
            </a>
        </li>
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Skill
        </div>

        <!-- Nav Item - Add product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/addproduct" >
                <span>Create Skill</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/addproduct" >
                <span>View Skill</span>
            </a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Request
        </div>

        <!-- Nav Item - All transaction -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/order" >
                <span>View Request</span>
            </a>
        </li>    

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Invitation
        </div>

        <!-- Nav Item - All Admin -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/user/viewInvitationMentor.jsp" >
                <span>View Invitation</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/logout" >
                <span>Log Out</span>
            </a>
        </li>


    </ul>
<!--    <button class="left" onclick="display1()"><i class="fa fa-solid fa-angle-left"></i></button>-->
    <!--<button class="right" onclick="display2()" id="right" style="display: none"><i class="fa fa-solid fa-angle-right"></i></button>-->
</div>
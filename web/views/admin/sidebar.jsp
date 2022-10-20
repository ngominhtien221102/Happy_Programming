<%-- 
    Document   : sidebar
    Created on : Sep 29, 2022, 6:02:01 PM
    Author     : Admin
--%>


<div class="col-2" style="padding-top: 5%; background-color: #1a1a37;">
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
                <span>Profile</span>
            </a>
        </li>

        <!-- Nav Item - Update product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/user/changePassword.jsp" >
                <span>Change password</span>
            </a>
        </li>

      
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Management
        </div>

        <!-- Nav Item - All transaction -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="" >
                <span>Mentee</span>
            </a>
        </li>    
        <li class="nav-item">
            <a class="nav-link collapsed" href="" >
                <span>Mentor</span>
            </a>
        </li>  
        <li class="nav-item">
            <a class="nav-link collapsed" href="<" >
                <span>Invitation</span>
            </a>
        </li>  

        <!-- Divider -->
        <hr class="sidebar-divider">

       

        <!-- Divider -->
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/logout" >
                <span>Log Out</span>
            </a>
        </li>


    </ul>

</div>
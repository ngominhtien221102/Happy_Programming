<%-- 
    Document   : sidebar
    Created on : Sep 29, 2022, 6:02:01 PM
    Author     : Admin
--%>
<style>
    .sidebar-fixed{
        position: fixed;
        top: 98px;
        bottom: 349px;
        height:  100%;
    }
</style>

<div class="col-2" style="padding-top: 5%; background-color: #1a1a37;">
    <div></div>
    <!-- Sidebar -->
    <div class="col-2 navbar-nav sidebar-fixed"  style="background-color: #1a1a37; padding: 20px 10px 0px 30px">
        <!-- Nav Item - Dashboard -->
        <!-- Divider -->

        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Account
        </div>

        <!-- Nav Item - Add product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/mentorViewCV" >
                <span>Profile</span>
            </a>
        </li>

        <!-- Nav Item - Update product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/views/user/changePassword.jsp" >
                <span>Change password</span>
            </a>
        </li>

        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Notification
        </div>

        <!-- Nav Item - Add product -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/notification" >
                <span>All Notification</span>
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
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/viewAllRequest" >
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
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/invitationMentor" >
                <span>View Invitation</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/statisticInv" >
                <span>Statistic Invitation</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="<%=request.getContextPath()%>/logout" >
                <span>Log Out</span>
            </a>
        </li>



    </div></div>
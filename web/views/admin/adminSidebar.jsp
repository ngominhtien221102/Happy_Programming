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


<div class="col-2" style="padding-top: 5%; background-color: #1a1a37">
    <div></div>
    <!-- Sidebar -->
    <div class="col-2 navbar-nav sidebar-fixed"  style="background-color: #1a1a37; padding: 20px 10px 0px 30px">
        <!-- Nav Item - Dashboard -->
        <!-- Divider -->
        <div class="navbar-items">
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Account
            </div>

            <!-- Nav Item - Add product -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="<%=request.getContextPath()%>/allMentor" >
                    <span>Mentor</span>
                </a>
            </li>

            <!-- Nav Item - Update product -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="<%=request.getContextPath()%>/allMentee" >
                    <span>Mentee</span>
                </a>
            </li>

            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Skill
            </div>

            <!-- Nav Item - Add product -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="<%=request.getContextPath()%>/editSkill" >
                    <span>Edit Skill</span>
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
                <a class="nav-link collapsed" href="<%=request.getContextPath()%>/allInvitation" >
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
        </div>



    </div>
    <!--    <button class="left" onclick="display1()"><i class="fa fa-solid fa-angle-left"></i></button>-->
    <!--<button class="right" onclick="display2()" id="right" style="display: none"><i class="fa fa-solid fa-angle-right"></i></button>-->
</div>
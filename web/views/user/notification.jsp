<%-- 
    Document   : sendInvitation
    Created on : Oct 2, 2022, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS2.jsp" %>

    <style>
        .noti-detail{
            display: flex;
            color: #5c5c77;
            justify-content:space-between;
            padding: 4px;
        }
        .unread-note{
            background: hsl(214, 89%, 52%);
            width: 12px;
            height: 12px
        }
        .readed-note{
            width: 12px;
            height: 12px
        }
        .createAt{
            justify-content: flex-end;
            display: flex;
            align-items: center
        }
        .unread-table{
            color: hsl(214, 89%, 52%);
            font-weight: 600;
        }
        .avatar{
            width: 40px;
            height: 40px;
        }
    </style>
    <body>
        <%@include file= "header.jsp" %>

        <div id="content" class="row" style="padding-top: 50px">
            <c:if test="${Account.roleID == 3}">
                <%@include file="../mentors/mentorSidebar.jsp" %>
            </c:if>
            <c:if test="${Account.roleID == 2}">
                <%@include file="../user/sidebar.jsp" %>
            </c:if>

            <div class="col-10">
                <section class="section" >
                    <div class="container">
                        <h2>Notification</h2>
                        <table class="table">

                            <tbody>
                                <c:if test="${num>0}">
                                <th>New</th>
                                    <c:forEach items="${listNotify}" begin="${0}" end="${num-1}"  var="n">
                                    <tr>
                                        <c:forEach items = "${sessionScope.listUserProfile}" var="u">
                                            <c:if test="${u.ID==n.senderID}">
                                                <td>
                                                    <a  href="<c:if test="${n.type.equals('request')||n.type.equals('response')}"><%=request.getContextPath()%>/singleRequest?requestId=${n.ID}</c:if><c:if test="${n.type.equals('invite')}"><%=request.getContextPath()%>/</c:if>">
                                                            <div class="noti-detail ">
                                                                <div>
                                                                        <img src="<%=request.getContextPath()%>/img/avatar/${u.avatar}" 
                                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" 
                                                                     class="rounded-circle mr-2 avatar"/>
                                                                ${u.firstName} ${u.lastName} sent ${n.type} to you
                                                            </div>
                                                            <div class="createAt unread-table">
                                                                ${n.createAt}
                                                                <div class="rounded-circle ml-2 unread-note"></div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                            </c:if>
                                        </c:forEach>
                                    </tr>
                                </c:forEach>
                                <th>Before</th>
                                    <c:forEach items="${listNotify}" begin="${num}" end="${listNotify.size()-1}"  var="n">
                                    <tr>
                                        <c:forEach items = "${sessionScope.listUserProfile}" var="u">
                                            <c:if test="${u.ID==n.senderID}">
                                                <td>
                                                    <a  href="<c:if test="${n.type.equals('request')||n.type.equals('response')}"><%=request.getContextPath()%>/singleRequest?requestId=${n.ID}</c:if><c:if test="${n.type.equals('invite')}"><%=request.getContextPath()%>/</c:if>">
                                                            <div class="noti-detail">
                                                                <div>
                                                                        <img src="<%=request.getContextPath()%>/img/avatar/${u.avatar}" 
                                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" 
                                                                     class="rounded-circle mr-2 avatar"/>
                                                                ${u.firstName} ${u.lastName} sent ${n.type} to you
                                                            </div>

                                                            <div class="createAt">
                                                                ${n.createAt}
                                                                <div class="rounded-circle ml-2 readed-note"></div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                            </c:if>
                                        </c:forEach>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${num==0}">
                                <th>All</th>
                                    <c:forEach items="${listNotify}" var="n" varStatus="loop">
                                    <tr>
                                        <c:forEach items = "${sessionScope.listUserProfile}" var="u">
                                            <c:if test="${u.ID==n.senderID}">
                                                <td>
                                                    <a  href="<c:if test="${n.type.equals('request')||n.type.equals('response')}"><%=request.getContextPath()%>/singleRequest?requestId=${n.ID}</c:if><c:if test="${n.type.equals('invite')}"><%=request.getContextPath()%>/</c:if>">
                                                            <div class="noti-detail">
                                                                <div>
                                                                        <img src="<%=request.getContextPath()%>/img/avatar/${u.avatar}" 
                                                                     onerror="this.src='<%=request.getContextPath()%>/img/avatar/default.png'" 
                                                                     class="rounded-circle mr-2 avatar"/>
                                                                ${u.firstName} ${u.lastName} sent ${n.type} to you
                                                            </div>
                                                            <div class="createAt">
                                                                ${n.createAt}
                                                                <div class="rounded-circle ml-2 readed-note"></div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                            </c:if>

                                        </c:forEach>
                                    </tr>

                                </c:forEach>
                            </c:if>
                                    <c:if test="${listNotify.size()==0}"><tr><td class="">You don't have any notifications</td></tr></c:if>
                                    </tbody>
                            </table>
                        </div>
                    </section>
                </div>
            </div>


            <!-- /footer -->

            <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>
        <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
        <script>



        </script>


    </body>

</html>

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Notification;
import model.User;
import model.UserProfile;
import service.IUserProfileService;
import service.classimpl.UserProfileService;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "SubNotificationController", urlPatterns = {"/subNotification"})
public class SubNotificationController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubNotificationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubNotificationController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession();
        String href;
        User u = (User) ses.getAttribute("Account");
        int num = 0;

        // set lai so luong =0
        Cookie arr[] = request.getCookies();
        String cookieNewNotifyName = "newNotification" + u.getID();
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals(cookieNewNotifyName)) {
                    num = Integer.parseInt(o.getValue());
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        Cookie c = new Cookie(cookieNewNotifyName, "0");
        c.setMaxAge(60 * 60 * 24 * 2);
        response.addCookie(c);
        ses.setAttribute("NewNotification", 0);

        List<UserProfile> listUp = (List<UserProfile>) ses.getAttribute("listUserProfile");
        IUserProfileService ps = new UserProfileService();
        Notification n = (Notification) ses.getAttribute("Notification");
        out.println("<div class='notiItem justify-content-center to-all'>"
                + "<a style='color: #216FDB;' href='" + request.getContextPath() + "/notification" + "'>"
                + "View all notification" + "</a>"
                + "</div>");
        int count = 0;
        for (int i = n.getItems().size() - 1; i >= 0; i--) {
            UserProfile profile = ps.getUserProfileById(n.getItems().get(i).getSenderID(), listUp);
            switch (n.getItems().get(i).getType()) {
                case "request":
                    href = "/singleRequest?requestId=";
                    break;
                case "response":
                    href = "/singleRequest?requestId=";
                    break;
                case "invite":
                    href = "";
                    break;    
                default:
                    href = "";
                    break;
            }
            String classStr = count < num ? "unread" : "";

            out.println("<a href='" + request.getContextPath() + href + n.getItems().get(i).getID() + "'>"
                    + "<div class='notiItem " + classStr + "'>"
                    + "<div><img class='senderAvar rounded-circle mr-2' "
                    + "src='" + request.getContextPath()
                    + "/img/avatar/" + profile.getAvatar() + "'"
                    + "onerror=\"this.src='"+request.getContextPath()+"/img/avatar/default.png'\"/></div><div>"
                    + profile.getFirstName() + " " + profile.getLastName()
                    + " sent " + n.getItems().get(i).getType() + " to you <br><br>"
                    + n.getItems().get(i).getCreateAt() + "</div></div></a>");
            count++;
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;

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
import model.MentorCV;
import model.Notification;
import model.User;
import service.IMentorService;
import service.IUserService;
import service.classimpl.MentorService;
import service.classimpl.UserService;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
            HttpSession ses = request.getSession();

            List<User> userList;
            userList = (List<User>) ses.getAttribute("listUser");

            String User = request.getParameter("Username");
            String Password = request.getParameter("Password");
            String remember = request.getParameter("rem");
            IUserService uS = new UserService();
            User user = uS.getUserByAccount(User, Password, userList);
            if (user == null) {
                request.setAttribute("Alert", "Account is not exist please retype!");
                request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
            } else {
                if (user.getRoleID()==3){
                    List<MentorCV> listCV = (List<MentorCV>) ses.getAttribute("listMentorCV");
                    IMentorService mentorSer = new MentorService();
                    MentorCV mCV = mentorSer.getCVById(user.getID(), listCV);
                    ses.setAttribute("CV", mCV);
                }
                ses.setAttribute("Account", user);
                ses.setAttribute("RoleID", user.getRoleID());
                ses.setMaxInactiveInterval(60000);

                Cookie cu = new Cookie("user", user.getAccountName());
                Cookie cp = new Cookie("pass", user.getPassWord());
                Cookie cr = new Cookie("remember", remember);

                if (remember == null) {
                    cu.setMaxAge(0);    // set thoi gian hoat dong cho cookie = 0
                    cp.setMaxAge(0);
                    cr.setMaxAge(0);
                } else {
                    cu.setMaxAge(60 * 60 * 24); // set thoi gian hoat dong cho cookie = 1 ngay
                    cp.setMaxAge(60 * 60 * 24);
                    cr.setMaxAge(60 * 60 * 24);
                }
                response.addCookie(cu); //add cookie
                response.addCookie(cp);
                response.addCookie(cr);
                // set cookie thong bao
                Cookie[] arr = request.getCookies();

                
                String txt = "";
                if (arr != null) {
                    for (Cookie o : arr) {
                        if (o.getName().equals("notification" + user.getID())) {
                            txt += o.getValue();
                        }
                    }
                }
                Notification n = new Notification(txt);
                ses.setAttribute("Notification", n);
                int num= 0;
                if (arr != null) {
                    for (Cookie o : arr) {
                        if (o.getName().equals("newNotification"+user.getID())) {
                            num = Integer.parseInt(o.getValue());
                        }
                    }
                }
                ses.setAttribute("NewNotification", num);
                
                response.sendRedirect("views/user/index.jsp");

            }
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
        processRequest(request, response);
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

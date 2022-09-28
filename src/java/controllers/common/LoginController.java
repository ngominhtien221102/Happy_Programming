/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.User;
import service.classimpl.UserService;

/**
 *
 * @author Lenovo
 */
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
//
//            ArrayList<User> userList;
//        userList = (ArrayList<User>) ses.getAttribute("Account");
            
            String User = request.getParameter("Username");
            String Password = request.getParameter("Password");
            String remember = request.getParameter("rem");
            UserService uS = new UserService();
            User user = uS.getUserByAccount(User, Password);
            if (user == null) {
                request.setAttribute("Alert", "Account is not exist please retype!");
                request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
            } else {
           
                ses.setAttribute("Account", user);
                ses.setMaxInactiveInterval(60*10);
                
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

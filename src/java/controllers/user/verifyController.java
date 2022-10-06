/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import javax.mail.MessagingException;
import model.User;
import model.UserProfile;
import service.IUserProfileService;
import service.IUserService;
import service.classimpl.UserProfileService;
import service.classimpl.UserService;
import util.*;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "verifyController", urlPatterns = {"/verifyControl"})
public class verifyController extends HttpServlet {

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
            out.println("<title>Servlet verifyController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet verifyController at " + request.getContextPath() + "</h1>");
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

        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("Account");
        List<UserProfile> uList;
        uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        IUserProfileService iU = new UserProfileService();
        UserProfile uP = iU.getUserProfileById(u.getID(), uList);

        Mail mail = new Mail();
        String OTP = mail.getOTP();
        ses.setAttribute("OTP", OTP);
        String subject = "Verify Email to active account";
        String message = "From Happy Programming, Your OTP is: " + OTP;
        try {
            mail.sendEmail("tiennmhe161579@fpt.edu.vn", "Minhtien01", uP.getEmail(), subject, message);
        } catch (MessagingException ex) {
            System.out.println("Send OTP error");
        }

        response.sendRedirect("views/user/verify.jsp");

//       
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
        IUserService i = new UserService();
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("Account");
        String OTPsend = (String) ses.getAttribute("OTP");
        String OTP = request.getParameter("OTP");
        List<User> uList;
        uList = (List<User>) ses.getAttribute("listUser");

        if (OTP.equals(OTPsend)) {
            User userUpdate = new User(u.getID(), u.getRoleID(), u.getAccountName(), u.getPassWord(), true);
            i.update(userUpdate, uList);
            response.sendRedirect("views/user/index.jsp");
        } else {
            request.setAttribute("Alert", "Incorrect OTP! Please check again OTP to active account!");
            request.getRequestDispatcher("views/user/verify.jsp").forward(request, response);
        }

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

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
import model.User;
import service.IUserService;
import service.classimpl.UserService;
import util.Utility;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ChangePasswordController", urlPatterns = {"/changePass"})
public class ChangePasswordController extends HttpServlet {

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
            out.println("<title>Servlet ChangePasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePasswordController at " + request.getContextPath() + "</h1>");
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

        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");
        String confirmPass = request.getParameter("confirmPass");
        HttpSession ses = request.getSession();
        User user = (User) ses.getAttribute("Account");
        List<User> userList;
        userList = (List<User>) ses.getAttribute("listUser");
        Utility u = new Utility();
        boolean check1 = user.getPassWord().equals(oldPass);
        boolean check2 = u.checkPassword(newPass);
        boolean check3 = newPass.equals(confirmPass);
        if (!check1) {
            request.setAttribute("error1", "Incorrect old password! Please re-input correct!");
            request.getRequestDispatcher("views/user/changePassword.jsp").forward(request, response);

        }
        if (!check2) {

            request.setAttribute("error2", "The password must have Minimum eight characters, at least one uppercase letter, one lowercase letter and one number"
                    + " Ex: Password1");

            request.setAttribute("oldPass", oldPass);
            request.getRequestDispatcher("views/user/changePassword.jsp").forward(request, response);

        }
        if (!check3) {
            request.setAttribute("oldPass", oldPass);
            request.setAttribute("newPass", newPass);
            request.setAttribute("error3", "Confirm password not match!");
            request.getRequestDispatcher("views/user/changePassword.jsp").forward(request, response);

        }
        if (check1 && check2 && check3) {
            IUserService uS = new UserService();
            uS.update(new User(user.getID(), user.getRoleID(), user.getAccountName(), newPass, user.isStatus()), userList);
            request.setAttribute("message", "Change password successful!");
            request.getRequestDispatcher("views/user/changePassword.jsp").forward(request, response);
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
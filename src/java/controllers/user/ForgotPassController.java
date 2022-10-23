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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import model.User;
import service.IUserService;
import service.classimpl.UserService;
import util.Mail;



/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ForgotPassController", urlPatterns = {"/forgotPass"})
public class ForgotPassController extends HttpServlet {

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
            out.println("<title>Servlet ForgotPassController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPassController at " + request.getContextPath() + "</h1>");
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
        response.sendRedirect(request.getContextPath() + "/views/user/forgotPass.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    IUserService user = new UserService();

    Mail m = new Mail();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lay inf tu jsp
        String accName = request.getParameter("accountName");
        String email = request.getParameter("email");

        //Lay cac list ve tu session
        HttpSession ses = request.getSession();
        List<User> ulist = (List<User>) ses.getAttribute("listUser");

        //random pass moi de gui mail
        String newPass = m.RandomPass();
        //tk mail dung de gui      
        String userName = "hungnxhe160592@fpt.edu.vn";
        String password = "hungnguyen2002";

        //check user co ton tai kh
        User u = user.getUserByAccountName(accName, ulist);

        if (u == null) {
            request.setAttribute("Error", "This AccountName does not exist");
            request.getRequestDispatcher("/views/user/forgotPass.jsp").forward(request, response);
        } else {
            ses.setAttribute("User", u);
            try {
                //gui mail
                m.sendEmail(userName, password, email, "New Password for your Account", newPass);
                u.setPassWord(newPass);
                response.sendRedirect(request.getContextPath() + "/views/user/resetPassword.jsp");
            } catch (MessagingException ex) {
                Logger.getLogger(ForgotPassController.class.getName()).log(Level.SEVERE, null, ex);
                response.sendRedirect(request.getContextPath() + "/views/user/forgotPass.jsp");
            }
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

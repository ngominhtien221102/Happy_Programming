/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;
import java.io.IOException;
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
 * @author minhd
 */
@WebServlet(name = "SignUpController", urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet {

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
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    IUserService service = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        String repassword = request.getParameter("passwordRepeat").trim();
        HttpSession ses = request.getSession();
        Utility utility = new Utility();
        List<User> userlst = (List<User>) ses.getAttribute("listUser");
        boolean isSignUpAble = true;// add account if true
        for (User user : userlst) {// check username in database
            if(user.getAccountName().equalsIgnoreCase(username)){
                request.setAttribute("username_alert", "User name already exist. Try again.");
                isSignUpAble = false;
                break;
            }
        }
        if(!utility.checkPassword(password)){// password must have more than 8 character
            request.setAttribute("Password_alert", "Minimum eight characters, at least one uppercase letter, one lowercase letter and one number");
            isSignUpAble = false;
        }
        else if(!password.equalsIgnoreCase(repassword)){// comfirm password must match with password
            request.setAttribute("Password_alert", "Those passwords didn’t match. Try again.");
            isSignUpAble = false;
        }
        if(isSignUpAble){// if true add account
            User u = new User(0, 4, username, password, true);
            service.insert(u, userlst);
            response.sendRedirect("views/user/index.jsp");
        }else{// return back to signup jsp
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.getRequestDispatcher("views/user/registerView.jsp").forward(request, response);
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

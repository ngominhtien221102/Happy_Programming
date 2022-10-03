/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Address;
import model.User;
import model.UserProfile;
import service.IAddressService;
import service.IUserProfileService;
import service.classimpl.AddressService;
import service.classimpl.UserProfileService;

/**
 *
 * @author Lenovo
 */
public class ViewMenteeProfileController extends HttpServlet {

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
            IUserProfileService i = new UserProfileService();
            IAddressService ia = new AddressService();
            HttpSession ses = request.getSession();

            List<UserProfile> uList;
            uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
            List<Address> aList;
            aList = (List<Address>) ses.getAttribute("listAddress");
            User u = (User) ses.getAttribute("Account");
            int id = u.getID();
            UserProfile uP = i.getUserProfileById(id, uList);

            Address a = ia.getAddressById(uP.getAddressID(), aList);
            String tinh = a.getTinh();
            String huyen = a.getHuyen();
            String xa = a.getXa();
            request.setAttribute("tinh", tinh);
            request.setAttribute("huyen", huyen);
            request.setAttribute("xa", xa);
            request.setAttribute("us", uP);
            request.getRequestDispatcher("views/user/menteeProfile.jsp").forward(request, response);
        
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

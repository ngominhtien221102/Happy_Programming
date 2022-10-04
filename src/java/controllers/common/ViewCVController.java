/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Address;
import model.MentorCV;
import model.Skill;
import model.UserProfile;
import service.IAddressService;
import service.IMentorService;
import service.ISkillService;
import service.IUserProfileService;
import service.classimpl.AddressService;
import service.classimpl.MentorService;
import service.classimpl.SkillService;
import service.classimpl.UserProfileService;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ViewCVController", urlPatterns = {"/viewCV"})
public class ViewCVController extends HttpServlet {

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
            out.println("<title>Servlet ViewCVController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewCVController at " + request.getContextPath() + "</h1>");
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
        List<Skill> listSkill = (List<Skill>) ses.getAttribute("listSkill");
        List<MentorCV> listCV = (List<MentorCV>) ses.getAttribute("listMentorCV");
        List<UserProfile> profiles = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<Address> addList = (List<Address>) ses.getAttribute("listAddress");

        ISkillService skillSer = new SkillService();
        IMentorService mentorSer = new MentorService();
        IUserProfileService pfSer = new UserProfileService();
        IUserProfileService uSer = new UserProfileService();
        IAddressService ia = new AddressService();

        String id_raw = request.getParameter("mentorID");

        try {
            int id = Integer.parseInt(id_raw);
            UserProfile mentorProfile = uSer.getUserProfileById(id, profiles);
            MentorCV mentorCV = mentorSer.getCVById(id, listCV);
            
            Address a = ia.getAddressById(mentorProfile.getAddressID(), addList);
            String tinh = a.getTinh();
            String huyen = a.getHuyen();
            String xa = a.getXa();
            request.setAttribute("tinh", tinh);
            request.setAttribute("huyen", huyen);
            request.setAttribute("xa", xa);
            
            request.setAttribute("mentorCV", mentorCV);
            request.setAttribute("mentorProfile", mentorProfile);
            request.getRequestDispatcher("views/common/viewMentorCV.jsp").forward(request, response);
            
        } catch (Exception e) { //id mentor truyền vào không hợp lệ => home
            response.sendRedirect("views/user/index.jsp");
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.mentor;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import model.Address;
import model.Invitation;
import model.MentorCV;
import model.Rate;
import model.Skill;
import model.User;
import model.UserProfile;
import service.IAddressService;
import service.IMentorService;
import service.IRateService;
import service.ISkillService;
import service.IUserProfileService;
import service.classimpl.AddressService;
import service.classimpl.MentorService;
import service.classimpl.RateService;
import service.classimpl.SkillService;
import service.classimpl.UserProfileService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ViewCV", urlPatterns = {"/mentorViewCV"})
public class MentorViewCV extends HttpServlet {

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
            out.println("<title>Servlet ViewCV</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewCV at " + request.getContextPath() + "</h1>");
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
    
    IRateService ra = new RateService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession ses = request.getSession();
        List<MentorCV> listCV = (List<MentorCV>) ses.getAttribute("listMentorCV");
        List<UserProfile> profiles = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<Address> addList = (List<Address>) ses.getAttribute("listAddress");
        List<Rate> rateList = (List<Rate>) ses.getAttribute("listRate");
        List<Invitation> invList = (List<Invitation>) ses.getAttribute("listInv");

        IMentorService mentorSer = new MentorService();
        IUserProfileService uSer = new UserProfileService();
        IAddressService ia = new AddressService();

        User u = (User) ses.getAttribute("Account");

        try {
            int id = u.getID();

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

            List<Rate> rList = ra.getListByMentorID(id, rateList);

            int rateTotal = rList.size();
            request.setAttribute("rateTotal", rateTotal);
            int five = ra.countRate(5, rList);
            int four = ra.countRate(4, rList);
            int three = ra.countRate(3, rList);
            int two = ra.countRate(2, rList);
            int one = ra.countRate(1, rList);
            HashMap<Integer, Float> rateHm = ra.getHmAvgRate();
            
            if (rateHm.get(id) == 0 && rateHm.get(id) != null) {
                request.setAttribute("five", 0);
                request.setAttribute("four", 0);
                request.setAttribute("three", 0);
                request.setAttribute("two", 0);
                request.setAttribute("one", 0);
            }

            if(rateTotal==0){
                request.setAttribute("five", 0);
                request.setAttribute("four", 0);
                request.setAttribute("three", 0);
                request.setAttribute("two", 0);
                request.setAttribute("one", 0);
            }
            request.setAttribute("rateHm", rateHm);
            request.setAttribute("five", five * 100 / rateTotal);
            request.setAttribute("four", four * 100 / rateTotal);
            request.setAttribute("three", three * 100 / rateTotal);
            request.setAttribute("two", two * 100 / rateTotal);
            request.setAttribute("one", one * 100 / rateTotal);

            request.getRequestDispatcher("views/mentors/viewMentorCV.jsp").forward(request, response);

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

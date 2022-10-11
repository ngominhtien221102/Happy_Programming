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
import java.util.HashMap;
import java.util.List;
import model.MentorCV;

import model.UserProfile;
import service.IInvitationService;
import service.IRateService;
import service.classimpl.InvitationService;
import service.classimpl.RateService;

/**
 *
 * @author Admin
 */
@WebServlet(name="SuggestMentorController", urlPatterns={"/suggestMentor"})
public class SuggestMentorController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SuggestMentorController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SuggestMentorController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession ses = request.getSession();
        
        List<MentorCV> CVs = (List<MentorCV>) ses.getAttribute("listMentorCV");
        List<UserProfile> userProfiles = (List<UserProfile>) ses.getAttribute("listUserProfile");
        
        IRateService rateSer = new RateService();
        IInvitationService invSer = new InvitationService();

        
        List<Integer> listIDSkill = invSer.getListIDSkill();
        List<Integer> idMentorsSuggest = rateSer.getMentorsSuggest(listIDSkill, CVs);
        
        HashMap<Integer, MentorCV> suggestCVs = new HashMap<>();
        HashMap<Integer, UserProfile> suggestProfiles = new HashMap<>();
        HashMap<Integer, Float> rateHm = rateSer.getHmAvgRate();
        
        for (MentorCV cv : CVs){
            if (idMentorsSuggest.contains(cv.getID())){
                suggestCVs.put(cv.getID(), cv);
            }
        }
        
        for (UserProfile p : userProfiles){
            if (idMentorsSuggest.contains(p.getID())){
                suggestProfiles.put(p.getID(), p);
            }
        }
        
        request.setAttribute("idMentorsSuggest", idMentorsSuggest);
        request.setAttribute("CVsHm", suggestCVs);
        request.setAttribute("profilesHm", suggestProfiles);
        request.setAttribute("rateHm", rateHm);
        request.getRequestDispatcher("views/user/mentorSuggest.jsp").forward(request, response);
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

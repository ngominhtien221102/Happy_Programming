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
import model.Rate;
import model.User;
import service.IRateService;
import service.classimpl.RateService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "RateController", urlPatterns = {"/rate"})
public class RateController extends HttpServlet {

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
            out.println("<title>Servlet RateController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RateController at " + request.getContextPath() + "</h1>");
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
        String rate_raw = request.getParameter("rate");
        String mentorId_raw = request.getParameter("mentorID");
        String skillId_raw = request.getParameter("skillID");
        List<Rate> rateList = (List<Rate>) ses.getAttribute("listRate");

        User u = (User) ses.getAttribute("Account");
        
        try {
            int rate = Integer.parseInt(rate_raw);
            int skillID = Integer.parseInt(skillId_raw);
            int mentorId = Integer.parseInt(mentorId_raw);
            int menteeId = u.getID();
            Rate r = ra.getRateByIds(skillID, mentorId, menteeId, rateList);
            if (r==null) {
                ra.insert(new Rate(0, mentorId, menteeId, mentorId, rate), rateList);
            }else{
                r.setRate(rate);
                ra.update(r, rateList);
            }
            ses.setAttribute("rateList", rateList);
            request.getRequestDispatcher("/viewCV?mentorID=" + mentorId).forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("views/common/viewMentorCV.jsp").forward(request, response);
           
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

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
import java.util.List;
import model.Invitation;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author Admin
 */
@WebServlet(name = "StatisticInvitationController", urlPatterns = {"/statisticInv"})
public class StatisticInvitationController extends HttpServlet {

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
            out.println("<title>Servlet StatisticInvitationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StatisticInvitationController at " + request.getContextPath() + "</h1>");
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
        List<Invitation> invList = (List<Invitation>) ses.getAttribute("listInv");

        IInvitationService InvService = new InvitationService();

        int totalInv = invList.size();
        int totalRejectedInv = 0;
        int totalAcceptedInv = 0;
        int totalProcessingInv = 0;
        int totalCancelInv = 0;
        for (Invitation i : invList) {
            switch (i.getStatusID()) {
                case 1:
                    totalAcceptedInv++;
                    break;
                case 2:
                    totalProcessingInv++;
                    break;
                case 3:
                    totalCancelInv++;
                    break;
                case 4:
                    totalRejectedInv++;
                    break;
            }
        }

        request.setAttribute("totalInv", totalInv);
        request.setAttribute("totalRejectedInv", totalRejectedInv);
        request.setAttribute("totalAcceptedInv", totalAcceptedInv);
        request.setAttribute("totalProcessingInv", totalProcessingInv);
        request.setAttribute("totalCancelInv", totalCancelInv);

        request.setAttribute("percentRejected", totalRejectedInv*100/totalInv);
        request.setAttribute("percentAccepted", totalAcceptedInv*100/totalInv);
        request.setAttribute("percentProcessing", totalProcessingInv*100/totalInv);
        request.setAttribute("percentCancel", totalCancelInv*100/totalInv);
        
        request.getRequestDispatcher("views/mentors/statisticInvitation.jsp").forward(request, response);

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

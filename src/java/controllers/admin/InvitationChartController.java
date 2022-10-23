/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.admin;

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
@WebServlet(name = "InvitationChartController", urlPatterns = {"/invitationChart"})
public class InvitationChartController extends HttpServlet {

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
            out.println("<title>Servlet InvitationChartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InvitationChartController at " + request.getContextPath() + "</h1>");
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
        IInvitationService invSer = new InvitationService();
        List<Invitation> invList = (List<Invitation>) ses.getAttribute("listInv");

        invSer.totalInvPerMonth(invList);
        List<Integer> totalPerMonth = invSer.getTotalPerMonth();
        List<Integer> totalProcessingPerMonth = invSer.getTotalProcessingPerMonth();
        List<Integer> totalCancelPerMonth = invSer.getTotalCancelPerMonth();
        List<Integer> totalRejectPerMonth = invSer.getTotalRejectPerMonth();
        List<Integer> totalAcceptPerMonth = invSer.getTotalAcceptPerMonth();
        List<Integer> totalClosedPerMonth = invSer.getTotalClosedPerMonth();
        
        String list_raw = "";
        for (Integer i : totalPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw += "||";
        for (Integer i : totalAcceptPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw += "||";
        for (Integer i : totalProcessingPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw += "||";
        for (Integer i : totalCancelPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw += "||";
        for (Integer i : totalRejectPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw += "||";
        for (Integer i : totalClosedPerMonth) {
            list_raw = list_raw + i + "-";
        }
        list_raw = list_raw.substring(0, list_raw.length() - 1);
        PrintWriter out = response.getWriter();
        out.println(list_raw);

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

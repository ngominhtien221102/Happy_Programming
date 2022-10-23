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
 * @author ADMIN
 */
@WebServlet(name = "UpdateStatusController", urlPatterns = {"/updateStatus"})
public class UpdateStatusController extends HttpServlet {

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
            out.println("<title>Servlet UpdateStatusController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateStatusController at " + request.getContextPath() + "</h1>");
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
    IInvitationService in = new InvitationService();
    int invID;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        //lay hashmap,list tu loadhome
        List<Invitation> inlist = (List<Invitation>) session.getAttribute("listInv");

        //lay info tu jsp
        String invIdRaw = request.getParameter("id");
        String type = request.getParameter("type");

        if (invIdRaw != null && type != null) {
            try {
                invID = Integer.parseInt(invIdRaw.trim());
                //lay invitation de update
                Invitation inv = in.getInvitationById(invID, inlist);
                if (type.equals("0")) {
                    inv.setStatusID(4);
                    in.update(inv, inlist);
                    session.setAttribute("listInv", inlist);
                    response.sendRedirect(request.getContextPath() + "/invitationMentor");
                }
                if (type.equals("1")) {
                    inv.setStatusID(1);
                    in.update(inv, inlist);
                    session.setAttribute("listInv", inlist);
                    response.sendRedirect(request.getContextPath() + "/invitationMentor");
                }
            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/invitationMentor");
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

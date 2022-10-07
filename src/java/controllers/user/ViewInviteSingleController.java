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
import model.Invitation;
import model.User;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author minhd
 */
@WebServlet(name = "ViewInviteSingleController", urlPatterns = {"/singleInvite"})
public class ViewInviteSingleController extends HttpServlet {

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
            out.println("<title>Servlet ViewInviteSingleController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewInviteSingleController at " + request.getContextPath() + "</h1>");
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
        int inviteId = 0;
        try {
            inviteId = Integer.parseInt(request.getParameter("invitationId"));
        } catch (Exception e) {
        }
        HttpSession session = request.getSession();
        List<Invitation> invitationLst = (List<Invitation>) session.getAttribute("listInv");
        User u = (User) session.getAttribute("Account");
        boolean isViewAble = false;
        for (Invitation invitation1 : invitationLst) {
            if (invitation1.getMenteeID() == u.getID() && inviteId == invitation1.getID()) {
                isViewAble = true;
                break;
            }
        }
        if (isViewAble) {
            IInvitationService service = new InvitationService();
                Invitation i = service.getInvitationById(inviteId, invitationLst);
                request.setAttribute("Invitation", i);
                request.getRequestDispatcher("views/user/ViewInvitationSingle.jsp").forward(request, response);
        }else{
            response.sendRedirect("views/user/viewRequest.jsp");
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


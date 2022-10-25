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
import model.PageInfor;
import model.User;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "InvitationMentorController", urlPatterns = {"/invitationMentor"})
public class InvitationMentorController extends HttpServlet {

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
            out.println("<title>Servlet InvitationMentorController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InvitationMentorController at " + request.getContextPath() + "</h1>");
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
        List<Invitation> listInv = (List<Invitation>) ses.getAttribute("listInv");
        User u = (User) ses.getAttribute("Account");

        try {
            int mentorId = u.getID();
            //Phan trang
            String getNrpp = request.getParameter("nrpp");
            int nrpp = 3;
            if (getNrpp != null) {
                nrpp = Integer.parseInt(getNrpp);
            }
            request.setAttribute("nrpp", nrpp);

            int cp;

            String page = request.getParameter("page");
            if (page == null || page.equals("")) { // trang = null => page =1  
                cp = 1;
            } else {
                cp = Integer.parseInt(page);
            }
            IInvitationService ser = new InvitationService();
            List<Invitation> invList = ser.getInvitationByMentorId(mentorId, listInv);
            request.setAttribute("invList", invList);
            PageInfor pageIf = new PageInfor(nrpp, invList.size(), cp);
            request.setAttribute("pageIf", pageIf);
            request.getRequestDispatcher("views/mentors/viewInvitationMentor.jsp").forward(request, response);
        } catch (Exception e) {
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

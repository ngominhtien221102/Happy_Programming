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
import java.util.ArrayList;
import java.util.List;
import model.Invitation;
import model.PageInfor;
import model.User;
import model.UserProfile;

/**
 *
 * @author minhd
 */
@WebServlet(name = "ViewAllInviteController", urlPatterns = {"/viewAllInvite"})
public class ViewAllInviteController extends HttpServlet {

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
            out.println("<title>Servlet ViewAllInviteController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewAllInviteController at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        List<Invitation> listInv = (List<Invitation>) session.getAttribute("listInv");
        List<UserProfile> listUserProfile = (List<UserProfile>) session.getAttribute("listUserProfile");
        User Account = (User) session.getAttribute("Account");
        ArrayList<String> name = new ArrayList<>();
        ArrayList<Invitation> listInv2 = new ArrayList<>();
        for (Invitation inv : listInv) {
            if (inv.getMenteeID() == Account.getID()) {
                listInv2.add(inv);
                for (UserProfile up : listUserProfile) {
                    if (up.getID() == inv.getMentorID()) {
                        name.add(up.getFirstName() + " " + up.getLastName());
                    }
                }
            }
        }       
        int cp;
        int nrpp = 0;
        String page = request.getParameter("page");
        try {
            nrpp = Integer.parseInt(request.getParameter("nrpp"));
        } catch (Exception e) {
        }

        if (page == null || page.equals("")) {
            cp = 1;
        } else {
            cp = Integer.parseInt(page);
        }
        PageInfor pageIf = new PageInfor(6, listInv2.size(), cp);
        int[] a = {6, 9, 12, 15, 18};
        pageIf.setArrNrpp(a);
        if (nrpp != 0) {
            pageIf = new PageInfor(nrpp, listInv2.size(), cp);
            pageIf.setArrNrpp(a);
        }
        request.setAttribute("pageIf", pageIf);
        request.setAttribute("nrpp", nrpp);
        request.setAttribute("listInv2", listInv2);
        request.setAttribute("name", name);
        request.getRequestDispatcher("views/user/viewInvitationMentee.jsp").forward(request, response);
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

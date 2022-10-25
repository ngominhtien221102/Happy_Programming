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
import java.util.ArrayList;

import java.util.Collections;
import java.util.List;
import model.Invitation;
import model.PageInfor;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AllInvitationController", urlPatterns = {"/allInvitation"})
public class AllInvitationController extends HttpServlet {

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
            out.println("<title>Servlet AllInvitationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AllInvitationController at " + request.getContextPath() + "</h1>");
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
    IInvitationService invS = new InvitationService();
    String search;
    int cp;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();

        //Lay list tu loadhome 
        List<Invitation> invList = (List<Invitation>) ses.getAttribute("listInv");

        //Dem so luong 
        int totalInv = invList.size();
        int acpt = invS.countInv(1, invList);
        int reject = invS.countInv(4, invList);
        int process = invS.countInv(2, invList);
        int cancel = invS.countInv(3, invList);
        //set sang jsp
        request.setAttribute("totalInv", totalInv);
        request.setAttribute("acpt", acpt);
        request.setAttribute("reject", reject);
        request.setAttribute("process", process);
        request.setAttribute("cancel", cancel);

        //search
        List<Invitation> invitationList = new ArrayList<>();
        search = request.getParameter("search");
        if (search == null) {
            invitationList = invList;
        } else {
            invitationList = invS.searchInv(search, invList);
            request.setAttribute("search",search);
        }
        //Phan trang
        String getNrpp = request.getParameter("nrpp");
        int nrpp = 5;
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
        PageInfor pageIf = new PageInfor(nrpp, invitationList.size(), cp);
        request.setAttribute("pageIf", pageIf);
        // sort

        int sort = 1;
        request.setAttribute("sort", sort);
        String getSort = request.getParameter("sort");
        int sortGet = 0;
        if (getSort != null) {
            try {
                sortGet = Integer.parseInt(getSort);

            } catch (NumberFormatException e) {
            }

            if (sortGet == 1) {
                sort = 2;
                request.setAttribute("sort", sort);
                request.setAttribute("invitationList", invS.sortList(invitationList));
                int status = 1;
                request.setAttribute("status", status);
            }
            if (sortGet == 2) {
                sort = 1;
                request.setAttribute("invitationList", invitationList);
                request.setAttribute("sort", sort);
                int status = 2;
                request.setAttribute("status", status);
            }
        }

        request.setAttribute("invitationList", invitationList);
        request.getRequestDispatcher("views/admin/allInvitation.jsp").forward(request, response);

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

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
        int close = invS.countInv(5, invList);
        //set sang jsp
        request.setAttribute("totalInv", totalInv);
        request.setAttribute("acpt", acpt);
        request.setAttribute("reject", reject);
        request.setAttribute("process", process);
        request.setAttribute("cancel", cancel);
        request.setAttribute("close", close);

        String url = request.getParameter("urltext");
        try {
            //list theo tim kiem de sort
            List<Invitation> searchList = (List<Invitation>) ses.getAttribute("searchList");
            String type = request.getParameter("Type");

            if (!searchList.isEmpty()) {
                //sort list theo title 
                List<Invitation> invList1 = invS.sortList(searchList);

                if (type.equals("down")) {
                    ses.setAttribute("searchList", searchList);
                }
                if (type.equals("up")) {
                    Collections.reverse(invList1);
                    ses.setAttribute("searchList", searchList);
                }
                if (url != null && url.contains("allInvitaion.jsp")) {
                    response.sendRedirect(url + "#" + type);
                }

            }
        } catch (Exception e) {
        }

        //search 
        //Lay key search tu jsp
        search = request.getParameter("search");
        request.setAttribute("search", search);

        if (search != null) {
            if (!"".equals(search.trim())) {
                // phân trang
                String page = request.getParameter("page");
                if (page == null || page.equals("")) { // trang = null => page =1  
                    cp = 1;
                } else {
                    cp = Integer.parseInt(page);
                }

                List<Invitation> searchList = invS.searchInv(search, invList);
                PageInfor pageIf = new PageInfor(5, searchList.size(), cp);
                ses.setAttribute("searchList", searchList);
                request.setAttribute("pageIf", pageIf);
            }
        }

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

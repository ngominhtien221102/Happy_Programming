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
import java.util.List;
import model.PageInfor;
import model.Skill;
import service.ISkillService;
import service.classimpl.SkillService;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "EditSkillController", urlPatterns = {"/editSkill"})
public class EditSkillController extends HttpServlet {

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
            out.println("<title>Servlet EditSkillController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditSkillController at " + request.getContextPath() + "</h1>");
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
    ISkillService s = new SkillService();
    int cp, skillID, nrpp;
    String type, search, msg;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        search = request.getParameter("search");
        request.setAttribute("search", search);
        List<Skill> lstSkill = (List<Skill>) ses.getAttribute("listSkill");
        List<Skill> listSkillSearch = new ArrayList<>();
        if (search != null) {
            listSkillSearch = s.search(search, lstSkill);
        } else {
            listSkillSearch = lstSkill;
        }
        // phân trang
        String getNrpp = request.getParameter("nrpp");
        nrpp = 5;
        if (getNrpp != null) {
            nrpp = Integer.parseInt(getNrpp);
        }
        request.setAttribute("nrpp", nrpp);
        String page = request.getParameter("page");
        if (page == null || page.equals("")) { // trang = null => page =1  
            cp = 1;
        } else {
            cp = Integer.parseInt(page);
        }
        PageInfor pageIf = new PageInfor(nrpp, listSkillSearch.size(), cp);

        ses.setAttribute("listSkillSearch", listSkillSearch);
        request.setAttribute("pageIf", pageIf);

        type = request.getParameter("type");
        String sSkillID = request.getParameter("skillID");
        if (sSkillID != null && type != null) {
            skillID = Integer.parseInt(sSkillID);
            if (type.equals("0")) {
                s.delete(skillID, lstSkill);
                ses.setAttribute("listSkill", lstSkill);
                if (search != null) {
                    response.sendRedirect(request.getContextPath() + "/editSkill?page=" + cp + "&search=" + search + "&nrpp=" + nrpp);
                } else {
                    response.sendRedirect(request.getContextPath() + "/editSkill?page=" + cp + "&nrpp=" + nrpp);
                }
            } else {
                Skill skillUd = s.getSkillById(skillID, lstSkill);
                String name = skillUd.getName();
                request.setAttribute("name", name);
                request.getRequestDispatcher("views/admin/allSkill.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("views/admin/allSkill.jsp").forward(request, response);
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
        HttpSession ses = request.getSession();
        List<Skill> listSkill = (List<Skill>) ses.getAttribute("listSkill");
        if (type != null) {
            if (type.equals("1")) {
                // update
                String name = request.getParameter("name");
                msg = s.update(new Skill(0, name), listSkill);
                ses.setAttribute("listSkill", listSkill);
                ses.setAttribute("listSkillSearch", listSkill);
                if (search != null) {
                    response.sendRedirect(request.getContextPath() + "/editSkill?page=" + cp + "&search=" + search + "&nrpp=" + nrpp);
                } else {
                    response.sendRedirect(request.getContextPath() + "/editSkill?page=" + cp + "&nrpp=" + nrpp);
                }
            }
        } else {
            // create
            String name = request.getParameter("name");
            msg = s.insert(new Skill(0, name), listSkill);
            ses.setAttribute("listSkill", listSkill);
            ses.setAttribute("listSkillSearch", listSkill);
            PageInfor pageIf = new PageInfor(nrpp, listSkill.size(), cp);
            int np = pageIf.getNp();
            response.sendRedirect(request.getContextPath() + "/editSkill?page=" + np + "&nrpp=" + nrpp);
        }
        request.getRequestDispatcher("views/admin/allSkill.jsp").forward(request, response);
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

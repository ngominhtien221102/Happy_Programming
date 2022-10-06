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
import jakarta.websocket.Session;
import java.util.List;
import model.Skill;
import service.ISkillService;
import service.classimpl.SkillService;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "UpdateSkillController", urlPatterns = {"/updateSkill"})
public class UpdateSkillController extends HttpServlet {

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
            out.println("<title>Servlet UpdateSkillService</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateSkillService at " + request.getContextPath() + "</h1>");
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
    int id;
  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Skill> list = (List<Skill>) session.getAttribute("listSkill");
        String Id = request.getParameter("id");
        String type = request.getParameter("type");
        if (Id != null && type != null) {
            id = Integer.parseInt(Id.trim());
            if (type.equals("0")) {
                s.delete(id, list);
                session.setAttribute("listSkill", list);
                response.sendRedirect(request.getContextPath() + "/views/user/skills.jsp");
            } else {
                if(s.getSkillById(id, list)!=null){
                    request.setAttribute("oldName", s.getSkillById(id, list).getName());
                    request.getRequestDispatcher("views/admin/updateSkill.jsp").forward(request, response);
                }
                else{
                    response.sendRedirect(request.getContextPath() + "/views/user/skills.jsp");
                }
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/views/user/skills.jsp");
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
        HttpSession session = request.getSession();
        List<Skill> list = (List<Skill>) session.getAttribute("listSkill");
        String name = request.getParameter("name");
        Skill skill = new Skill(id, name);
        String message = s.update(skill, list);
        if(message.equals("OK")){
            request.setAttribute("success", "Update skill success");
        }else{
            request.setAttribute("failed", message);            
        }
        request.getRequestDispatcher("views/admin/updateSkill.jsp").forward(request, response);
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

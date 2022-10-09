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
import model.MentorCV;
import model.Skill;
import model.UserProfile;
import service.IInvitationService;
import service.IMentorService;
import service.IUserProfileService;
import service.classimpl.InvitationService;
import service.classimpl.MentorService;
import service.classimpl.UserProfileService;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "EditInvitationController", urlPatterns = {"/editInvitation"})
public class EditInvitationController extends HttpServlet {

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
            out.println("<title>Servlet EditInvitationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditInvitationController at " + request.getContextPath() + "</h1>");
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
    IInvitationService i = new InvitationService();
    IUserProfileService up = new UserProfileService();
    IMentorService m = new MentorService();
    int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Invitation> list = (List<Invitation>) session.getAttribute("listInv");
        List<UserProfile> listUp = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<MentorCV> listCV = (List<MentorCV>) session.getAttribute("listMentorCV");
        String ID = request.getParameter("id");
        String type = request.getParameter("type");
        if (ID != null && type != null) {
            id = Integer.parseInt(ID.trim());
            if (type.equals("0")) { // delete xong van ve view
                i.delete(id, list);
                session.setAttribute("listInv", list);
                response.sendRedirect(request.getContextPath() + "/views/user/viewInvitationMentee.jsp");
            } else {
                if (type.equals("2")) {
                    Invitation invitation = new Invitation(id, 0, 0, 0, 0, "", "", "");
                    i.cancel(invitation, list);
                    session.setAttribute("listInv", list);
                    response.sendRedirect(request.getContextPath() + "/views/user/viewInvitationMentee.jsp");
                } else { // update goi den trang update
                    if (i.getInvitationById(id, list) != null) {
                        Invitation invitation = i.getInvitationById(id, list);
                        session.setAttribute("invitation", invitation);
                        UserProfile mentorProfile = up.getUserProfileById(invitation.getMentorID(), listUp);
                        String mentorName = mentorProfile.getFirstName() + " " + mentorProfile.getLastName();
                        MentorCV mentorCV = m.getCVById(invitation.getMentorID(), listCV);
                        List<Skill> mentorSkill = mentorCV.getSkillList();
                        session.setAttribute("mentorSkill", mentorSkill);
                        session.setAttribute("mentorName", mentorName);
                        request.getRequestDispatcher("/views/user/editInvitation.jsp").forward(request, response);
                    } else {
                        response.sendRedirect(request.getContextPath() + "/views/user/viewInvitationMentee.jsp");
                    }
                }
            }
        }else {
            response.sendRedirect(request.getContextPath() + "/views/user/viewInvitationMentee.jsp");

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
        List<Invitation> list = (List<Invitation>) session.getAttribute("listInv");
        Invitation invitation = (Invitation) session.getAttribute("invitation");
        // lay du lieu de update  
        int mentorId = invitation.getMentorID();
        int menteeId = invitation.getMenteeID();
        int skillId = invitation.getSkillID();
        int statusId = invitation.getStatusID();
        String title = request.getParameter("title");
        String deadline = request.getParameter("deadline");
        String content = request.getParameter("content");
        Invitation iv = new Invitation(id, mentorId, menteeId, skillId, statusId, title, deadline, content);
        String msg = i.update(iv, list);
        if (msg.equals("OK")) {
            session.setAttribute("invitation", invitation);
            request.setAttribute("success", "Update success");
        } else {
            request.setAttribute("failed", msg);
        }
        request.getRequestDispatcher("/views/user/editInvitation.jsp").forward(request, response);
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

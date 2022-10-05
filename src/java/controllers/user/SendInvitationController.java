/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import com.sun.mail.imap.protocol.ID;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import java.util.List;
import model.Invitation;
import model.MentorCV;
import model.PageInfor;
import model.Skill;
import model.User;
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
public class SendInvitationController extends HttpServlet {

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
            out.println("<title>Servlet SendInvitationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendInvitationController at " + request.getContextPath() + "</h1>");
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

    int mentorID,cp;
    String msg,search;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // search
        HttpSession session = request.getSession();
        List<UserProfile> listUp = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<MentorCV> listCV = (List<MentorCV>) session.getAttribute("listMentorCV");
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
                List<MentorCV> listSearch = m.searchMentor(search, listCV, listUp);
                PageInfor pageIf = new PageInfor(5, listSearch.size(), cp);
                request.setAttribute("listSearch", listSearch);
                request.setAttribute("pageIf", pageIf);
            }
        }
        // lay du lieu 
        String mentorId = request.getParameter("mentorID");
        try {
            mentorID = Integer.parseInt(mentorId);
            request.setAttribute("mentorId", mentorID);
            UserProfile mentorPf = up.getUserProfileById(mentorID, listUp);
            String mentorName = mentorPf.getFirstName() + " " + mentorPf.getLastName();
            request.setAttribute("mentorName", mentorName);
            MentorCV mentorCV = m.getCVById(mentorID, listCV);
            List<Skill> mentorSkill = mentorCV.getSkillList();
            request.setAttribute("listSkill", mentorSkill);
        } catch (Exception e) {

        }
        // gui thanh cong or that bai
        if (msg != null) {
            if (msg.equals("OK")) {
                request.setAttribute("success", "Send invitation success");
            } else {
                request.setAttribute("failed", msg);
            }
            msg = "";
        }
        request.getRequestDispatcher("views/user/sendInvitation.jsp").forward(request, response);
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
        // Send invitation 
        HttpSession session = request.getSession();
        List<Invitation> list = (List<Invitation>) session.getAttribute("listInv");
        User mentee = (User) session.getAttribute("Account");
        // cac data
        int menteeID = mentee.getID();
        int skill = Integer.parseInt(request.getParameter("skill"));
        String deadline = request.getParameter("deadline");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Invitation inv = new Invitation(0, mentorID, menteeID, skill, 2, title, deadline, content);
        msg = i.insert(inv, list);
        // du lieu de sendRedirect
        response.sendRedirect(request.getContextPath()+"/sendInvitation?search="+search+"&page="+cp+"&mentorID="+mentorID);
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

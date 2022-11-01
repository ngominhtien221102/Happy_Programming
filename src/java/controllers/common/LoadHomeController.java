/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;

import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
import filter.mentee.MenteeAcceptFitlter;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Invitation;
import model.MentorCV;
import model.UserProfile;

import service.*;

import service.classimpl.*;
import util.Utility;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoadHomeController", urlPatterns = {"/home"})
public class LoadHomeController extends HttpServlet {

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
            out.println("<title>Servlet LoadHomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadHomeController at " + request.getContextPath() + "</h1>");
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
        IUserService uS = new UserService();
        IUserProfileService upS = new UserProfileService();
        ISkillService sS = new SkillService();
        IRequestService reqS = new RequestService();
        IResponseService resS = new ResponseService();
        IStatusService staS = new StatusService();
        IRateService rS = new RateService();
        IMentorService mS = new MentorService();
        IInvitationService iS = new InvitationService();
        ICommentService cS = new CommentService();
        IAddressService aS = new AddressService();

        IPostService ips = new PostService();

        IContactService conS = new ContactService();
        ses.setAttribute("RoleID", 1);
        ses.setAttribute("listContact", conS.getList());
        ses.setAttribute("HmSkill", sS.getHm());
        ses.setAttribute("listSkill", sS.getList());
        ses.setAttribute("listUser", uS.getList());
        ses.setAttribute("listUserProfile", upS.getList());
        ses.setAttribute("listRequest", reqS.getList());
        ses.setAttribute("listResponse", resS.getList());
        ses.setAttribute("listStatus", staS.getHm());
        ses.setAttribute("listRate", rS.getList());
        ses.setAttribute("listMentorCV", mS.getListCV());
        ses.setAttribute("listInv", iS.getList());
        ses.setAttribute("listAddress", aS.getList());
        ses.setAttribute("listProvince", aS.getListProvince());
        ses.setAttribute("listComment", cS.getList());

        ses.setAttribute("listPost", ips.getList());

        List<UserProfile> uList;
        uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<MentorCV> mList;
        mList = (List<MentorCV>) ses.getAttribute("listMentorCV");
        List<UserProfile> listMentor = getProfileOfMentor(mList, uList);
        ses.setAttribute("listTeacher", listMentor);
        Utility u = new Utility();
        List<Invitation> iList = (List<Invitation>) ses.getAttribute("listInv");
        for (Invitation i : iList) {
            try {
                if (u.checkDeadlineDate(i.getDeadlineDate())) {
                    iS.autoReject(i, iList);
                }
            } catch (ParseException ex) {
                Logger.getLogger(LoadHomeController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        ses.setAttribute("listInv", iList);
        response.sendRedirect("views/user/index.jsp");
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

    private List<UserProfile> getProfileOfMentor(List<MentorCV> mList, List<UserProfile> uList) {
        List<UserProfile> mentorProfile = new ArrayList<>();
        ArrayList<Integer> listID = new ArrayList<>();
        for (MentorCV mentorCV : mList) {
            listID.add(mentorCV.getID());
        }
        for (UserProfile userProfile : uList) {
            if (listID.contains(userProfile.getID())) {
                mentorProfile.add(userProfile);
            }
        }
        return mentorProfile;
    }
}

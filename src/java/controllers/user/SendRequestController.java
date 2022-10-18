package controllers.user;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import model.Request;
import model.User;
import model.UserProfile;
import service.IRequestService;
import service.IUserProfileService;
import service.classimpl.RequestService;
import service.classimpl.UserProfileService;
import util.Utility;

/**
 *
 * @author minhd
 */
@WebServlet(urlPatterns = {"/sendRequest"})
public class SendRequestController extends HttpServlet {

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
            out.println("<title>Servlet SendRequestController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendRequestController at " + request.getContextPath() + "</h1>");
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
        List<UserProfile> upLst = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<UserProfile> upInvLst = (List<UserProfile>) session.getAttribute("upInvLst");
        String search = "";
        String page = "";
        int nrpp = 0;
        try {
            search = (String) request.getParameter("search");
            page = request.getParameter("page");
            nrpp = Integer.parseInt(request.getParameter("nrpp"));
        } catch (Exception e) {

        }
        
        if (upInvLst == null) {
            upInvLst = new ArrayList<>();
            ArrayList<Integer> skillId = new ArrayList<>();
            List<Invitation> invlst = (List<Invitation>) session.getAttribute("listInv");
            User account = (User) session.getAttribute("Account");
            for (UserProfile userProfile : upLst) {
                for (Invitation inv : invlst) {
                    if (userProfile.getID() == inv.getMentorID() && account.getID() == inv.getMenteeID()) {
                        if (inv.getStatusID() == 1) {
                            upInvLst.add(userProfile);
                            skillId.add(inv.getSkillID());
                        }
                    }
                }
            }
            session.setAttribute("upInvLst", upInvLst);
            session.setAttribute("skillId", skillId);
        }
        if (search != null) {
            upInvLst = new ArrayList<>();
            ArrayList<Integer> skillId = new ArrayList<>();
            List<Invitation> invlst = (List<Invitation>) session.getAttribute("listInv");
            User account = (User) session.getAttribute("Account");
            for (UserProfile up : upLst) {
                String name = up.getFirstName() + " " + up.getLastName();
                for (Invitation inv : invlst) {
                    if (up.getID() == inv.getMentorID() && account.getID() == inv.getMenteeID()) {
                        if (inv.getStatusID() == 1) {
                            if (name.contains(search)) {
                                upInvLst.add(up);
                                skillId.add(inv.getSkillID());
                            }
                        }
                    }
                }
            }
            session.setAttribute("upInvLst", upInvLst);
            session.setAttribute("skillId", skillId);
        }
        int cp;
        if (page == null || page.equals("")) {
            cp = 1;
        } else {
            cp = Integer.parseInt(page);
        }
        PageInfor pageIf = new PageInfor(5, upInvLst.size(), cp);
        if(nrpp != 0){
            pageIf = new PageInfor(nrpp, upInvLst.size(), cp);
        }
        request.setAttribute("pageIf", pageIf);
        request.setAttribute("nrpp", nrpp);
        int mentorId;
        try {
            mentorId = Integer.parseInt(request.getParameter("mentorId"));
            for (UserProfile userProfile : upInvLst) {
                if (mentorId == userProfile.getID()) {
                    IUserProfileService up = new UserProfileService();
                    UserProfile mentor = up.getUserProfileById(mentorId, upInvLst);
                    session.setAttribute("mentor", mentor);
                }
            }
        } catch (Exception e) {
        }
        request.getRequestDispatcher("/views/user/createRequest.jsp").forward(request, response);
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
        String title = (String) request.getParameter("title");
        String content = (String) request.getParameter("content");
        UserProfile mentor = (UserProfile) session.getAttribute("mentor");
        boolean sendable = true;
        Utility u = new Utility();
        if (u.countWord(content) <= 5) {
            request.setAttribute("content_alert", "Message must have more than 5 letters");
            sendable = false;
        }
        if (sendable) {
            IRequestService rs = new RequestService();
            User mentee = (User) session.getAttribute("Account");
            Request r = new Request(0, mentor.getID(), mentee.getID(), "", content, title);
            rs.insert(r, (List<Request>) session.getAttribute("listRequest"));
            request.setAttribute("message", "Request sent!");
            session.removeAttribute("mentor");
        } else {
            request.setAttribute("title", title);
            request.setAttribute("content", content);
        }
        request.getRequestDispatcher("/views/user/createRequest.jsp").forward(request, response);
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


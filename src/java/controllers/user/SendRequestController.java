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
        List<UserProfile> upLst2 = (List<UserProfile>) session.getAttribute("upLst2");
        if(upLst2 == null){
            upLst2 = new ArrayList<>();
            ArrayList<Integer> skillId = new ArrayList<>();
            List<Invitation> invlst = (List<Invitation>) session.getAttribute("listInv");
            User account = (User) session.getAttribute("Account");
            for (UserProfile userProfile : upLst) {
                for (Invitation inv : invlst) {
                    if(userProfile.getID()==inv.getMentorID()&&account.getID()==inv.getMenteeID()){
                        if(inv.getStatusID() == 1){
                            upLst2.add(userProfile);
                            skillId.add(inv.getSkillID());
                        }
                    }
                }
            }
            session.setAttribute("upLst2", upLst2);
            session.setAttribute("skillId", skillId);
        }
        int mentorId;
        try {
            mentorId = Integer.parseInt(request.getParameter("mentorId"));
            for (UserProfile userProfile : upLst2) {
                if (mentorId == userProfile.getID()) {
                    IUserProfileService service = new UserProfileService();
                    UserProfile mentor = service.getUserProfileById(mentorId, upLst2);
                    session.setAttribute("mentor", mentor);
                }
            }
            session.setAttribute("mentor", mentor);
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
            IRequestService service = new RequestService();
            User mentee = (User) session.getAttribute("Account");
            Request r = new Request(0, mentor.getID(), mentee.getID(), "", content, title);
            service.insert(r, (List<Request>) session.getAttribute("listRequest"));
            request.setAttribute("message", "Request sent!");
            session.removeAttribute("upLst2");
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


package controllers.user;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Request;
import model.User;
import model.UserProfile;
import service.IRequestService;
import service.classimpl.RequestService;
import util.Utility;

/**
 *
 * @author minhd
 */
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
        processRequest(request, response);
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
        String name = (String) request.getParameter("mentorName");
        String title = (String) request.getParameter("title");
        String content = (String) request.getParameter("content");

        boolean sendable = true;
        Utility u = new Utility();
        List<UserProfile> lst = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<User> ulst = (List<User>) session.getAttribute("listUser");
        UserProfile mentor = findMentor(ulst, lst, name);
        if(mentor == null){
            request.setAttribute("nanme_alert", "mentor not exist!");
            sendable = false;
        }
        if(u.countWord(content)<= 10){
            request.setAttribute("content_alert","message must have more than 10 letters");
            sendable = false;
        }
                
        if(sendable){
            IRequestService service = new RequestService();
            User mentee = (User) session.getAttribute("Account");
            Request r = new Request(0, mentor.getID(), mentee.getID(), "", content, title);
            service.insert(r, (List<Request>)session.getAttribute("listRequest"));
            request.setAttribute("message","request sent!");
        }else{
            request.setAttribute("mentorName", name);
            request.setAttribute("title", title);
            request.setAttribute("content", content);
        }
        request.getRequestDispatcher("/views/user/createRequest.jsp").forward(request, response);
    }
    public UserProfile findMentor(List<User> ulst, List<UserProfile> lst, String name){
        for (UserProfile userProfile : lst) {
            String fname = userProfile.getFirstName()+" "+userProfile.getLastName();
            if(fname.equalsIgnoreCase(name)){
                for (User user : ulst) {
                    if(user.getID()==userProfile.getID()){
                        if(user.getRoleID() == 3){
                            return userProfile;
                        }
                    }
                }
            }
        }
        return null;
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

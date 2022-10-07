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
import java.util.ArrayList;
import java.util.List;
import model.Request;
import model.Response;
import model.User;
import model.UserProfile;
import service.IRequestService;
import service.IUserProfileService;
import service.classimpl.RequestService;
import service.classimpl.UserProfileService;

/**
 *
 * @author minhd
 */
@WebServlet(name = "ViewRequestSingleController", urlPatterns = {"/singleRequest"})
public class ViewRequestSingleController extends HttpServlet {

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
            out.println("<title>Servlet LoadRequestResponse</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadRequestResponse at " + request.getContextPath() + "</h1>");
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
        int requestId = 0;
        try {
            requestId = Integer.parseInt(request.getParameter("requestId"));
        } catch (Exception e) {
        }
        HttpSession session = request.getSession();
        List<Request> requestLst = (List<Request>) session.getAttribute("listRequest");
        List<Response> responseLst = (List<Response>) session.getAttribute("listResponse");
        List<UserProfile> upLst = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<Response> responseLst2 = new ArrayList<>();
        User u = (User) session.getAttribute("Account");
        boolean isViewAble = false;
        for (Request request1 : requestLst) {
            if (request1.getMenteeID() == u.getID() && requestId == request1.getID()) {
                isViewAble = true;
                break;
            }
        }
        if (isViewAble) {
            IRequestService service = new RequestService();
            IUserProfileService service2 = new UserProfileService();
            Request r = service.getRequestById(requestId, requestLst);
            UserProfile mentee = service2.getUserProfileById(r.getMenteeID(), upLst);
            UserProfile mentor = service2.getUserProfileById(r.getMentorID(), upLst);
            for (Response response1 : responseLst) {
                if(response1.getRequestId() == r.getID()){
                    responseLst2.add(response1);
                }
            }
            request.setAttribute("mentee", mentee);
            request.setAttribute("mentor", mentor);
            request.setAttribute("responseLst", responseLst2);
            request.setAttribute("request", r);
            request.getRequestDispatcher("views/user/viewRequestSingle.jsp").forward(request, response);
        } else {
            response.sendRedirect("views/user/viewRequest.jsp");
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

}

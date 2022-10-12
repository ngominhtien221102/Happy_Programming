
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

/**
 *
 * @author minhd
 */
@WebServlet(name = "ViewAllRequestController", urlPatterns = {"/viewAllRequest"})
public class ViewAllRequestController extends HttpServlet {

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
            out.println("<title>Servlet ViewAllRequestController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewAllRequestController at " + request.getContextPath() + "</h1>");
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
        List<Request> listRequest = (List<Request>) session.getAttribute("listRequest");
        List<Response> listResponse = (List<Response>) session.getAttribute("listResponse");
        List<UserProfile> upLst = (List<UserProfile>) session.getAttribute("listUserProfile");
        List<UserProfile> urLst = new ArrayList<>();
        User Account = (User) session.getAttribute("Account");
        ArrayList<Request> LstRequest = new ArrayList<>();
        ArrayList<Integer> resCount = new ArrayList<>();
        if (Account.getRoleID() == 2) {
            for (Request req : listRequest) {
                if (req.getMenteeID() == Account.getID()) {
                    LstRequest.add(req);
                    int count = 0;
                    for (Response response1 : listResponse) {
                        if (req.getID() == response1.getRequestID()) {
                            count++;
                        }
                    }
                    resCount.add(count);
                    for (UserProfile up : upLst) {
                        if (req.getMentorID() == up.getID()) {
                            urLst.add(up);
                        }
                    }
                }
            }
        } else if (Account.getRoleID() == 3) {
            for (Request req : listRequest) {
                if (req.getMentorID() == Account.getID()) {
                    LstRequest.add(req);
                    int count = 0;
                    for (Response response1 : listResponse) {
                        if (req.getID() == response1.getRequestID()) {
                            count++;
                        }
                    }
                    resCount.add(count);
                    for (UserProfile up : upLst) {
                        if (req.getMenteeID() == up.getID()) {
                            urLst.add(up);
                            break;
                        }
                    }
                }
            }
        }
        request.setAttribute("urLst", urLst);
        request.setAttribute("LstRequest", LstRequest);
        request.setAttribute("resCount", resCount);
        request.getRequestDispatcher("views/user/viewRequest.jsp").forward(request, response);
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

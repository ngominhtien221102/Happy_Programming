
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Request;
import model.Response;
import model.User;
import model.UserProfile;
import service.IRequestService;
import service.IResponseService;
import service.IUserProfileService;
import service.classimpl.RequestService;
import service.classimpl.ResponseService;
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
        List<Response> rResponse = new ArrayList<>();
        User u = (User) session.getAttribute("Account");
        boolean isViewAble = false;
        for (Request req : requestLst) {
            if (req.getMenteeID() == u.getID() && requestId == req.getID()) {
                isViewAble = true;
                break;
            }
            if (req.getMentorID() == u.getID() && requestId == req.getID()) {
                isViewAble = true;
                break;
            }
        }
        if (isViewAble) {
            IRequestService rs = new RequestService();
            IUserProfileService ups = new UserProfileService();
            Request r = rs.getRequestById(requestId, requestLst);
            UserProfile mentee = ups.getUserProfileById(r.getMenteeID(), upLst);
            UserProfile mentor = ups.getUserProfileById(r.getMentorID(), upLst);
            for (Response res : responseLst) {
                if (res.getRequestID() == r.getID()) {
                    rResponse.add(res);
                }
            }
            request.setAttribute("mentee", mentee);
            request.setAttribute("mentor", mentor);
            request.setAttribute("responseLst", rResponse);
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
        IResponseService rs = new ResponseService();
        IRequestService reqs = new RequestService();
        HttpSession session = request.getSession();
        try {
            int requestID = Integer.parseInt(request.getParameter("requestId"));
            int userID = Integer.parseInt(request.getParameter("userID"));
            String resContent = request.getParameter("response").trim();
            if (resContent.equalsIgnoreCase("")) {
                request.setAttribute("resAlert", "Write something to response!");
            } else {
                String msg = rs.insert(new Response(0, requestID, userID, resContent, ""), (List<Response>) session.getAttribute("listResponse"));
                // notification
                LocalDate createAt = LocalDate.now();
                String subMsg[] = msg.split(" ");
                int receiveID;
                Request req = reqs.getRequestById(requestID, (List<Request>) session.getAttribute("listRequest"));
                if (req.getMenteeID() == userID) {
                    receiveID = req.getMentorID();
                } else {
                    receiveID = req.getMenteeID();
                }
                String reqId = subMsg[1];
                Cookie[] arr = request.getCookies();
                String txt = "";
                String num = "0";
                String cookieNotifyName = "notification" + receiveID;
                String cookieNewNotifyName = "newNotification" + receiveID;
                if (arr != null) {
                    for (Cookie o : arr) {
                        if (o.getName().equals(cookieNotifyName)) {
                            txt += o.getValue();
                            o.setMaxAge(0);
                            response.addCookie(o);
                        }
                    }
                }
                if (txt.isEmpty()) {
                    txt = reqId + ":" + "response" + ":" + userID + ":" + createAt;
                } else {
                    txt = txt + "/" + reqId + ":" + "response" + ":" + userID + ":" + createAt;
                }
                Cookie c = new Cookie(cookieNotifyName, txt);
                c.setMaxAge(60 * 60 * 24 * 2);
                response.addCookie(c);
                // xu ly cookie newNotify
                if (arr != null) {
                    for (Cookie o : arr) {
                        if (o.getName().equals(cookieNewNotifyName)) {
                            num = o.getValue();
                            o.setMaxAge(0);
                            response.addCookie(o);
                        }   
                    }
                }
                int numNewNotify = Integer.parseInt(num) + 1;
                Cookie c1 = new Cookie(cookieNewNotifyName, numNewNotify + "");
                c1.setMaxAge(60 * 60 * 24 * 2);
                response.addCookie(c1);
                request.setAttribute("resAlert2", "Response sent!");
            }
        } catch (NumberFormatException e) {
        }
        doGet(request, response);
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

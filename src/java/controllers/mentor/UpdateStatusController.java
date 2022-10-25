/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.mentor;

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

import java.util.List;
import model.Invitation;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UpdateStatusController", urlPatterns = {"/updateStatus"})
public class UpdateStatusController extends HttpServlet {

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
            out.println("<title>Servlet UpdateStatusController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateStatusController at " + request.getContextPath() + "</h1>");
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
    IInvitationService in = new InvitationService();
    int invID;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        //lay hashmap,list tu loadhome
        List<Invitation> inlist = (List<Invitation>) session.getAttribute("listInv");

        //lay info tu jsp
        String page = request.getParameter("page");
        String invIdRaw = request.getParameter("id");
        String type = request.getParameter("type");
        String getNrpp = request.getParameter("nrpp");
        int nrpp;
        if (getNrpp != null || "".equals(getNrpp)) {
            nrpp = Integer.parseInt(getNrpp);
        } else {
            nrpp = 3;
        }

        if (invIdRaw != null && type != null) {
            try {
                invID = Integer.parseInt(invIdRaw.trim());
                //lay invitation de update
                Invitation inv = in.getInvitationById(invID, inlist);
                // luu thong tin len cookie
                Cookie[] arr = request.getCookies();
                int menteeID = inv.getMenteeID();
                int mentorID = inv.getMentorID();
                LocalDate createAt = LocalDate.now();
                String txt = "";
                String num = "0";
                String cookieNotifyName = "notification" + menteeID;
                String cookieNewNotifyName = "newNotification" + menteeID;

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
                // lay du lieu notification vao txt

                if (arr != null) {
                    for (Cookie o : arr) {
                        if (o.getName().equals(cookieNotifyName)) {
                            txt += o.getValue();
                            o.setMaxAge(0);
                            response.addCookie(o);
                        }
                    }
                }

                if (type.equals("0")) {
                    //Reject
                    inv.setStatusID(4);
                    in.update(inv, inlist);
                    session.setAttribute("listInv", inlist);
                    if (txt.isEmpty()) {
                        txt = invID + ":" + "rejected" + ":" + mentorID + ":" + createAt;
                    } else {
                        txt = txt + "/" + invID + ":" + "rejected" + ":" + mentorID + ":" + createAt;
                    }
                    Cookie c = new Cookie(cookieNotifyName, txt);
                    c.setMaxAge(60 * 60 * 24 * 2);
                    response.addCookie(c);
                    if (page != null) {
                        response.sendRedirect(request.getContextPath() + "/invSingle?id=" + invID);
                    } else {
                        response.sendRedirect(request.getContextPath() + "/invitationMentor?nrpp=" + nrpp);
                    }
                }
                if (type.equals("1")) {
                    //accept
                    inv.setStatusID(1);
                    in.update(inv, inlist);
                    session.setAttribute("listInv", inlist);
                    //set cookie
                    if (txt.isEmpty()) {
                        txt = invID + ":" + "accepted" + ":" + mentorID + ":" + createAt;
                    } else {
                        txt = txt + "/" + invID + ":" + "accepted" + ":" + mentorID + ":" + createAt;
                    }
                    Cookie c = new Cookie(cookieNotifyName, txt);
                    c.setMaxAge(60 * 60 * 24 * 2);
                    response.addCookie(c);
                    if (page != null) {
                        response.sendRedirect(request.getContextPath() + "/invSingle?id=" + invID);
                    } else {
                        response.sendRedirect(request.getContextPath() + "/invitationMentor?nrpp=" + nrpp);
                    }
                }
                if (type.equals("2")) {
                    //close
                    inv.setStatusID(5);
                    in.update(inv, inlist);
                    session.setAttribute("listInv", inlist);
                    //set cookie
                    if (txt.isEmpty()) {
                        txt = invID + ":" + "closed" + ":" + mentorID + ":" + createAt;
                    } else {
                        txt = txt + "/" + invID + ":" + "closed" + ":" + mentorID + ":" + createAt;
                    }
                    Cookie c = new Cookie(cookieNotifyName, txt);
                    c.setMaxAge(60 * 60 * 24 * 2);
                    response.addCookie(c);
                    if (page != null) {
                        response.sendRedirect(request.getContextPath() + "/invSingle?id=" + invID);
                    } else {
                        response.sendRedirect(request.getContextPath() + "/invitationMentor?nrpp=" + nrpp);
                    }
                }
            } catch (IOException | NumberFormatException e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/invitationMentor");
        }
    }

    // ham luu thong tin cookie
    private void setNotification() {

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

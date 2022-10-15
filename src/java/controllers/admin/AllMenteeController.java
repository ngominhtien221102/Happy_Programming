/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.admin;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.PageInfor;
import model.User;
import model.UserProfile;
import service.IUserProfileService;
import service.IUserService;
import service.classimpl.UserProfileService;
import service.classimpl.UserService;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "AllMenteeController", urlPatterns = {"/allMentee"})
public class AllMenteeController extends HttpServlet {

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
            out.println("<title>Servlet AllMenteeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AllMenteeController at " + request.getContextPath() + "</h1>");
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
        List<User> uList = (List<User>) ses.getAttribute("listUser");
        List<UserProfile> upList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<UserProfile> menteeProfiles = getProfileOfMentee(upList, uList);
        IUserService iUser = new UserService();
        request.setAttribute("iUser", iUser);
        IUserProfileService iS = new UserProfileService();

        //Get total Mentee
        int toltal = menteeProfiles.size();
        request.setAttribute("total", toltal);
        //
        int mActive = 0;
        for (UserProfile m : menteeProfiles) {
            if (iUser.getUserById(m.getID(), uList).isStatus()) {
                mActive += 1;
            }
        }
        request.setAttribute("mActive", mActive);
        //

        //Get total mentor this month
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();

        int nMenteeThisMonth = 0;
        for (UserProfile userProfile : menteeProfiles) {
            String[] s = userProfile.getCreateAt().split("-");
            int m = Integer.parseInt(s[1]);
            if (m == month) {
                nMenteeThisMonth += 1;
            }
        }
        request.setAttribute("thisMonth", nMenteeThisMonth);

        int nMenteeLastMonth = 0;
        for (UserProfile userProfile : menteeProfiles) {
            String[] s = userProfile.getCreateAt().split("-");
            int m = Integer.parseInt(s[1]);
            if (m != month) {
                nMenteeLastMonth += 1;
            }
        }
        request.setAttribute("lastMonth", nMenteeLastMonth);

        float perGrowth = (float) (nMenteeThisMonth * 100) / nMenteeLastMonth;
        String percent = String.format("%.01f", perGrowth);
        request.setAttribute("percent", percent);

        //Ban or open
        String menteeID = request.getParameter("menteeID");
        try {
            int id = Integer.parseInt(menteeID);
            User user = new User();
            for (User u : uList) {
                if (u.getID() == id) {
                    user = u;
                }
            }
            iUser.update(new User(user.getID(), user.getRoleID(), user.getAccountName(), user.getPassWord(), !user.isStatus()), uList);
        } catch (NumberFormatException e) {
        }
        //Search
        List<UserProfile> listMentees = new ArrayList<>();
        String search = request.getParameter("search");
        request.setAttribute("search", search);
        if (search == null) {
            listMentees = menteeProfiles;
        } else {
            listMentees = iS.search(search, menteeProfiles);
        }
        //Phan trang
        String getNrpp = request.getParameter("nrpp");
        int nrpp = 5;
        if (getNrpp != null) {
            nrpp = Integer.parseInt(getNrpp);
        }
        request.setAttribute("nrpp", nrpp);

        int cp;

        String page = request.getParameter("page");
        if (page == null || page.equals("")) { // trang = null => page =1  
            cp = 1;
        } else {
            cp = Integer.parseInt(page);
        }
        PageInfor pageIf = new PageInfor(nrpp, listMentees.size(), cp);
        request.setAttribute("pageIf", pageIf);
        //Sort
        int sort = 1;
        request.setAttribute("sort", sort);
        String getSort = request.getParameter("sort");
        int sortGet = 0;
        if (getSort != null) {
            try {
                sortGet = Integer.parseInt(getSort);

            } catch (NumberFormatException e) {
            }

            if (sortGet == 1) {
                sort = 2;
                request.setAttribute("sort", sort);
                request.setAttribute("listMentee", iS.sortName(listMentees));
                int status = 1;
                request.setAttribute("status", status);
            }
            if (sortGet == 2) {
                request.setAttribute("listMentee", listMentees);
                sort = 1;
                request.setAttribute("sort", sort);
                int status = 2;
                request.setAttribute("status", status);
            }
        }

        request.setAttribute("listMentee", listMentees);
        request.getRequestDispatcher("views/admin/allMentee.jsp").forward(request, response);
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

    private List<UserProfile> getProfileOfMentee(List<UserProfile> upList, List<User> uList) {
        List<UserProfile> menteeProfile = new ArrayList<>();
        ArrayList<Integer> listID = new ArrayList<>();
        for (User user : uList) {
            if (user.getRoleID() == 2) {
                listID.add(user.getID());
            }
        }
        for (UserProfile u : upList) {
            if (listID.contains(u.getID())) {
                menteeProfile.add(u);
            }
        }
        return menteeProfile;

    }
}

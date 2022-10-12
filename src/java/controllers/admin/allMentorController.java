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
import static java.nio.file.Files.list;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import model.MentorCV;
import model.User;
import model.UserProfile;
import service.IRateService;
import service.IUserProfileService;
import service.IUserService;
import service.classimpl.RateService;
import service.classimpl.UserProfileService;
import service.classimpl.UserService;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "allMentorController", urlPatterns = {"/allMentorControl"})
public class allMentorController extends HttpServlet {

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
            out.println("<title>Servlet allMentorController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet allMentorController at " + request.getContextPath() + "</h1>");
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
        List<MentorCV> mList;
        mList = (List<MentorCV>) ses.getAttribute("listMentorCV");
        List<UserProfile> upList;
        upList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<UserProfile> mentorProfile = getProfileOfMentor(mList, upList);
        IRateService iRate = new RateService();
        request.setAttribute("iRate", iRate);
        IUserService iUser = new UserService();
        request.setAttribute("iUser", iUser);

        List<User> uList;
        uList = (List<User>) ses.getAttribute("listUser");

        //Get total Mentor
        int toltal = mList.size();
        request.setAttribute("total", toltal);

        //Get total mentor this month
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();

        int nMentorThisMonth = 0;
        for (UserProfile userProfile : mentorProfile) {
            String[] s = userProfile.getCreateAt().split("-");
            int m = Integer.parseInt(s[1]);
            if (m == month) {
                nMentorThisMonth += 1;
            }
        }
        request.setAttribute("thisMonth", nMentorThisMonth);

        int nMentorLastMonth = 0;
        for (UserProfile userProfile : mentorProfile) {
            String[] s = userProfile.getCreateAt().split("-");
            int m = Integer.parseInt(s[1]);
            if (m != month) {
                nMentorLastMonth += 1;
            }
        }
        request.setAttribute("lastMonth", nMentorLastMonth);

        float perGrowth = (float) (nMentorThisMonth * 100) / nMentorLastMonth;
        String percent = String.format("%.01f", perGrowth);

        request.setAttribute("percent", percent);

        //Ban or open account
        String mentorID = request.getParameter("mentorID");
        try {
            int id = Integer.parseInt(mentorID);
            User user = new User();
            for (User u : uList) {
                if (u.getID() == id) {
                    user = u;
                }
            }
            IUserService iU = new UserService();
            iU.update(new User(user.getID(), user.getRoleID(), user.getAccountName(), user.getPassWord(), !user.isStatus()), uList);
        } catch (Exception e) {
        }
        List<UserProfile> listMentor = new ArrayList<>();
        String search = request.getParameter("search");
        request.setAttribute("search", search);
        if (search == null) {
            listMentor = mentorProfile;
        } else {
            IUserProfileService iS = new UserProfileService();
            listMentor = iS.search(search);       
        }
        int sort = 1;
            request.setAttribute("sort", sort);
            String getSort = request.getParameter("sort");
            int sort1 = 0;

            if (getSort != null) {
                try {
                    sort1 = Integer.parseInt(getSort);

                } catch (Exception e) {
                }

                if (sort1 == 1) {
                    for (int i = 0; i < listMentor.size() - 1; i++) {
                        for (int j = i + 1; j < listMentor.size(); j++) {
                            if (listMentor.get(i).getFirstName().compareTo(listMentor.get(j).getFirstName()) > 0) {
                                Collections.swap(listMentor, i, j);
                            }
                        }
                    }
                    sort = 2;
                    request.setAttribute("sort", sort);
                    int statusSort = 1;
                    request.setAttribute("statusSort", statusSort);
                }
                if (sort1 == 2) {

                    for (int i = 0; i < listMentor.size() - 1; i++) {
                        float rate1 = (float) iRate.getRateByMentorID(listMentor.get(i).getID());
                        for (int j = i + 1; j < listMentor.size(); j++) {
                            float rate2 = (float) iRate.getRateByMentorID(listMentor.get(j).getID());
                            if (rate1 < rate2) {
                                Collections.swap(listMentor, i, j);
                            }
                        }
                    }
                    sort = 1;
                    request.setAttribute("sort", sort);
                    int statusSort = 2;
                    request.setAttribute("statusSort", statusSort);
                }
            }

        request.setAttribute("listMentor", listMentor);
        request.getRequestDispatcher("views/admin/allMentor.jsp").forward(request, response);

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

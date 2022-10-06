/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import model.Address;
import model.User;
import model.UserProfile;
import service.IAddressService;
import service.IUserProfileService;
import service.classimpl.AddressService;
import service.classimpl.UserProfileService;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "UpdateProfileController", urlPatterns = {"/updateProfile"})
@MultipartConfig
public class UpdateProfileController extends HttpServlet {

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
            out.println("<title>Servlet UpdateProfileController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProfileController at " + request.getContextPath() + "</h1>");
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
        IUserProfileService iU = new UserProfileService();
        User u = (User) ses.getAttribute("Account");
        IAddressService ia = new AddressService();
        List<UserProfile> uList;
        uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<Address> aList;
        aList = (List<Address>) ses.getAttribute("listAddress");
        UserProfile uP = iU.getUserProfileById(u.getID(), uList);
        Address a = ia.getAddressById(uP.getAddressID(), aList);
        request.setAttribute("u", uP);
        request.setAttribute("province", a.getTinh());
        request.setAttribute("district", a.getHuyen());
        request.setAttribute("ward", a.getXa());
        request.getRequestDispatcher("views/user/updateMenteeProfile.jsp").forward(request, response);

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
        HttpSession ses = request.getSession();
        IUserProfileService iU = new UserProfileService();
        User u = (User) ses.getAttribute("Account");
        IAddressService ia = new AddressService();
        List<UserProfile> uList;
        uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<Address> aList;
        aList = (List<Address>) ses.getAttribute("listAddress");
      
        UserProfile uP = iU.getUserProfileById(u.getID(), uList);
          Address aOld = ia.getAddressById(uP.getAddressID(), aList);
        String lastName = request.getParameter("lastName");
        String firstName = request.getParameter("firstName");
        String dob = request.getParameter("dob");
        String Email = request.getParameter("email");
        boolean gender = true;
        try {
            gender = Boolean.parseBoolean(request.getParameter("gender"));
        } catch (Exception e) {
        }
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        if(district == null)
        {
            district = aOld.getHuyen();
        }
        
        String ward = request.getParameter("ward");
        if(ward == null)
        {
            ward = aOld.getXa();
        }
        if (ia.getIDAddress(province, district, ward, aList) == 0) {
            request.setAttribute("Error1", "This address could not be found, please check the address again");
            UserProfile us = new UserProfile(u.getID(), firstName, lastName, uP.getAvatar() , uP.getEmail(), dob, uP.getAddressID(), gender, uP.getCreateAt());
            request.setAttribute("u", us);
            request.getRequestDispatcher("views/user/updateMenteeProfile.jsp").forward(request, response);
        }
        String uploadFolder = "D:\\Project_SE1628\\Happy_Programming\\web\\img\\avatar";
        Path uploadPath = Paths.get(uploadFolder);
        if (!Files.exists(uploadPath)) {
            Files.createDirectory(uploadPath);
        }
        Part imagePart = request.getPart("img");
        String imgname = "";
        if (imagePart == null) {
            imgname = "p" + u.getID() + ".png";
        }
        imgname = "p" + u.getID() + ".png";
        imagePart.write(uploadFolder + "/" + imgname);
        int addressID = ia.getIDAddress(province, district, ward, aList);
        UserProfile userProfile = new UserProfile(u.getID(), firstName, lastName, imgname, uP.getEmail(), dob, addressID, gender, uP.getCreateAt());
        String s = iU.update(userProfile, uList);
        request.setAttribute("u", userProfile);
        request.setAttribute("province", province);
        request.setAttribute("district", district);
        request.setAttribute("ward", ward);
        request.setAttribute("alert", s);
        request.getRequestDispatcher("views/user/updateMenteeProfile.jsp").forward(request, response);
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

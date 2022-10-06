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
import java.time.LocalDate;
import java.util.List;
import model.Address;
import model.User;
import model.UserProfile;
import service.IAddressService;
import service.IUserProfileService;
import service.classimpl.AddressService;
import service.classimpl.UserProfileService;
import util.Utility;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
/**
 *
 * @author Lenovo
 */
@WebServlet(name = "CreateProfileController", urlPatterns = {"/createProfile"})
@MultipartConfig
public class CreateProfileController extends HttpServlet {
    
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
            out.println("<title>Servlet AddProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddProductServlet at " + request.getContextPath() + "</h1>");
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
        
        response.sendRedirect("views/user/index.jsp");
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ses = request.getSession();
        IAddressService i = new AddressService();
        IUserProfileService iU = new UserProfileService();
        Utility ul = new Utility();
        User u = (User) ses.getAttribute("Account");
        List<UserProfile> uList;
        uList = (List<UserProfile>) ses.getAttribute("listUserProfile");
        List<Address> aList;
        aList = (List<Address>) ses.getAttribute("listAddress");
        List<UserProfile> upList;
        upList = (List<UserProfile>) ses.getAttribute("listUserProfile");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String Email = request.getParameter("email");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        boolean gender = true;
        try {
            gender = Boolean.parseBoolean(request.getParameter("gender"));
        } catch (Exception e) {
        }

        if (ul.checkEmailDup(Email, uList)) {
            request.setAttribute("Error", "Email already exists in the system, please re-enter email");
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("dob", dob);
            request.setAttribute("gender", gender);
            request.getRequestDispatcher("views/user/createMenteeProfile.jsp").forward(request, response);
        }
        if (i.getIDAddress(province, district, ward, aList) == 0) {
            request.setAttribute("Error1", "This address could not be found, please check the address again");
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("dob", dob);
            request.setAttribute("gender", gender);
            request.setAttribute("email", Email);
            request.getRequestDispatcher("views/user/createMenteeProfile.jsp").forward(request, response);
        }

        //Moi nguoi nho doi duong dan tren may moi nguoi nhe
            String uploadFolder = "D:\\Project_SE1628\\Happy_Programming\\web\\img\\avatar";
            Path uploadPath = Paths.get(uploadFolder);
            if (!Files.exists(uploadPath)) {
                Files.createDirectory(uploadPath);
            }
            Part imagePart = request.getPart("img");
            String imgname = "p" + u.getID() + ".png";
            imagePart.write(uploadFolder + "/" + imgname);

            int addressID = i.getIDAddress(province, district, ward, aList);
            LocalDate curDate = LocalDate.now();
            String date = curDate.toString();
            UserProfile newProfile = new UserProfile(u.getID(), firstName, lastName, imgname, Email, dob, addressID, gender, date);
            String message = iU.insert(newProfile, uList);
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

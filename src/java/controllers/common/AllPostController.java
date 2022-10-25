/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers.common;

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
import model.PageInfor;
import model.Post;
import service.IPostService;
import service.classimpl.PostService;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "AllPostController", urlPatterns = {"/allPost"})
public class AllPostController extends HttpServlet {

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
            out.println("<title>Servlet AllPostController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AllPostController at " + request.getContextPath() + "</h1>");
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
        HttpSession ses =request.getSession();
        IPostService ips = new PostService();
        List<Post> postList = (List<Post>) ses.getAttribute("listPost");
        List<Post> listPost = new ArrayList<>();
        String search = request.getParameter("search");
        request.setAttribute("search", search);
        if (search == null) {
            listPost = postList;
        } else {
            listPost = ips.searchList(search);
        }
        
        //Phan trang
        String getNrpp = request.getParameter("nrpp");
        int nrpp = 3;
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
        PageInfor pageIf = new PageInfor(nrpp, listPost.size(), cp);
        request.setAttribute("pageIf", pageIf);
        
        request.setAttribute("postList", listPost);
         request.getRequestDispatcher("views/common/blog.jsp").forward(request, response);
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

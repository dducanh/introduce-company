/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.newsDAO;
import dal.serviceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.News;
import model.Service;
import model.topicNews;

/**
 *
 * @author ADMIN
 */
public class searchNewsController extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try {
            
            //header
  serviceDAO serviceDAO = new serviceDAO();
        ArrayList<Service> service = serviceDAO.getService();
        request.setAttribute("service", service);
//header
            //right

            //right
            String txt = request.getParameter("txtSearch");
            String pageIndex = request.getParameter("index");
            if (pageIndex == null) {
                pageIndex = "1";
            }
            int index = Integer.parseInt(pageIndex);
            newsDAO newsDAO = new newsDAO();
            int total = newsDAO.count(txt);
            int pageSize = 3;
            int maxPage = total / pageSize;
            if (total % pageSize != 0) {
                maxPage++;
            }
            List<News> listSearch = newsDAO.search(txt, index, pageSize);
            request.setAttribute("list", listSearch);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("txt", txt);
            request.setAttribute("index", index);
             //right
            News top2News = newsDAO.getOneNewsByID(4);
            request.setAttribute("top2News", top2News);
             ArrayList<topicNews> listTopic = newsDAO.getTopic();
            request.setAttribute("listTopic", listTopic);
            //right

            request.getRequestDispatcher("searchNews.jsp").forward(request, response);
        } catch (Exception e) {
            e.getMessage();
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(searchNewsController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(searchNewsController.class.getName()).log(Level.SEVERE, null, ex);
        }
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

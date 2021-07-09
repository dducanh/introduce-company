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
public class searchByTopicController extends HttpServlet {

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
        //header
        serviceDAO serviceDAO = new serviceDAO();
        ArrayList<Service> service = serviceDAO.getService();
        request.setAttribute("service", service);
//header

        newsDAO newsDAO = new newsDAO();
//right
        News top2News = newsDAO.getOneNewsByID(4);
        request.setAttribute("top2News", top2News);
        ArrayList<topicNews> listTopic = newsDAO.getTopic();
        request.setAttribute("listTopic", listTopic);

//right
        String id = request.getParameter("id");

        int topicID = 1;
        try {
            topicID = Integer.parseInt(id);
        } catch (Exception e) {
            topicID = 1;
        }

        String page_index = request.getParameter("txtPage");
        if (page_index == null) {
            page_index = "1";
        }
        int pageIndex = Integer.parseInt(page_index);

        int pageSize = 3;
        int rowCount = newsDAO.countTopic(topicID);
        int maxPage = rowCount / pageSize;
        if (rowCount % pageSize != 0) {
            maxPage = maxPage + 1;
        }

        ArrayList<News> listMews = newsDAO.getAllNewsByTopic(topicID, pageIndex, pageSize);

        request.setAttribute("listMews", listMews);
         request.setAttribute("maxPage", maxPage);
        request.setAttribute("topicID", topicID);
        request.setAttribute("pageIndex", pageIndex);
        request.setAttribute("activeList", "activeList");
        request.getRequestDispatcher("searchNewByTopic.jsp").forward(request, response);
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
            Logger.getLogger(searchByTopicController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(searchByTopicController.class.getName()).log(Level.SEVERE, null, ex);
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

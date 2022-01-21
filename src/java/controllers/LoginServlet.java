/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.User;
import entities.UserLogin;
import helper.GetVariable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import repositories.UserRepository;

/**
 *
 * @author kaine
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected boolean processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        GetVariable gv = new GetVariable(request);
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
        String username = gv.getString("username", "Username", 30, 8, null);
        String password = gv.getString("password", "Password", 30, 6, null);
        String messageError = "";
        UserRepository ad = new UserRepository();
        UserLogin ul = ad.checkLoginAccounts(username, password);
        if (ul == null) {
            messageError = "Incorrect account or password!!!";
            request.setAttribute("messageError", messageError);
            return false;
        } else {
            request.setAttribute("info", username + password);
            return true;
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/JSP/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (processRequest(request, response)) {
            response.sendRedirect("IndexServlet");
            return;
        }
        request.getRequestDispatcher("WEB-INF/JSP/login.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

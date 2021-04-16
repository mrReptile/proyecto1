/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User;
import dao.UserDAO;
import helper.AppHelper;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author repti
 */
@WebServlet(name = "Recuperar_2", urlPatterns = {"/recuperar_2", "/enviarRecuperar"})
public class Recuperar_2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

        request.getRequestDispatcher("/WEB-INF/recuperar_2.jsp").forward(request, response);

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

        switch (request.getServletPath()) {
            case "/enviarRecuperar":

                HttpSession session;
                session = request.getSession(false);
                User usuario = (User) session.getAttribute("user");

                String correo = usuario.getCorreo();
                String password = request.getParameter("nuevoPassword");

                UserDAO userDao = new UserDAO();

                try {
                    if(userDao.cambiarContra(correo, password) == true){
                        response.sendRedirect(AppHelper.baseUrl() + "plataforma");
                    }
                    else{
                        response.sendRedirect(AppHelper.baseUrl() + "plataforma");
                    }

                } catch (SQLException | ClassNotFoundException ex) {
                    throw new ServletException(ex);
                }

                break;
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

package controllers;

import helper.AppHelper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Plataforma", urlPatterns = {"/plataforma"})
public class Plataforma extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession(false);
        if(session == null || session.getAttribute("user") == null) {
            response.sendRedirect(AppHelper.baseUrl() + "login");
        }
        else {
            request.getRequestDispatcher("/WEB-INF/plataforma.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession(false);
        if(session == null || session.getAttribute("user") == null) {
            response.sendRedirect(AppHelper.baseUrl() + "login");
            return;
        }
    }
}

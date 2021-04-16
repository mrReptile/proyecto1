package controllers;

import dao.Curso;
import dao.User;
import dao.Venta;
import dao.VentaDAO;
import helper.AppHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet(name = "MisCursos", urlPatterns = {"/mis_cursos", "/cargar_compras"})
public class MisCursos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession(false);
        if(session == null || session.getAttribute("user") == null) {
            response.sendRedirect(AppHelper.baseUrl() + "login");
        }
        else {
            request.getRequestDispatcher("/WEB-INF/miscursos.jsp").forward(request, response);
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
        
        JSONObject json;
        VentaDAO ventaDAO = new VentaDAO();
        
        switch (request.getServletPath()) {
            case "/cargar_compras" :
                List<Venta> ventas;
                json = new JSONObject();
                User user = (User) session.getAttribute("user");
                JSONArray ventasJSON = new JSONArray();
                
                int id_usuario = user.getId();
                
                 try {
                    ventas = ventaDAO.obtenerVentas(id_usuario);
                     
                    if(ventas.size()>=1) {
                        json.put("resultado", true);
                        
                        for (Venta ventaActual : ventas) {
                            JSONObject ventajson = new JSONObject();
                            ventajson.put("id_venta", ventaActual.getId_curso());
                            ventajson.put("id_curso", ventaActual.getId_curso());
                            ventajson.put("fecha_venta", ventaActual.getFecha_venta());
                            ventajson.put("id_usuario", ventaActual.getId_usuario());
                            ventasJSON.put(ventajson);
                        }
                        
                        json.put("ventas", ventasJSON);
                    }
                    else {
                        json.put("resultado", false);
                    }
                } catch (SQLException | ClassNotFoundException ex) {
                    Logger.getLogger(AdminCursos.class.getName()).log(Level.SEVERE, null, ex);
                    json.put("resultado", false);
                    json.put("error", ex.getMessage());
                } finally {
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    PrintWriter out = response.getWriter(); 
                    out.print(json);
                    out.flush();
                }
                break;
        }
        
        
    }
}

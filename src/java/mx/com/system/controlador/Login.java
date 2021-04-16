/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mx.com.system.modelo.AdmonUsuarios;
import mx.com.system.modelo.beans.Usuarios;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        AdmonUsuarios aEstudiantes = new AdmonUsuarios();
        try {
            Usuarios estudiante = aEstudiantes.buscarUsuario(request.getParameter("id_usuario"), request.getParameter("contrasenia"),request.getParameter("roles"));
            if(estudiante != null) {
              int rol=Integer.parseInt(request.getParameter("roles"));
              if(rol==1){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", estudiante);
                request.getRequestDispatcher("html/covoMostrar_Sub.jsp").forward(request, response);
              }else if(rol==2){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", estudiante);
                request.getRequestDispatcher("html/Bienvenidojefe.jsp").forward(request, response);
              }else if(rol==3){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", estudiante);
                request.getRequestDispatcher("html/BienvenidoAsesor.jsp").forward(request, response);
              }else if(rol==4){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", estudiante);
                request.getRequestDispatcher("html/covoMostrar.jsp").forward(request, response);
              }
                
            }else{
            request.getRequestDispatcher("html/indexerror.jsp").forward(request, response);
            
            }
        } catch (Exception ex) {
            request.setAttribute("msjError", "Error en el proceso de Ingresar.\n" + ex.getMessage());
            request.getRequestDispatcher("html/error.jsp").forward(request, response);      
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
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import mx.com.system.modelo.*;
import mx.com.system.modelo.beans.*;

/**
 *
 * @author ADMINISTRADORR
 */
@WebServlet(name = "DivicionesServlet", urlPatterns = {"/DivicionesServlet"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class DivicionesServlet extends HttpServlet {

   
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
        String clave = request.getParameter("clave"); 
        AdmonProductos admonProductos;
            AdmonUsuarios admonUsuarios;
            AdmonConvocatorias admonConvocatorias;
            Usuarios usuario;
            productos_titulacion productos_titulacion;
            CarrerasDao carrerasDao;
            PlanesDao planesDao;
            Divisiones divisiones;
            ArrayList<Divisiones> listaCarrera;
            ArrayList<Usuarios> listaUsuarios;
            ArrayList<Convocatoriass> listaConvocatorias;
            ArrayList<Planes_Est> listaPlanes;
           Iterator iterador;
        
         try (PrintWriter out = response.getWriter()) {
         try {
          
            switch (clave) {

                case "Divisiones":
                    request.getRequestDispatcher("html/Divisiones.jsp").forward(request, response);
                    break;
                case "AgregarDiv":
                    request.getRequestDispatcher("html/NuevaDivision.jsp").forward(request, response);
                break;
                case "NuevaDivicion":
                    carrerasDao = new CarrerasDao();
                    divisiones = new Divisiones();
                    try {                       
                    divisiones.setIdDivisiones(request.getParameter("idD"));
                    divisiones.setNombre(request.getParameter("Nom"));
                    carrerasDao.registrarDivisiones(divisiones);
                    request.setAttribute("divisiones", divisiones);
                    request.getRequestDispatcher("html/Divisiones.jsp").forward(request, response);
                    } catch (Exception e) {
                        request.setAttribute("msjError", "Error en mandar los datos de Division*******************************.\n\n\n\n\n\n" + e.getMessage());
                        request.getRequestDispatcher("html/error.jsp").forward(request, response);
                    }

                    
                    break;
                   
                    case "VisiualizarAnteproyecto":
                     admonProductos = new AdmonProductos();
                    productos_titulacion = new productos_titulacion();
                    
                    try {                       
                    productos_titulacion.setNombre(request.getParameter("Nom"));
                    productos_titulacion.setId_usuario(request.getParameter("Usu"));
                    productos_titulacion.setConvocatoria_idConvocatoria(request.getParameter("Convo"));
                    productos_titulacion.setIdTipo_P("1");
                    admonProductos.registrarAnteproyecto(productos_titulacion);
                    request.setAttribute("productos_titulacion", productos_titulacion);
                    request.getRequestDispatcher("html/Convocatorias.jsp").forward(request, response);
                    } catch (Exception e) {
                        request.setAttribute("msjError", "Error en mandar los datos*******************************.\n\n\n\n\n\n" + e.getMessage());
                        request.getRequestDispatcher("html/error.jsp").forward(request, response);
                    }

                    
                    break;
                case "cancelar":
                    
                    request.getRequestDispatcher("html/Convocatorias.jsp").forward(request, response);
                    break;
                /**
                 * case "eliminarEstudiante": admonEstudiantes = new
                 * AdmonEstudiantes(); usuario = new Estudiantes();
                 * usuario.setMatricula(request.getParameter("matricula"));
                 * admonEstudiantes.eliminarEstudiantes(usuario);
                 * request.getRequestDispatcher("Vista/inicio.jsp").forward(request,
                 * response); break; case "modificarEstudiante": carrerasDado =
                 * new CarrerasDao(); listaCarrera =
                 * carrerasDado.buscarCarreras();
                 * request.setAttribute("listaCarrera", listaCarrera);
                 * admonEstudiantes = new AdmonEstudiantes(); usuario = new
                 * Estudiantes();
                 * usuario.setMatricula(request.getParameter("matricula"));
                 * usuario = admonEstudiantes.buscarEstudiantes(usuario);
                 * request.setAttribute("estudiante", usuario);
                 * request.getRequestDispatcher("Vista/modificar.jsp").forward(request,
                 * response); break; case "actualizarEstudiante":
                 * admonEstudiantes = new AdmonEstudiantes(); usuario = new
                 * Estudiantes();
                 * usuario.setMatricula(request.getParameter("matricula"));
                 * usuario.setNombres(request.getParameter("nombres"));
                 * usuario.setApPaterno(request.getParameter("apPaterno"));
                 * usuario.setApMaterno(request.getParameter("apMaterno"));
                 * usuario.setIdCarrera(Integer.parseInt(request.getParameter("idCarrera")));
                 * admonEstudiantes.actualizarEstudiantes(usuario);
                 * request.getRequestDispatcher("Vista/inicio.jsp").forward(request,
                 * response);
                    break;
                 */
            }
        } catch (Exception ex) {
            request.setAttribute("msjError", "Error en DivicionesServlet*******************************.\n\n\n\n\n\n" + ex.getMessage());
            request.getRequestDispatcher("html/error.jsp").forward(request, response);
        }
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

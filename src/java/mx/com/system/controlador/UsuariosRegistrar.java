/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.controlador;

import java.io.IOException;
import static java.lang.System.out;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import mx.com.system.modelo.AdmonUsuarios;
import mx.com.system.modelo.CarrerasDao;
import mx.com.system.modelo.PlanesDao;
import mx.com.system.modelo.beans.Divisiones;
import mx.com.system.modelo.beans.Planes_Est;
import mx.com.system.modelo.beans.Usuarios;

@WebServlet(name = "EstudiantesRegistrar", urlPatterns = {"/EstudiantesRegistrar"})
public class UsuariosRegistrar extends HttpServlet {

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
        try {
            AdmonUsuarios admonEstudiantes;
            Usuarios usuario;
            CarrerasDao carrerasDado;
            PlanesDao planesDado;
            ArrayList<Divisiones> listaCarrera;
            ArrayList<Planes_Est> listaPlanes;
            switch (clave) {
                case "listarCarreras":
                    planesDado = new PlanesDao();
                    carrerasDado = new CarrerasDao();
                    listaPlanes = planesDado.buscarPlanes();
                    request.setAttribute("listaPlanes", listaPlanes);
                    listaCarrera = carrerasDado.buscarCarreras();
                    request.setAttribute("listaCarrera", listaCarrera);
                    request.getRequestDispatcher("html/Registros.jsp").forward(request, response);
                    break;
                case "RegistrarEstudiante":
                    admonEstudiantes = new AdmonUsuarios();
                    usuario = new Usuarios();
                    usuario.setId_usuario(request.getParameter("U"));
                    usuario.setNombres(request.getParameter("N"));
                    usuario.setApellido_paterno(request.getParameter("AP"));
                    usuario.setApellido_materno(request.getParameter("AM"));
                    usuario.setContrasenia(request.getParameter("C"));
                    usuario.setIdRoles(4);
                    usuario.setIdDivisiones(request.getParameter("idCarrera"));
                    usuario.setTelefono(request.getParameter("T"));
                    usuario.setEmail(request.getParameter("E"));
                    usuario.setId_Plan(Integer.parseInt(request.getParameter("pestudios")));
                    admonEstudiantes.registrarEstudiantes(usuario);
                    request.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                case "RegistrarAsesor":
                    admonEstudiantes = new AdmonUsuarios();
                    usuario = new Usuarios();
                    usuario.setId_usuario(request.getParameter("U"));
                    usuario.setNombres(request.getParameter("N"));
                    usuario.setApellido_paterno(request.getParameter("AP"));
                    usuario.setApellido_materno(request.getParameter("AM"));
                    usuario.setContrasenia(request.getParameter("C"));
                    usuario.setIdRoles(3);
                    usuario.setIdDivisiones(request.getParameter("idCarrera"));
                    usuario.setTelefono(request.getParameter("T"));
                    usuario.setEmail(request.getParameter("E"));
                    usuario.setId_Plan(0);
                    admonEstudiantes.registrarEstudiantes(usuario);
                    request.getRequestDispatcher("html/indexexito.jsp").forward(request, response);
                    break;
                case "RegistrarJefe":
                    admonEstudiantes = new AdmonUsuarios();
                    usuario = new Usuarios();
                    usuario.setId_usuario(request.getParameter("U"));
                    usuario.setNombres(request.getParameter("N"));
                    usuario.setApellido_paterno(request.getParameter("AP"));
                    usuario.setApellido_materno(request.getParameter("AM"));
                    usuario.setContrasenia(request.getParameter("C"));
                    usuario.setIdRoles(2);
                    usuario.setIdDivisiones(request.getParameter("idCarrera"));
                    usuario.setTelefono(request.getParameter("T"));
                    usuario.setEmail(request.getParameter("E"));
                    usuario.setId_Plan(0);
                    admonEstudiantes.registrarEstudiantes(usuario);
                    request.getRequestDispatcher("html/indexexito.jsp").forward(request, response);
                    break;
                case "RegistrarSubdirector":
                    admonEstudiantes = new AdmonUsuarios();
                    usuario = new Usuarios();
                    usuario.setId_usuario(request.getParameter("U"));
                    usuario.setNombres(request.getParameter("N"));
                    usuario.setApellido_paterno(request.getParameter("AP"));
                    usuario.setApellido_materno(request.getParameter("AM"));
                    usuario.setContrasenia(request.getParameter("C"));
                    usuario.setIdRoles(1);
                    usuario.setIdDivisiones(request.getParameter("idCarrera"));
                    usuario.setTelefono(request.getParameter("T"));
                    usuario.setEmail(request.getParameter("E"));
                    usuario.setId_Plan(0);
                    admonEstudiantes.registrarEstudiantes(usuario);

                    request.getRequestDispatcher("html/indexexito.jsp").forward(request, response);
                    break;
                case "cerrarSesion":
                    HttpSession sesion = request.getSession();
                    sesion.invalidate();
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                case "modificarUsuario":
                    planesDado = new PlanesDao();
                    carrerasDado = new CarrerasDao();
                    listaPlanes = planesDado.buscarPlanes();
                    request.setAttribute("listaPlanes", listaPlanes);
                    listaCarrera = carrerasDado.buscarCarreras();
                    request.setAttribute("listaCarrera", listaCarrera);
                    request.getRequestDispatcher("html/perfil.jsp").forward(request, response);
                    break;
                /**
                 * case "eliminarEstudiante": admonEstudiantes = new
                 * AdmonEstudiantes(); usuario = new Estudiantes();
                 * usuario.setMatricula(request.getParameter("matricula"));
                 * admonEstudiantes.eliminarEstudiantes(usuario);
                 * request.getRequestDispatcher("Vista/inicio.jsp").forward(request,
                 * response); break;
                 **/
                 case "actualizarUsuario":
                    admonEstudiantes = new AdmonUsuarios();
                    usuario = new Usuarios();
                    usuario.setId_usuario(request.getParameter("U"));
                    usuario.setNombres(request.getParameter("N"));
                    usuario.setApellido_paterno(request.getParameter("AP"));
                    usuario.setApellido_materno(request.getParameter("AM"));
                    usuario.setContrasenia(request.getParameter("C"));
                    usuario.setIdRoles(4);
                    usuario.setIdDivisiones(request.getParameter("idCarrera"));
                    usuario.setTelefono(request.getParameter("T"));
                    usuario.setEmail(request.getParameter("E"));
                    usuario.setId_Plan(Integer.parseInt(request.getParameter("pestudios")));
                    admonEstudiantes.actualizarEstudiantes(usuario); 
                    sesion = request.getSession();
                    sesion.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("html/covoMostrar.jsp").forward(request, response);
                    break;
                 
            }
        } catch (Exception ex) {
            request.setAttribute("msjError", "Error en el preceso de Usuario*******************************.\n" + ex.getMessage());
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

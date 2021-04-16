/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.controlador;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import mx.com.system.modelo.AdmonConvocatorias;
import mx.com.system.modelo.AdmonUsuarios;
import mx.com.system.modelo.beans.Convocatoriass;

/**
 *
 * @author hecdanhdzgrc
 */
 @MultipartConfig 
@WebServlet(name = "BuscarConvoca", urlPatterns = {"/BuscarConvoca"})
public class Mostrar extends HttpServlet {

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
        AdmonConvocatorias aConvocatoria = new AdmonConvocatorias();
        ArrayList<Convocatoriass> listaConvocatorias;
        String clave = request.getParameter("clave");
          HttpSession sesion;
          AdmonConvocatorias admonConvocatorias;
          Convocatoriass convocatoriass;
            
       try {
            switch(clave) {
            case "buscarConvoca":
                 sesion = request.getSession();
                request.getRequestDispatcher("html/Convocatorias.jsp").forward(request, response);
              break;
            
            case "NuevaConvoca":
                 sesion = request.getSession();
                request.getRequestDispatcher("html/convocatoriaRegistrar.jsp").forward(request, response);
              break;
            case "cancelar":
                 sesion = request.getSession();
               request.getRequestDispatcher("html/covoMostrar_Sub.jsp").forward(request, response);
              break;
          
            case "cargarConvoca":
               admonConvocatorias=new AdmonConvocatorias();
               convocatoriass=new Convocatoriass();
               InputStream inputStream =null;
               sesion = request.getSession();
                System.out.println("HOLLLLLLLLLLLLLLLLLLLLLLLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
                        try {
                        Part filePart = request.getPart("fichero");
                        if (filePart.getSize() > 0) {
                            System.out.println(filePart.getName());
                            System.out.println(filePart.getSize());
                            System.out.println(filePart.getContentType());
                           inputStream = filePart.getInputStream();
                        }
                    } catch (Exception ex) {
                        System.out.println("fichero: " + ex.getMessage());
                    }
                try { 
               convocatoriass.setIdConvocatoria(request.getParameter("idCon"));
               convocatoriass.setNombre(request.getParameter("Nom"));
               convocatoriass.setEstado(request.getParameter("Estado"));
               convocatoriass.setArchivopdf(inputStream);
               admonConvocatorias.registrarConvocatorias(convocatoriass);
               request.getRequestDispatcher("html/covoMostrar_Sub.jsp").forward(request, response);
               } catch (Exception e) {
                        request.setAttribute("msjError", "Error en mandar los datos de la convocatoria.\n\n\n\n\n\n" + e.getMessage());
                        request.getRequestDispatcher("html/error.jsp").forward(request, response);
                    }

            break;
            }
        } catch (Exception ex) {
            request.setAttribute("msjError", ex.getMessage());
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

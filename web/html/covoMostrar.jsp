<%-- 
    Document   : covoMostrar
    Created on : 27/11/2020, 12:23:33 AM
    Author     : lizzb
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.productos_titulacion"%>
<%@page import="mx.com.system.modelo.AdmonProductos"%>
<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Convocatorias</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/cssConvocatoriasA.css">

    </head>
    <body >
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
            AdmonProductos admonProdu = new AdmonProductos();
            productos_titulacion productos = new productos_titulacion();
            ArrayList<productos_titulacion> listaProductos = admonProdu.buscarProductos();
        %>
        <div id="contenedor">
             <header id="encabezado"> 
                 <img src="imagenes/tecBlanco.png" height="80" width="120" align="left" > 
                <img src="imagenes/itsoehBlanco.png" height="50" width="120" align="right" class="logos" > 
                <center><h1 style="color: white"><br>Instituto Tecnologico Superior  del Occidente del Estado de Hidalgo</h1>
                    <h2 style="color: white" >Aplicacion Web para el proceso de Titulacion (AWProTi)</h2>
                </center>
            </header>
          <nav>
                <ul>
                    <li> <form method="post" action="BuscarConvoca" >
                            <input type="hidden" name="clave" value="buscarConvoca" />
                            <input type="submit" value="Convocatorias"  class="encabe" />
                        </form>
                    </li>                
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Producto</a>
                        <div class="dropdown-content">
                            <a href="html/anteproyecto.jsp">Anteproyecto</a>
                            <a href="html/ProductoDeTitulacionRequisitos.jsp">Registro</a>
                            <a href="html/producto_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Protocolo</a>
                        <div class="dropdown-content">
                            <a href="html/protocolo_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li> <form method="post" action="EstudiantesRegistrar" >
                            <input type="hidden" name="clave" value="modificarUsuario" />
                            <input type="submit" value="Perfil" class="encabe" />
                        </form> </li>
                </ul>
            </nav>
            <section id="contenido" onload="buscaracciones()">
                <article>
                    <center>
                        <br>
                        <h2>Bienvenido </h2>
                        <h3>Alumno</h3> <h3><%= usuario.getNombres()%> <%= usuario.getApellido_paterno()%></h3>
                        <br> <br>
                        
                    </center>
                </article><center> 

                    </form>  
                    </form></center></section>
            <aside>

                <center>
                    
                    <img src="imagenes/jejejeME.png"  height="100" width="100" ><br>
                    <h3><%= usuario.getNombres()%> <%= usuario.getApellido_paterno()%></h3><br>
                    <form method="post" action="EstudiantesRegistrar" >
                        <input type="hidden" name="clave" value="cerrarSesion" />
                        <input type="submit" value="Cerrar Sesión" class="button" />
                    </form>        
                </center>
            </aside>
                    <br><br>
            <footer id="base">
                <center>
              <img src="imagenes/nofusion.png"  height="80" width="150">
                </center>
            </footer>
        </div>
    </body>
</html>
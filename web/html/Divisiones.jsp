<%-- 
    Document   : RegistroDivisiones
    Created on : 27/03/2021, 05:20:11 PM
    Author     : pc
--%>

<%@page import="mx.com.system.controlador.DivicionesServlet"%>
<%@page import="mx.com.system.modelo.beans.Convocatoriass"%>
<%@page import="mx.com.system.modelo.AdmonConvocatorias"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.productos_titulacion"%>
<%@page import="mx.com.system.modelo.AdmonProductos"%>
<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page import="mx.com.system.modelo.beans.Divisiones"%>
<%@page import="mx.com.system.modelo.CarrerasDao"%>
<%@page import="mx.com.system.modelo.AdmonUsuarios"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Convocatorias</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/RegisDivisionesCss.css">
    </head>
    <body >
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");

            AdmonConvocatorias emp = new AdmonConvocatorias();
            Convocatoriass pdfvo = new Convocatoriass();
            ArrayList<Convocatoriass> listarConvo = emp.buscarConvoca();

            AdmonUsuarios jefAdm = new AdmonUsuarios();
            Usuarios jefes = new Usuarios();
            ArrayList<Usuarios> listJef = jefAdm.buscarJefeDeCarreraMD();

            CarrerasDao carrera = new CarrerasDao();
            Divisiones divicio = new Divisiones();
            ArrayList<Divisiones> listDivi = carrera.buscarCarreras();
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
                    <li> <form method="post" action="BuscarDivisiones" >
                            <input type="hidden" name="clave" value="buscarDivisiones" />
                            <input type="submit" value="Divisiones"  class="encabe" />
                        </form>
                    </li>
                    <li> <form method="post" action="BuscarJefes" >
                            <input type="hidden" name="clave" value="buscarJefes" />
                            <input type="submit" value="Jefes de Carrera"  class="encabe" />
                        </form>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Docentes</a>
                        <div class="dropdown-content">
                            <a href="html/anteproyecto.jsp">Información</a>
                            <a href="html/ProductoDeTitulacionRequisitos.jsp">Asignaciones</a>

                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Productos</a>
                        <div class="dropdown-content">
                            <a href="html/anteproyecto.jsp">Anteproyectos</a>
                            <a href="html/ProductoDeTitulacionRequisitos.jsp">Registrados</a>
                            <a href="html/producto_requisitos.jsp">Protocolos</a>
                        </div>
                    </li>
                    <li> <form method="post" action="Estudiantes" >
                            <input type="hidden" name="clave" value="Estudiantes" />
                            <input type="submit" value="Estudiantes"  class="encabe" />
                        </form>
                    </li>
                    <li> <form method="post" action="EstudiantesRegistrar" >
                            <input type="hidden" name="clave" value="modificarUsuario" />
                            <input type="submit" value="Perfil" class="encabe" />
                        </form> </li>
                </ul>
            </nav>
            <section id="contenido" onload="buscaracciones()">
                <article >
                    <center>
                        <br>

                        <h3>Divisiones</h3>
                        <br> <br>
                        <div id="Productos" >

                            <table id="customers">                         
                                <thead>
                                    <tr>
                                        <th>Clave</th>
                                        <th>Nombre</th>
                                        <th>Jefe</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>            
                                <tfoot>
                                    <tr>
                                        <td colspan="5">
                                            <div id="paging">
                                                <ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                                            </div>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <%  if (listDivi.size() > 0) {
                                            for (Divisiones listar2 : listDivi) {
                                                divicio = listar2;
                                    %>
                                    <tr>
                                        <td><%=divicio.getIdDivisiones()%></td>
                                        <td><%=divicio.getNombre()%></td>
                                        <td>
                                            <%  if (listJef.size() > 0) {
                                                    for (Usuarios listar3 : listJef) {
                                                        jefes = listar3;
                                                        if (jefes.getIdDivisiones().equals(divicio.getIdDivisiones())) {
                                            %>
                                            <%=jefes.getNombres()%>
                                            <%
                                            } else {
                                            %>
                                            <a>No cuenta con Jefe de carrera</a>
                                            <%
                                                        }
                                                    }
                                                }
                                            %>
                                        </td>
                                        <td>
                                            <a href="pdf?id=<%=divicio.getIdDivisiones()%>" target="_blank">  <input type="submit" value="Modificar" class="button" />
                                            </a>
                                            <a href="pdf?id=<%=divicio.getIdDivisiones()%>" target="_blank">  <input type="submit" value="Eliminar" class="button" />
                                            </a>
                                        </td>
                                    </tr>  
                                    <%
                                            }
                                        }
                                    %>
                                </tbody>

                            </table> 

                            <form method="post" action="DivicionesServlet" >
                                <input type="hidden" name="clave" value="AgregarDiv" />
                                <input type="submit" value="Nuevo"  class="button" />
                            </form> 

                        </div>
                        <br>

                    </center>
                </article><center> 
                    </form>  
                    </form></center></section>
            <aside>

                <center>
                    <br><br><br><br><br><br>
                    <img src="imagenes/jejejeME.png"  height="100" width="100" ><br>
                    <h3><%= usuario.getNombres()%> <%= usuario.getApellido_paterno()%></h3><br>
                    <form method="post" action="EstudiantesRegistrar" >
                        <input type="hidden" name="clave" value="cerrarSesion" />
                        <input type="submit" value="Cerrar Sesión"  class="cerrarSesion"/>
                    </form> 
                    <br><br><br><br><br><br>
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
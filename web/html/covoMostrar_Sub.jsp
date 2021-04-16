<%-- 
    Document   : covoMostrar_Sub
    Created on : 9/03/2021, 08:14:12 PM
    Author     : JesusMJ
--%>

<%@page import="mx.com.system.modelo.beans.Convocatoriass"%>
<%@page import="mx.com.system.modelo.AdmonConvocatorias"%>
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
        <link  rel="stylesheet" type="text/css" href="html/css/cssConvocatoriasP.css">
    </head>
    <body >
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
            AdmonConvocatorias emp = new AdmonConvocatorias();
            Convocatoriass pdfvo = new Convocatoriass();
            ArrayList<Convocatoriass> listarConvo = emp.buscarConvoca();
           
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
                    <li> <form method="post" action="DivicionesServlet" >
                            <input type="hidden" name="clave" value="Divisiones" />
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
                        <h2>Bienvenido </h2>
                        <h3>Convocatorias</h3>
                        <br> <br>
                        <div id="Productos" >

                            <table id="customers">                         
                            <thead>
                                <tr>
                                    <th>Clave</th>
                                    <th>Nombre</th>
                                    <th>Estado</th>
                                    <th>Documento</th>
                                    <th>Acciones</th>
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
                                <%  if (listarConvo.size() > 0) {
                                        for (Convocatoriass listar2 : listarConvo) {
                                            pdfvo = listar2;
                                %>
                                <tr>
                                    <td><%=pdfvo.getIdConvocatoria()%></td>
                                    <td><%=pdfvo.getNombre()%></td>
                                    <td><%=pdfvo.getEstado()%></td>
                                    <td>
                                        <%
                                            if (pdfvo.getArchivopdf2() != null) {
                                        %>
                                        <a href="pdf?id=<%=pdfvo.getIdConvocatoria()%>" target="_blank">  <input type="submit" value="Ver" class="button" />
                                        </a>
                                        <%
                                            } else {
                                                out.print("Vacio");
                                            }
                                        %>

                                    </td>
                                       <td>
                                        <form method="post" action="ProductosServlet" >
                                            <input type="hidden" name="clave" value="Registrar" />
                                            <input type="hidden" name="id_Convo" value="<%=pdfvo.getIdConvocatoria()%>" />
                                            <input type="submit" value="Modificar" class="button"  />
                                        </form>   
                                    </td>
                                </tr>  
                                <% 
                                            
                                        }
                                    }
                                %>
                            </tbody>


                        </table>
                            <form method="post" action="BuscarConvoca" >
                        <input type="hidden" name="clave" value="NuevaConvoca"/>
                        <input type="submit" value="Nueva" class="nuevo" aling="right" />
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
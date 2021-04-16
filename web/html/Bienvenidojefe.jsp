<%-- 
    Document   : Bienvenidojefe
    Created on : 27/03/2021, 05:32:04 PM
    Author     : pc
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
        <link  rel="stylesheet" type="text/css" href="html/css/Bienvenidojefecss.css">
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
                     <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Productos registrados</a>
                        <div class="dropdown-content">
                            <a href="">Anteproyectos</a>
                            <a href="">Asignaciones</a>
                        </div>
                    </li>
                     <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Productos Asesorados</a>
                        <div class="dropdown-content">
                            <a href="">Registros</a>
                            <a href="">Requisitos</a>
                        </div>
                    </li>
                     <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Protocolos</a>
                        <div class="dropdown-content">
                            <a href="">Requisitos</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Docentes</a>
                        <div class="dropdown-content">
                            <a href="html/anteproyecto.jsp">Registros</a>
                            <a href="html/ProductoDeTitulacionRequisitos.jsp">Detalles</a>
                            
                        </div>
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
                       
                        <h3>Bienvenido jefe de Division</h3>
                        <br> <br>
                        <div id="Productos" >

                            <table id="customers">                         
                            <thead>
                                <tr>
                                    <th>Convocatoria</th>
                                    <th>Plan de estidios</th>
                                    <th>Productos</th>
                                    <th>Estado</th>
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
                                <%--  if (listarConvo.size() > 0) {
                                        for (Convocatoriass listar2 : listarConvo) {
                                            pdfvo = listar2;
                                --%>
                                <tr>
                                    <td><%--=pdfvo.getidDivisiones()--%></td>
                                    <td><%--=pdfvo.getNombre()--%></td>
                                    <td><%--=pdfvo.getEstado()--%></td>
                                    <td><%--=pdfvo.getNombre()--%></td>
                                    <td><%--=pdfvo.getEstado()--%></td>
                                    <td>
                                        <%--
                                            if (pdfvo.getArchivopdf2() != null) {
                                        --%>
                                        <%--
                                            } else {
                                                out.print("Vacio");
                                            }
                                        --%>

                                    </td>
                                       
                                </tr>  
                                
                                <%--
                                            
                                        }
                                    }
                                --%>
                            </tbody>
                            
                        </table>   
                                   
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
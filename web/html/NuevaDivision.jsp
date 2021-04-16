<%-- 
    Document   : DivisionCrear
    Created on : 12/04/2021, 01:18:02 PM
    Author     : pc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.Planes_Est"%>
<%@page import="java.util.Iterator"%>
<%@page import="mx.com.system.modelo.beans.Divisiones"%>
<%@page import="mx.com.system.modelo.beans.Convocatoriass"%>
<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de convocatoria</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/RegistroConCss.css">
         
    </head>
    <body onload="document.getElementById('date').innerHTML = Date()">
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
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
                    <li> <form method="post" action="BuscarDivisiones" >
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
                     <li> <form method="post" action="Estudiantes" >
                            <input type="hidden" name="clave" value="Estudiantes" />
                            <input type="submit" value="Estudiantes"  class="encabe" />
                        </form>
                    </li>
                    <li><form method="post" action="EstudiantesRegistrar" >
                            <input type="hidden" name="clave" value="modificarUsuario" />
                            <input type="submit" value="Perfil" class="encabe" />
                        </form></li>
                </ul>
            </nav>
            <section id="contenido"><center>
                    <article>



                        <br>
                        <h2>Division Crear</h2>
                        <br> <br><form method="post" action="DivicionesServlet" onsubmit="return validar()" enctype="multipart/form-data">
                            <table id="customers">
                                <tr>
                                    <td>Id Carrera: </td>
                                    <td> <input type="text" id="Nom" name="idD"  required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Nombre: </td>
                                    <td><input type="text" id="Nom" name="Nom"  required>
                                    </td>

                                </tr>
                            </table><input type="hidden" name="clave" value="NuevaDivicion" />
                            <input type="submit" value="Crear" class="nuevo"  />
                        </form> 
                    
                        <form method="post" action="ProductosServlet" >
                            <input type="hidden" name="clave" value="cancelar" />
                            <input type="submit" value="Cancelar" class="nuevo"  />
                        </form> 
                        <br>
                        <br><br>

                    </article> </center></section>
            <aside>
                <center>
                    <br><br><br><br><br><br>
                    <img src="imagenes/jejejeME.png"  height="100" width="100" ><br>
                    <h3><%--= usuario.getNombres()%> <%= usuario.getApellido_paterno()--%></h3><br>
                    <form method="post" action="EstudiantesRegistrar" >
                        <input type="hidden" name="clave" value="cerrarSesion" />
                        <input type="submit" value="Cerrar Sesión" class="cerrarSesion" />
                    </form>
                </center>
            </aside>
            <footer id="base">
                <center>
                    <img src="imagenes/nofusion.png"  height="80" width="150">
                </center>
            </footer>
        </div>
    </body>
</html>
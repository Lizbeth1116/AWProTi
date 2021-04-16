<%-- 
    Document   : RegistroProtocolo
    Created on : 18/11/2020, 10:53:39 PM
    Author     : lizzb
--%>

<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Producto de Titulacion Requisitos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="css/Registro_Protocolo.css">
    </head>
    <body>
         <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
        %>
        <div id="contenedor">
            <header id="encabezado"> <img src="../imagenes/Logo-TecNM-2017.png"  height="120" width="150" align="left" > 
                <img src="../imagenes/62464 (1).png"  height="125" width="200" align="right"> 
               <center><h1 ><br>Instituto Tecnológico Superior  del Occidente del Estado de Hidalgo</h1>
                    <h2>Aplicación Web para el proceso de Titulación (AWProTi)</h2>
                </center>
            </header>
          <nav>
                <ul>
                    <li><a href="../Convocatorias.jsp">Convocatorias</a></li>                 
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Producto</a>
                        <div class="dropdown-content">
                            <a href="../html/anteproyecto.jsp">Anteproyecto</a>
                            <a href="../html/ProductoDeTitulacionRequisitos.jsp">Registro</a>
                            <a href="../html/producto_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Protocolo</a>
                        <div class="dropdown-content">
                            <a href="../html/RegistroProtocolo.jsp">Registro</a>
                            <a href="../html/protocolo_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li><a href="../html/perfil.jsp">Perfil</a></li>
                </ul>
            </nav>
            <section id="contenido">
                <article> <br> 
                    <h2>Registro de Protocolo de Titulación</h2>
                    <center>
                        <table id="tabla1" align="center">
                            <tr>
                                <td><label for="fname">Matricula: </label></td>
                                <td><label for="fname">Fecha de Registro: </label></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="fname" name="Am"></td>
                                <td><input type="text" id="fechaNacimiento" name="fechaNacimiento" /></td>
                            </tr>

                            <tr>
                                <td><label for="fname">Nombre: </label></td>
                                <td><label for="fname">Estado: </label></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="fname" name="Am"></td>
                                <td><input type="text" id="fname" name="Es"></td>
                            </tr>

                            <tr>
                                <td><label for="fname">Carrera: </label></td>
                                <td><label for="fname">Promedio: </label></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="fname" name="Ca"></td>
                                <td><input type="text" id="fname" name="Pr"></td>
                            </tr>
                            <tr>
                                <td><label for="fname">Teléfono: </label></td>
                                <td><label for="fname">Plan de estudios: </label></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="fname" name="CC" ></td>
                                <td><input type="text" id="fname" name="PE" ></td>
                            </tr>
                            <tr>
                                <td><label for="fname">E-mail </label></td>
                                <td><label for="fname">Producto de Titulación </label></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="fname" name="Am"></td>
                                <td><input type="text" id="fname" name="Am"></td>
                            </tr>
                            <tr>
                                <td><label for="fname">Fecha de Protocolo: </label></td>
                                
                            </tr>
                            <tr>
                                <td><input type="text" id="fechaNacimiento" name="fechaNacimiento" class="fecha"/></td>
                            </tr>                          
                            
                            <tr>
                                <td></td>
                                <td><h4 align="right">
                        <a href="#" class="button" >Registrar</a>
                        </h4></td>
                            </tr>                           
                        </table>
                        <br>
                    </center>
                </article></section>
            <aside>
                <center>
                    <br><br><br><br><br><br>
                    <img src="../imagenes/graduation-3870756_960_720.png"  height="180" width="180" ><br>
                    <h3><%= usuario.getNombres() %> <%= usuario.getApellido_paterno()%></h3><br>
                   <form method="post" action="EstudiantesRegistrar" >
            <input type="hidden" name="clave" value="cerrarSesion" />
            <input type="submit" value="Cerrar Sesión" class="button" />
        </form>        
                </center>
            </aside>
            <footer id="base">
                <img src="../imagenes/footer_escudo.png"  height="72" width="90" align="left">
                <center><a > Dirección:
                        <br>Paseo del Agrarismo 2000.
                        <br>Carr. Mixquiahuala - Tula, km 2.5
                        <br>Mixquiahuala de Juárez, Hidalgo, C.P. 42700</a>    </center>
            </footer>
        </div>
    </body>
</html>
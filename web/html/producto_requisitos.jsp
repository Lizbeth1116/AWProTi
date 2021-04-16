<%-- 
    Document   : producto_requisitos
    Created on : 11/11/2020, 09:20:18 PM
    Author     : lizzb
--%>

<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Requisitos del producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="css/requisitos_producto.css">
    </head>
    <body><%
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
            </nav>            <section id="contenido">
                <article>
                    <center>
                        <br>
                        <h2 >Requisitos de Producto de Titulación</h2>
                        <br> <br>
                        <table id="customers">
                            <tr>
                                <td>Autorización del tema </td>
                                <td>
                                    <input type="file" name="AT"  class="button">
                                </td>
                            </tr>
                            <tr>
                                <td>Registro de Producto de Titulación </td>
                                <td><input type="file" name="RPT"  class="button"></td>
                            </tr>
                            <tr>
                                <td>Kardex avalado por Control Escolar </td>
                               <td><input type="file" name="KAC"  class="button"> </td>
                            </tr>
                            <tr>
                                <td>Acreditación de Ingles </td>
                                <td> <input type="file" name="AI"  class="button">
                                </td>
                            </tr>
                            <tr>
                                <td>Liberación de servicio Social: </td>
                                <td>
                                     <input type="file" name="LSS"  class="button">
                                </td>
                            </tr>
                            <tr>
                                <td>Acreditacion de Residencia Profesional</td>
                                <td>
                                    <input type="file" name="ARP"  class="button">
                                </td>
                            </tr>   
                            <tr>
                                <td>Testimonio del EGEL</td>
                                <td>
                                     <input type="file" name="AE"  class="button">
                                </td>
                            </tr>
                        </table>
                        <br>
                      
                    </center>
                </article></section>
            <aside>
                <center>
                    <br><br><br><br><br><br>
                    <img src="../imagenes/graduation-3870756_960_720.png"  height="180   " width="180" ><br>
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


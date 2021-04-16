<%-- 
    Document   : Registros
    Created on : 14/11/2020, 04:31:51 PM
    Author     : lizzb
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.Divisiones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registros</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/cssRegistro.css">
    </head>
    <body>
        <div id="contenedor">
            <header id="encabezado"> <img src="imagenes/Logo-TecNM-2017.png"  height="120" width="150" align="left" > 
                <img src="imagenes/62464 (1).png"  height="125" width="200" align="right"> 
                <center><h1 ><br>Instituto Tecnológico Superior  del Occidente del Estado de Hidalgo</h1>
                    <h2>Aplicación Web para el proceso de Titulación (AWProTi)</h2>
                </center>
            </header>
            <section id="contenido"><br><br>
                                <center>
                                    <form method="post" action="EstudiantesRegistrar" >
                    <h2 id="regi">Registros de Usuario</h2>
                    <article>


                        <center>
                            <table id="tabla1" align="center">
                                
                                <tr><td><label for="fname">Nombre(s):</label></td>
                                <td><label for="fname">Usuario:</label></td>
                                </tr>
                                <tr> <td ><input type="text" id="fname" name="N" ></td>
                                <td><input type="text" id="fname" name="U" placeholder="Matricula"></td>
                                </tr>
                                <tr>
                                    <td><label for="fname">Apellido Paterno:</label></td>
                                    <td><label for="fname">Teléfono:</td>  
                                </tr>
                                <tr>
                                    <td><input type="text" id="fname" name="AP" ></td>
                                    <td><input type="tel" id="fname" name="T" ></td>
                                </tr>
                                <tr>
                                    <td><label for="fname">Apellido Materno</label></td>
                                    <td><label for="fname">e-mail:</label></td>
                                    
                                </tr>
                                <tr><td><input type="text" id="fname" name="AM"></td>
                                    <td><input type="text" id="fname" name="E" ></td>
                                </tr>                       
                                <tr>
                                    <td><label for="fname">Contraseña:</label></td>
                                    <td><label for="plan">Elige tu Plan de estudios</label></td>
                                </tr>
                                <tr>
                                    <td><input type="password" id="fname" name="C" ></td> 
                                     <td>                                         
                                        <select id="planEst" name="pestudios">
                                            <option value="Arquitectura">Arquitectura</option>
                                            </select></td>                                     
                                </tr> 
                                <tr>
                                    <td><label for="fname">Confirmar contraseña:</label></td>
                                </tr>
                                
                                <tr><td><input type="password" id="fname" name="CC" ></td>
                                </tr>
                            </table>  
                            <table id="tabla1" align="center">
                                <tr>
                                    
                                    <td><h3 >                                            
                                           <img src="imagenes/icono.png"  height="80" width="80" align="center"  >
                                        </h3></td> <td><input type="text" name="foto"></p></td>
                                        <td> <button  >Seleccionar archivo</button></td>
                                </tr>
                            </table>
                            <a href="index.jsp" class="button"  >Cancelar</a>
                            <td><input type="hidden" name="clave" value="RegistrarEstudiante" />
                            <input type="submit" value="Registrar" class="button"/></td>
                        
                    </article><br>
                </form></center></section>
            <footer id="base">
                <img src="imagenes/footer_escudo.png"  height="72" width="90" align="left">
                <center><a > Dirección:
                        <br>Paseo del Agrarismo 2000.
                        <br>Carr. Mixquiahuala - Tula, km 2.5
                        <br>Mixquiahuala de Juárez, Hidalgo, C.P. 42700</a>    </center>
            </footer>
        </div>
    </body>
</html>

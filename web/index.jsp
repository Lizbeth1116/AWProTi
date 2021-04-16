<%-- 
    Document   : index
    Created on : 14/11/2020, 04:10:24 PM
    Author     : lizzb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proyecto Integrador</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/indexcss.css">
    </head>
    <body> 
        <div id="contenedor">
            <header id="encabezado"> <img src="imagenes/tecBlanco.png" height="80" width="120" align="left" > 
                <img src="imagenes/itsoehBlanco.png" height="50" width="120" align="right" class="logos" > 
                <center><h1 style="color: white" ><br>Instituto Tecnologico Superior  del Occidente del Estado de Hidalgo</h1>
                    <h2 style="color: white" >Aplicacion Web para el proceso de Titulacion (AWProTi)</h2>
                </center>
            </header>    

            <center> 
                <%
                    ServletContext aplicacion = request.getServletContext();
                    String visitantes = (String) aplicacion.getAttribute("visitantes");
                    int numero = 0;
                    if (visitantes != null) {
                        numero = Integer.parseInt(visitantes);
                    }
                    aplicacion.setAttribute("visitantes", ++numero + "");
                %>
                <section id="contenido" >
                    <div class="form">
                        <form method="post" action="Login" >

                            <h3>
                                <img src="imagenes/jejejeME.png"  height="100" width="100" align="center" > 
                            </h3>
                            <table>
                                <tr><td align="right"><h5>
                                            Usuario: </h5>
                                    </td>
                                    <td align="left"> <p ><input type="text" placeholder="Id del Trabajador o Matricula" class="cadena" name="id_usuario" required/> </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" ><h5>
                                            Contraseña: </h5>
                                    </td>
                                    <td align="left"> <p ><input type="password" class="cadena" name="contrasenia" pattern=".{6,}" required/> </p>
                                    </td>
                                </tr> 
                               
                                <tr> <select name="roles">
                                    <option value="4">Alumno</option>
                                <option value="3">Docente</option> 
                                <option value="2">Jefe de división</option>
                                <option value="1">Subdirección</option> 
                               </select>
                            
                                </tr>
                             
                            </table>
                           
                            <table
                                <td><input type="submit" value="Acceder" class="boton"  /></td>
                            </table>

                        </form> 
                        <form method="post" action="EstudiantesRegistrar" >
                            <input type="hidden" name="clave" value="listarCarreras" />
                            <input type="submit" value="Registrar" class="boton"  />
                        </form>   

                    </div>
                </section>
            </center>

            <br><br><br><br>
            <right>
                <div>
                    <h2 style="font-family: monospace" align="right"  ><b style="color: cadetblue" >Numero de visitantes = <%= numero%></b></h2></div> </right>
            <footer id="base">
                <center>
              <img src="imagenes/nofusion.png"  height="80" width="150">
                </center>
            </footer>
        </div>
    </body>
</html>


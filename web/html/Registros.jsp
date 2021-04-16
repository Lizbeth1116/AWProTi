|<%-- 
    Document   : Registros
    Created on : 14/11/2020, 04:31:51 PM
    Author     : lizzb
--%>

<%@page import="mx.com.system.modelo.beans.Planes_Est"%>
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
        <link  rel="stylesheet" type="text/css" href="html/css/registroAlumno.css">
        <script>
            function enviar(registrar) {
                if(registrar === 'Registrar') {
                   if(( (document.getElementById('contra').value === document.getElementById('confi').value) && document.getElementById('contra').value !=='') ){
                        document.getElementById('clave').value = 'RegistrarEstudiante';
                      var formulario = document.getElementById('formulario');
                formulario.action = 'EstudiantesRegistrar';
                formulario.submit();
               }else {
                    alert('Las contraseñas no coinden o son campos vacios');
                }  
                            
            }}
        </script>
    </head>
    <body>
        <div id="contenedor">
          <header id="encabezado"> <img src="imagenes/tecBlanco.png" height="80" width="120" align="left" > 
                <img src="imagenes/itsoehBlanco.png" height="50" width="120" align="right" class="logos" > 
                <center><h1 style="color: white" ><br>Instituto Tecnologico Superior  del Occidente del Estado de Hidalgo</h1>
                    <h2 style="color: white" >Aplicacion Web para el proceso de Titulacion (AWProTi)</h2>
                </center>
            </header>          
             <%
            ArrayList<Divisiones> listaCarrera = (ArrayList<Divisiones>) request.getAttribute("listaCarrera");
            ArrayList<Planes_Est> listaPlanes = (ArrayList<Planes_Est>) request.getAttribute("listaPlanes");
        %>
            <section id="contenido"><br><br>
                                <center>
                                    <form id="formulario" method="post" action="" >
                    
                    <article>
                        <center>
                            <h2 id="regi">Registros de Usuario</h2>
                            <table id="tabla1" align="center">
                                
                                <tr><td><label for="fname">Nombre(s):</label></td>
                                <td><label for="fname">Usuario:</label></td>
                                </tr>
                                <tr> <td ><input type="text" id="fname" name="N" required></td>
                                <td><input type="text" id="fname" name="U" placeholder="Matricula" required></td>
                                </tr>
                                <tr>
                                    <td><label for="fname">Apellido Paterno:</label></td>
                                    <td><label for="fname">Teléfono:</td>  
                                </tr>
                                <tr>
                                    <td><input type="text" id="fname" name="AP" required></td>
                                    <td><input type="tel" id="fname" name="T" maxlength="10" required></td>
                                </tr>
                                <tr>
                                    <td><label for="fname">Apellido Materno</label></td>
                                    <td><label for="fname">e-mail:</label></td>
                                    
                                </tr>
                                <tr><td><input type="text" id="fname" name="AM" required></td>
                                    <td><input type="email" id="fname" name="E"  pattern="^[^@]+@[^@]+\.[a-zA-Z]{2,}$" placeholder="Correo Institucional" required> </td>
                                </tr>                       
                                <tr>
                                    <td><label for="fname">Contraseña:</label></td>
                                    <td><label for="plan">Elige tu Plan de estudios</label></td>
                                </tr>
                                <tr>
                                    <td><input type="password" id="contra" name="C"  pattern="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{6,}$" title="La contraseña debe tener al menos una mayuscula, un signo,un nnumeros y minusculas, al menos 6 caracteres" required ></td> 
                                     <td>                                         
                                        <select name="pestudios" class="Select-inp" id="lista">
                                              <%
                                Iterator itera = listaPlanes.iterator();
                                while(itera.hasNext()) {
                                    Planes_Est plan = (Planes_Est) itera.next();
                            %>
                            <option value="<%= plan.getId_Plan()%>" ><%= plan.getNombre()%></option>
                            <%
                                }
                            %>
                                            </select></td>
                                     
                                </tr> 
                                <tr>
                                    <td><label for="fname">Confirmar contraseña:</label></td>
                                    <td><label for="carrera">Seleccionar tu carrera</label></td>
                                </tr>
                                
                                <tr><td><input type="password" id="confi" name="CC" required ></td>
                               <td>
                                   <select name="idCarrera" class="Select-input" id="lista">
                            <%
                                 itera = listaCarrera.iterator();
                                while(itera.hasNext()) {
                                    Divisiones carrera = (Divisiones) itera.next();
                            %>
                            <option value="<%= carrera.getIdDivisiones()%>" ><%= carrera.getNombre() %></option>
                            <%
                                }
                            %>
                            </select>
                        </td></tr>            
                            </table>  
                          
                                    <input type="hidden" id="clave" name="clave" value="" />
                         
                                    <br>
                            <a href="index.jsp" class="button"  >Cancelar</a>
                            
                                 <a onclick="enviar('Registrar')" class="button"  > Registrar</a>
                        </center></article></form></center>
                                  </section>
                            <br><br>
               
                                 
              <footer id="base">
                <center>
              <img src="imagenes/nofusion.png"  height="80" width="150">
                </center>
            </footer>
        </div>
    </body>
</html>

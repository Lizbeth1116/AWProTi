<%-- 
    Document   : perfil
    Created on : 11/11/2020, 10:23:13 PM
    Author     : lizzb
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.Planes_Est"%>
<%@page import="mx.com.system.modelo.beans.Divisiones"%>
<%@page import="mx.com.system.modelo.beans.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Requisitos del producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" type="text/css" href="html/css/perfil.css">
        <script>  function enviar(Modificar) {
                if(Modificar === 'Modificar') {
                   if((document.getElementById('contra').value === document.getElementById('confi').value) && document.getElementById('contra').value !=='' ){
                       try {
    document.getElementById('clave').value = 'actualizarUsuario';
} catch (e) {
    alert(e);
}
               var formulario = document.getElementById('formulario');
                formulario.action = 'EstudiantesRegistrar';
                formulario.submit();
               }else {
                    alert('Las contraseñas no coinden o son campos vacios');
                }  
                            
            }}</script>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
            ArrayList<Divisiones> listaDivisiones = (ArrayList<Divisiones>) request.getAttribute("listaCarrera");
            ArrayList<Planes_Est> listaPlanes_Est = (ArrayList<Planes_Est>) request.getAttribute("listaPlanes");
        %>
        <div id="contenedor">
            <header id="encabezado"> <img src="imagenes/Logo-TecNM-2017.png"  height="120" width="150" align="left" > 
                <img src="imagenes/62464 (1).png"  height="125" width="200" align="right"> 
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
                      <form id="formulario" method="post" action="EstudiantesRegistrar" >
                <article>

                    <h2>Perfil de Usuario</h2>
                    <center>
                        <table id="tabla1" align="center">
                            <tr>
                                <td><label for="fname">Usuario</label></td>
                                <td><label for="fname">Nombre(s)</label></td>
                            </tr>
                            <tr> <td ><input type="hidden" id="fname" name="U"  value="<%= usuario.getId_usuario()%>">
                                    <b><%= usuario.getId_usuario()%></b></td>
                                <td><input type="text" id="fname" name="N"  value="<%=usuario.getNombres()%>"></td>
                                </tr>
                            <tr>
                                    <td><label for="fname">Apellido Paterno:</label></td>
                                    <td><label for="fname">Teléfono:</td>  
                                </tr>
                                <tr>
                                    <td><input type="text" id="fname" name="AP" value="<%= usuario.getApellido_paterno()%>"></td>
                                    <td><input type="tel" id="fname" name="T" maxlength="10" value="<%= usuario.getTelefono()%>"></td>
                                </tr>
                                <tr>
                                    <td><label for="fname">Apellido Materno</label></td>
                                    <td><label for="fname">e-mail:</label></td>
                                    
                                </tr>
                                <tr><td><input type="text" id="fname" name="AM" value="<%= usuario.getApellido_materno()%>"></td>
                                    <td><input type="email" id="fname" name="E" placeholder="Correo Institucional" value="<%= usuario.getEmail()%>"></td>
                                </tr>                       
                                <tr>
                                    <td><label for="fname">Contraseña:</label></td>
                                    <td><label for="plan">Elige tu Plan de estudios </label></td>
                                </tr>
                                <tr>
                                    <td><input type="password" id="contra" name="C" required></td> 
                                     <td>                                         
                                        <select name="pestudios" >
                                              <%
                                Iterator itera = listaPlanes_Est.iterator();
                                while(itera.hasNext()) {
                                    Planes_Est planEstudios= (Planes_Est) itera.next();
                          if (planEstudios.getId_Plan() == usuario.getId_Plan()) {
                            %>
                            <option value="<%=planEstudios.getId_Plan()%>" selected ><%= planEstudios.getNombre() %></option>
                            <%
                                    } else {
                            %>
                             <option value="<%=planEstudios.getId_Plan()%>"  ><%= planEstudios.getNombre() %></option>
                           <%
                                    }
                                }
                            %>
                                </select></td>
                                     
                                </tr> 
                                <tr>
                                    <td><label for="fname">Confirmar contraseña:</label></td>
                                    <td><label for="carrera">Seleccionar tu carrera</label></td>
                                </tr>
                                
                                <tr><td><input type="password" id="confi" name="CC" required></td>
                               <td>
                                   <select name="idCarrera" >
                            <%
                                 itera = listaDivisiones.iterator();
                                while(itera.hasNext()) {
                                    Divisiones carrera = (Divisiones) itera.next();
                                if (carrera.getIdDivisiones().equals(usuario.getIdDivisiones())) {
                            %>
                            <option value="<%=carrera.getIdDivisiones()%>" selected ><%= carrera.getNombre()%></option>
                            <%
                                    } else {
                            %>
                             <option value="<%=carrera.getIdDivisiones()%>"  ><%= carrera.getNombre() %></option>
                           <%
                                    }
                                }
                            %>
                            </select>
                        </td></tr>            
                            </table> 
                            
                              <input type="hidden" id="clave" name="clave" value="" />
                         
                          
                            <a href="index.jsp" class="button"  >Cancelar</a>
                            
                                 <a onclick="enviar('Modificar')" class="button"  > Modificar</a>
                    </center>
                   
                </article>   </form></section>
            <aside>
                <center>
                    <br><br><br><br><br><br>
                    <img src="imagenes/graduation-3870756_960_720.png"  height="180   " width="180" ><br>
                    <h3><%= usuario.getNombres() %> <%= usuario.getApellido_paterno()%></h3><br>
                   <form method="post" action="EstudiantesRegistrar" >
            <input type="hidden" name="clave" value="cerrarSesion" />
            <input type="submit" value="Cerrar Sesión" class="button" />
        </form>        
                </center>
            </aside>
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

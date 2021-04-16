<%-- 
    Document   : RegistrarseConvocatoria
    Created on : 14/11/2020, 04:28:20 PM
    Author     : lizzb
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
        <link  rel="stylesheet" type="text/css" href="css/RegistroConCss.css">
         <script type="text/javascript">
           /* function validar() {
                //obteniendo el valor que se puso en el campo text del formulario
                var miCampoTexto = document.getElementById("tituloT").value;
                //la condición
                if (miCampoTexto.length == 0 || /^\s+$/.test(miCampoTexto)) {
                    alert('El campo de Nombre de convocatoria esta vacio!');
                    return false;
                }

            }*/
        </script>
    </head>
    <body onload="document.getElementById('date').innerHTML = Date()">
        <%--
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
            ArrayList<Divisiones> listaDivisiones = (ArrayList<Divisiones>) request.getAttribute("listaCarrera");
            ArrayList<Planes_Est> listaPlanes_Est = (ArrayList<Planes_Est>) request.getAttribute("listaPlanes");
            ArrayList<Convocatoriass> listaConvocatoriass = (ArrayList<Convocatoriass>) request.getAttribute("listaConvocatorias");
            Convocatoriass convoctoria = (Convocatoriass) sesion.getAttribute("convocatoriass");
        --%>

         <div id="contenedor">
            <header id="encabezado"> 
                <img src="../imagenes/tecBlanco.png" height="80" width="120" align="left" > 
                <img src="../imagenes/itsoehBlanco.png" height="50" width="120" align="right" class="logos" > 
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
                        <a href="javascript:void" class="dropbtn">Producto</a>
                        <div class="dropdown-content">
                            <a href="html/anteproyecto.jsp">Anteproyecto</a>
                            <a href="html/ProductoDeTitulacionRequisitos.jsp">Registro</a>
                            <a href="html/producto_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void" class="dropbtn">Protocolo</a>
                        <div class="dropdown-content">
                            <a href="html/protocolo_requisitos.jsp">Requisitos</a>
                        </div>
                    </li>
                    <li> <form method="post" action="EstudiantesRegistrar" >
                            <input type="hidden" name="clave" value="modificarUsuario" />
                            <input type="submit" value="Perfil" class="encabe" />
                        </form> </li>
                </ul>
            </nav>
            <section id="contenido"><center>
                    <article>



                        <br>
                        <h2>Registrarse en Convocatoria </h2>
                        <br> <br><form method="post" action="ProductosServlet" onsubmit="return validar()" enctype="multipart/form-data">
                            <table id="customers">
                                <tr>
                                    <td>Matricula: </td>
                                    <td>  <input type="hidden" name="Usu" value="<%--= usuario.getId_usuario()--%>" />
                                        <p id="datos"><%--= usuario.getId_usuario()--%> </p></td>
                                </tr>
                                <tr>
                                    <td>Nombre: </td>
                                    <td><p id="datos"><%--= usuario.getNombres()--%> <%--= usuario.getApellido_paterno()--%> <%--= usuario.getApellido_materno()--%></p>
                                    </td>

                                </tr>
                                <tr>
                                    <td>Carrera: </td>
                                    <td><p name="idCarrera" >
                                            <%--terator iterador = listaDivisiones.iterator();
                                                while (iterador.hasNext()) {
                                                    Divisiones carrera = (Divisiones) iterador.next();
                                                    if (carrera.getIdDivisiones().equals(usuario.getIdDivisiones())) {
                                            --%>
                                            <input type="hidden" name="carre" value="<%--= carrera.getIdDivisiones()--%>" />
                                            <p id="datos"><%--= carrera.getNombre()--%></p>
                                            <%--
                                                    }
                                                }
                                            --%> </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Convocatoria: </td>
                                    <td>
                                        <p name="idConvocatoria" >
                                            <%--Iterator iterador1 = listaConvocatoriass.iterator();
                                                while (iterador1.hasNext()) {
                                                    Convocatoriass convocatoriass = (Convocatoriass) iterador1.next();
                                                    if (convocatoriass.getIdConvocatoria().equals(convoctoria.getIdConvocatoria())) {
                                            --%>
                                            <p id="datos"><%--= convocatoriass.getNombre()--%> </p>
                                            <input type="hidden" name="Convo" value="<%--= convocatoriass.getIdConvocatoria()--%>" />
                                            <%--
                                                    }
                                                }
                                            --%><p></td>
                                </tr>

                                <tr>
                                    <td>Plan de Estudios: </td>
                                    <td><p name="idPlanes"><%--Iterator iterador2 = listaPlanes_Est.iterator();
                                        while (iterador2.hasNext()) {
                                            Planes_Est planEstudios = (Planes_Est) iterador2.next();
                                            if (planEstudios.getId_Plan() == usuario.getId_Plan()) {
                                            --%>
                                            <p id="datos"><%--= planEstudios.getNombre()--%></p>
                                            <input type="hidden" name="planEstudios" value="<%--= planEstudios.getNombre()--%>" />
                                            <%--
                                                    }
                                                }
                                            --%>
                                        </p> </td>
                                </tr>
                                <tr>
                                    <td>Titulo del Trabajo </td>
                                    <td><input type="text" id="tituloT" name="Nom" required></td>
                                </tr>
                                <tr>
                                    <td>Anteproyecto</td>
                                    <td>
                                        <input type="file" name="fichero" accept="application/pdf" required>
                                        
                                    </td>
                                </tr> 
                            </table><input type="hidden" name="clave" value="RegistrarAnteproyecto" />
                            <input type="submit" value="Registrar" class="nuevo"  />
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
                    <img src="../imagenes/jejejeME.png"  height="100" width="100" ><br>
                    <h3><%--= usuario.getNombres()--%> <%--= usuario.getApellido_paterno()--%></h3><br>
                    <form method="post" action="EstudiantesRegistrar" >
                        <input type="hidden" name="clave" value="cerrarSesion" />
                        <input type="submit" value="Cerrar Sesión" class="cerrarSesion" />
                    </form>
                </center>
            </aside>
            <footer id="base">
                <center>
                    <img src="../imagenes/nofusion.png"  height="80" width="150">
                </center>
            </footer>
        </div>
    </body>
</html>
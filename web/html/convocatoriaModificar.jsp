<%-- 
    Document   : convocatoriaModificar
    Created on : 14/04/2021, 03:14:38 PM
    Author     : Rebeca
--%>


<%@page import="mx.com.system.modelo.beans.productos_titulacion"%>
<%@page import="mx.com.system.modelo.beans.productos_titulacion"%>
<%@page import="mx.com.system.modelo.AdmonProductos"%>
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
        <link  rel="stylesheet" type="text/css" href="html/css/covoRegistrarcss.css">
        <script type="text/javascript">
            function validar() {
                //obteniendo el valor que se puso en el campo text del formulario
                var miCampoTexto = document.getElementById("Nom").value;
                //la condición
                if (miCampoTexto.length == 0 || /^\s+$/.test(miCampoTexto)) {
                    alert('El campo de Nombre de convocatoria esta vacio!');
                    return false;
                }

                //Validando el combo select
                var miCombo = document.getElementById("Estado").value;
                if (miCombo == "") {
                    alert('Debe Elegir una opcion en el combo de estado!');
                    return false;
                }

                return true;
            }
        </script>
    </head>

    <body onload="document.getElementById('date').innerHTML = Date()">
        <%
            HttpSession sesion = request.getSession();
            Usuarios usuario = (Usuarios) sesion.getAttribute("usuario");
            AdmonProductos admonProdu = new AdmonProductos();
            productos_titulacion productos = new productos_titulacion();
            ArrayList<productos_titulacion> listaProductos = admonProdu.buscarProductos();
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
            <section id="contenido"><center>
                    <form id="agregarConvocatoria" method="post" action="" >
                    <article>
                        <br>
                        <h2>Registrar Convocatoria</h2>
                        <br> <br><form method="post" action="ProductosServlet" onsubmit="return validar()" enctype="multipart/form-data">
                            <table id="customers">
                                <tr>
                                    <td>Id Convocatoria</td>
                                    <td><input type="text" id="idCon" name="idCon"   required></td>
                                </tr>
                                <tr>
                                    <td>Nombre de Convocatoria</td>
                                    <td><input type="text" id="Nom" name="Nom"  required></td>
                                </tr>
                                <tr>
                                    <td>Estado</td>
                                    <td><select id="Estado" name="Estado">
                                            <option  value="">Elegir</option>
                                            <option  value="A">Abierto</option>
                                            <option  value="C">Cerrado</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>Archivo</td>
                                    <td>
                                        <input type="file" name="fichero"  class="button" accept="application/pdf" required>
                                    </td>
                                </tr>   
                            </table>   
                            <input type="hidden" name="clave" value="cargarConvoca" />
                            <input type="submit" value="Modificar" class="nuevo"  />
                        </form> 
                       
                        <form method="post" action="BuscarConvoca"  >
                            <input type="hidden" name="clave" value="cancelar" />
                            <input type="submit" value="Cancelar" class="nuevo"  />
                        </form> 
                        <br>
                        <br><br>

                    </article> </form> </center> </section>
            <aside>
                <center>
                    <br><br><br><br><br><br>
                    <img src="imagenes/jejejeME.png"  height="100" width="100" ><br>
                    <h3><%= usuario.getNombres()%> <%= usuario.getApellido_paterno()%></h3><br>
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

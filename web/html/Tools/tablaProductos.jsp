<%-- 
    Document   : tablaProductos
    Created on : 3/12/2020, 05:22:07 PM
    Author     : lizzb
--%>

<%@page import="mx.com.system.modelo.AdmonProductos"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.com.system.modelo.beans.productos_titulacion"%>
<%
    AdmonProductos  admonProductos = new AdmonProductos();
    String idUsuario = request.getParameter("idUsuario");
    ArrayList<productos_titulacion> listaProductos = admonProductos.buscarProductos(idUsuario);
%>

<table id="customers">
                                    <tr>
                                        <th>Convoactoria</th>
                                        <th>Plan de Estudios</th>
                                        <th>Estudiante</th>
                                        <th>Titulo de trabajo</th>
                                        <th>Estado</th>
                                        <th>Accion</th>
                                    </tr>
    <%
        if (listaProductos != null) {
            Iterator iterador = listaProductos.iterator();
            while (iterador.hasNext()) {
                productos_titulacion productos = (productos_titulacion) iterador.next();
    %>
    <tr>
        <td><%= productos.getConvocatoria()%></td>
        <td><%= productos.getPlanEstudio()%></td>
        <td><%= productos.getNombreCompleto()%></td>
        <td><%= productos.getNombre()%></td>
        <td><%= productos.getResultadoCompleto()%></td>
        <td><form method="post" action="BuscarConvoca" >
                            <input type="hidden" name="clave" value="buscarConvoca" />
                        <input type="submit" value="Visualizar Convocatoria" class="boton"  />
                        </form></td>
    </tr>
    <%
            }
        }
    %>
</table>

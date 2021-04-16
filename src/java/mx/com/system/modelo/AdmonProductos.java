/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import mx.com.system.modelo.beans.Convocatoriass;
import mx.com.system.modelo.beans.productos_titulacion;

/**
 *
 * @author lizzb
 */
public class AdmonProductos {
    
    public int buscarProdu1(String id_usuario) throws Exception{
        int n=0;
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "call contarProductos('"+id_usuario+"');" ;
        ResultSet rs = cnx.consultarBD(sql);
        while (rs.next()) {
        n=rs.getInt(1);
        }
        
         cnx.cerrarConexion();
        return n+1;
    }
    public String buscarProdu(String id_usuario) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "Select resultado from titulacion.productos_titulacion where (id_usuario='" + id_usuario + "') order by id_usuario desc LIMIT 1;";
        ResultSet rs = cnx.consultarBD(sql);
        String resultado="";
        while(rs.next()) {
              resultado =rs.getString(1);
        }
        cnx.cerrarConexion();
        return resultado;
    }
  
     public ArrayList<productos_titulacion> buscarProductos() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();

        String sql = " select p.id_usuario,c.nombre as convocatoria,pe.nombre as plan,concat (u.Nombres,' ',u.apellido_paterno,' ',u.apellido_materno) as 'sc',p.nombre,"
                + "case p.resultado when 'A' then 'Anteproyecto' when 'P' then 'Proceso' when 'C' then 'Concluido'"
                + "when 'R' then 'Rechasado' end as 'resultado' from productos_titulacion p join usuarios u "
                + "join convocatoria c join planes_estudio pe where (p.id_usuario=u.id_usuario) and "
                + "(p.Convocatoria_idConvocatoria=c.idConvocatoria) and (u.id_Plan=pe.id_Plan) ";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<productos_titulacion> listaProductos = new ArrayList<>(0);
        while (rs.next()) {
            productos_titulacion productos_titulacion = new productos_titulacion();
            productos_titulacion.setId_usuario(rs.getString(1));
            productos_titulacion.setConvocatoria(rs.getString(2));
            productos_titulacion.setPlanEstudio(rs.getString(3));
            productos_titulacion.setNombreCompleto(rs.getString(4));
            productos_titulacion.setNombre(rs.getString(5));
            productos_titulacion.setResultadoCompleto(rs.getString(6));
            listaProductos.add(productos_titulacion);
        }
        cnx.cerrarConexion();
        return listaProductos;
    }

    public ArrayList<Convocatoriass> buscarConvoca() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM convocatoria";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Convocatoriass> listaConvocatorias = new ArrayList<>(0);
        while (rs.next()) {
            Convocatoriass convo = new Convocatoriass();
            convo.setIdConvocatoria(rs.getString(1));
            convo.setNombre(rs.getString(2));
            convo.setEstado(rs.getString(3));
            convo.setArchivopdf2(rs.getBytes(4));
            listaConvocatorias.add(convo);
        }
        cnx.cerrarConexion();
        return listaConvocatorias;
    }

    //  
    // Prepare a call to the stored procedure 'demoSp'  
    // with two parameters  
    //  
    // Notice the use of JDBC-escape syntax ({call ...})  
    //  
    public boolean registrarAnteproyecto(productos_titulacion productos_titulacion) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "INSERT INTO productos_titulacion"
                + "(nombre, id_usuario, Convocatoria_idConvocatoria, resultado, idTipo_P, asesor, revisor1, revisor2, vocalsupl, Anteproyecto)"
                + "VALUES "
                + "('" + productos_titulacion.getNombre() + "','" + productos_titulacion.getId_usuario() + "','"
                + productos_titulacion.getConvocatoria_idConvocatoria() + "','P','" + productos_titulacion.getIdTipo_P() + "','1','1','1','1','"
                + productos_titulacion.getAnteproyecto() + "');";
        System.out.println(sql);
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
    /*
    public boolean eliminarEstudiantes(Estudiantes estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "DELETE FROM Estudiantes WHERE matricula = '" + estudiante.getMatricula() + "'";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
    
    public boolean actualizarEstudiantes(Estudiantes estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "UPDATE Estudiantes "
                + "SET nombres = '" + estudiante.getNombres() + "', "
                + "apPaterno = '" + estudiante.getApPaterno() + "', "
                + "apMaterno = '" + estudiante.getApMaterno() + "', "
                + "idCarrera = " + estudiante.getIdCarrera() + " "
                + "WHERE matricula = '" + estudiante.getMatricula() + "'";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
     */
}

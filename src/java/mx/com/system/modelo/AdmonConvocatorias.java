/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import mx.com.system.modelo.beans.Convocatoriass;
/**
 *
 * @author lizzb
 */
public class AdmonConvocatorias {
   
     public Convocatoriass buscarConvo(String matricula) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM convocatoria WHERE idConvocatoria = '" + matricula +"'";
        ResultSet rs = cnx.consultarBD(sql);
        Convocatoriass convocatoriass = null;
        while(rs.next()) {
            convocatoriass = new Convocatoriass();
            convocatoriass.setIdConvocatoria(rs.getString(1));
            convocatoriass.setNombre(rs.getString(2));
            convocatoriass.setEstado(rs.getString(3));
            convocatoriass.setArchivopdf2(rs.getBytes(4));
        }
        cnx.cerrarConexion();
        return convocatoriass;
    }
    public Convocatoriass buscarConvo(Convocatoriass convoactoriass) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM convocatoria WHERE idConvocatoria = '" + convoactoriass.getIdConvocatoria()+ "'";
        ResultSet rs = cnx.consultarBD(sql);
        convoactoriass = null;
        while(rs.next()) {
            convoactoriass = new Convocatoriass();
            convoactoriass.setIdConvocatoria(rs.getString(1));
            convoactoriass.setNombre(rs.getString(2));
            convoactoriass.setEstado(rs.getString(3));
            convoactoriass.setArchivopdf2(rs.getBytes(4));
        }
        cnx.cerrarConexion();
        return convoactoriass;
    }
    
    public ArrayList<Convocatoriass> buscarConvoca() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "call visConvocatoria();";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Convocatoriass> listaConvocatorias = new ArrayList<Convocatoriass>();
        while(rs.next()) {
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
 
   
    
    public boolean registrarConvocatorias(Convocatoriass convocatoriass) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "INSERT INTO `titulacion`.`convocatoria` "
                + "(`idConvocatoria`, `nombre`, `estado`, `archivo`)"
                + "VALUES "
                + "('" + convocatoriass.getIdConvocatoria()+ "', '" + convocatoriass.getNombre()+ "', '" 
                + convocatoriass.getEstado()+ "', '" + convocatoriass.getArchivopdf()+ "')";
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

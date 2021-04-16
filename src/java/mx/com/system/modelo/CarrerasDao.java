/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import mx.com.system.modelo.beans.Convocatoriass;
import mx.com.system.modelo.beans.Divisiones;

/**
 *
 * @author hecdanhdzgrc
 */
public class CarrerasDao {
    
    public Divisiones buscarCarreras(int idCarrera) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM  divisiones WHERE idDivisiones = " + idCarrera;
        ResultSet rs = cnx.consultarBD(sql);
        Divisiones carrera = null;
        while(rs.next()) {
            carrera = new Divisiones();
            carrera.setIdDivisiones(rs.getString(1));
            carrera.setNombre(rs.getString(2));
        }
        cnx.cerrarConexion();
        return carrera;
    }
    
    public ArrayList<Divisiones> buscarCarreras() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM divisiones";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Divisiones> listaCarrera = new ArrayList<>(0);
        while(rs.next()) {
            Divisiones carrera = new Divisiones();
            carrera.setIdDivisiones(rs.getString(1));
            carrera.setNombre(rs.getString(2));
            listaCarrera.add(carrera);
        }
        cnx.cerrarConexion();
        return listaCarrera;
    }
    
    public boolean registrarDivisiones(Divisiones divisiones) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "insert into divisiones values ('" + divisiones.getIdDivisiones() +"', '" + divisiones.getNombre()+ "')";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
    
    public boolean eliminarEstudiantes(Divisiones divisiones) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "DELETE FROM divisiones WHERE idDivisiones = '" + divisiones.getIdDivisiones()+ "'";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
    
    
}

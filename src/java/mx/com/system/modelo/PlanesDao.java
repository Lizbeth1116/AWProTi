/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import mx.com.system.modelo.beans.Planes_Est;

public class PlanesDao {
    
    public Planes_Est buscarPlanes(int id_Plan) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM  planes_estudio WHERE  id_Plan = " + id_Plan;
        ResultSet rs = cnx.consultarBD(sql);
        Planes_Est plan = null;
        while(rs.next()) {
            plan = new Planes_Est();
            plan.setId_Plan(rs.getInt(1));
            plan.setNombre(rs.getString(2));
        }
        cnx.cerrarConexion();
        return plan;
    }
    
    public ArrayList<Planes_Est> buscarPlanes() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM planes_estudio";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Planes_Est> listaPlanes = new ArrayList<>(0);
        while(rs.next()) {
            Planes_Est plan = new Planes_Est();
            plan.setId_Plan(rs.getInt(1));
            plan.setNombre(rs.getString(2));
            listaPlanes.add(plan);
        }
        cnx.cerrarConexion();
        return listaPlanes;
    }
    
}

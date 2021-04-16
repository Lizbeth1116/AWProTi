/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hecdanhdzgrc
 */
public class Conexion {
    
    private Connection cnx;
    
    public void crearConexion() throws SQLException, Exception {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        this.cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/titulacion?useSSL=false&serverTimezone=UTC&user=root&password=pillo2012");
       // Auto Commit en Falso para hacer transacciones
        this.cnx.setAutoCommit(false);
    }
    
    public void cerrarConexion() throws SQLException, Exception {
        this.cnx.close();
    }
    
    public PreparedStatement prepararSentencia(String sSQL) throws SQLException, Exception {
        PreparedStatement psSQL = this.cnx.prepareStatement(sSQL, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        return psSQL;
    }
    
    public ResultSet consultarBD(String sSQL) throws SQLException, Exception {
        ResultSet rs = null;
        Statement stmt = this.cnx.createStatement();
        rs = stmt.executeQuery(sSQL);
        //stmt.close();
        return rs;
    }
    
    public int actualizarBD(String sSQL) throws SQLException, Exception {
        int iRes = 0;
        Statement stmt = this.cnx.createStatement();
        iRes = stmt.executeUpdate(sSQL);
        //stmt.close();
        return iRes;
    }
    
    public void commit() throws SQLException, Exception {
        this.cnx.commit();
    }
    
    public void rollback() throws SQLException, Exception {
        this.cnx.rollback();
    }

}

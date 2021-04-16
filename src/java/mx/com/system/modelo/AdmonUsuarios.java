/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import mx.com.system.modelo.beans.Usuarios;

public class AdmonUsuarios {

    public Usuarios buscarUsuario(String id_usuario, String contrasenia, String rol) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM usuarios WHERE id_usuario = '" + id_usuario + "' AND contraseña = '" + contrasenia + "' and idRoles = " + rol;
        ResultSet rs = cnx.consultarBD(sql);
        Usuarios estudiante = null;
        while (rs.next()) {
            estudiante = new Usuarios();
            estudiante.setId_usuario(rs.getString(1));
            estudiante.setNombres(rs.getString(2));
            estudiante.setApellido_paterno(rs.getString(3));
            estudiante.setApellido_materno(rs.getString(4));
            estudiante.setContrasenia(rs.getString(5));
            estudiante.setIdRoles(rs.getInt(6));
            estudiante.setIdDivisiones(rs.getNString(7));
            estudiante.setTelefono(rs.getNString(8));
            estudiante.setEmail(rs.getNString(9));
            estudiante.setId_Plan(rs.getInt(10));

        }
        cnx.cerrarConexion();
        return estudiante;
    }

    public Usuarios buscarUsiario(Usuarios estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM usuarios WHERE  id_usuario= '" + estudiante.getId_usuario() + "'";
        ResultSet rs = cnx.consultarBD(sql);
        estudiante = null;
        while (rs.next()) {
            estudiante = new Usuarios();
            estudiante.setId_usuario(rs.getString(1));
            estudiante.setNombres(rs.getString(2));
            estudiante.setApellido_paterno(rs.getString(3));
            estudiante.setApellido_materno(rs.getString(4));
            estudiante.setContrasenia(rs.getString(5));
            estudiante.setIdRoles(rs.getInt(6));
            estudiante.setIdDivisiones(rs.getNString(7));
            estudiante.setTelefono(rs.getNString(8));
            estudiante.setEmail(rs.getNString(9));
            estudiante.setId_Plan(rs.getInt(10));
        }
        cnx.cerrarConexion();
        return estudiante;
    }

    public ArrayList<Usuarios> buscarJefeDeCarreraMD() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT id_usuario,concat(Nombres,\" \",apellido_paterno,\" \",apellido_materno), idDivisiones FROM titulacion.usuarios where idRoles=2";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Usuarios> listaEstudiantes = new ArrayList<>(0);
        while (rs.next()) {
            Usuarios estudiante = new Usuarios();
            estudiante.setId_usuario(rs.getString(1));
            estudiante.setNombres(rs.getString(2));
            estudiante.setIdDivisiones(rs.getNString(3));
            listaEstudiantes.add(estudiante);
        }
        cnx.cerrarConexion();
        return listaEstudiantes;
    }

    public ArrayList<Usuarios> buscarEstudiantes() throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "SELECT * FROM usuarios";
        ResultSet rs = cnx.consultarBD(sql);
        ArrayList<Usuarios> listaEstudiantes = new ArrayList<>(0);
        while (rs.next()) {
            Usuarios estudiante = new Usuarios();
            estudiante.setId_usuario(rs.getString(1));
            estudiante.setNombres(rs.getString(2));
            estudiante.setApellido_paterno(rs.getString(3));
            estudiante.setApellido_materno(rs.getString(4));
            estudiante.setContrasenia(rs.getString(5));
            estudiante.setIdRoles(rs.getInt(6));
            estudiante.setIdDivisiones(rs.getNString(7));
            estudiante.setTelefono(rs.getNString(8));
            estudiante.setEmail(rs.getNString(9));
            estudiante.setId_Plan(rs.getInt(10));
            listaEstudiantes.add(estudiante);
        }
        cnx.cerrarConexion();
        return listaEstudiantes;
    }

    public boolean registrarEstudiantes(Usuarios estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "INSERT INTO usuarios"
                + " (id_usuario, Nombres, apellido_paterno, apellido_materno, contraseña, idRoles, idDivisiones , telefono, email,id_Plan) VALUES"
                + "('" + estudiante.getId_usuario() + "', '"
                + estudiante.getNombres() + "', '"
                + estudiante.getApellido_paterno() + "', '"
                + estudiante.getApellido_materno() + "', '"
                + estudiante.getContrasenia() + "', '"
                + estudiante.getIdRoles() + "', '"
                + estudiante.getIdDivisiones() + "', '"
                + estudiante.getTelefono() + "', '"
                + estudiante.getEmail() + "', '"
                + estudiante.getId_Plan() + "')";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }

    public boolean eliminarEstudiantes(Usuarios estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();
        String sql = "DELETE FROM usuarios WHERE id_usuario = '" + estudiante.getId_usuario() + "'";
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }

    public boolean actualizarEstudiantes(Usuarios estudiante) throws Exception {
        Conexion cnx = new Conexion();
        cnx.crearConexion();

        String sql = "UPDATE usuarios "
                + "SET Nombres = '" + estudiante.getNombres() + "', "
                + "apellido_paterno = '" + estudiante.getApellido_paterno() + "', "
                + "apellido_materno = '" + estudiante.getApellido_materno() + "', "
                + "contraseña  = '" + estudiante.getContrasenia() + "', "
                + "idRoles  = '" + estudiante.getIdRoles() + "', " + " "
                + "idDivisiones  = '" + estudiante.getIdDivisiones() + "', "
                + "telefono  = '" + estudiante.getTelefono() + "', "
                + "email  = '" + estudiante.getEmail() + "', "
                + "id_Plan  = '" + estudiante.getId_Plan() + "' "
                + "WHERE id_usuario  = '" + estudiante.getId_usuario() + "'";
        System.out.println(sql);
        int res = cnx.actualizarBD(sql);
        cnx.commit();
        cnx.cerrarConexion();
        return true;
    }
}

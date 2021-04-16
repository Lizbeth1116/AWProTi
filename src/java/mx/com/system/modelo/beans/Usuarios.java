/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo.beans;


public class Usuarios {
    
    private String id_usuario="";
    private String nombres="";
    private String apellido_paterno="";
    private String apellido_materno="";
    private String contrasenia="";
    private int idRoles;
    private String idDivisiones="";
    private String telefono="";
    private String email="";
    private int id_Plan;

    public Usuarios() {
    }

    public Usuarios(String id_usuario, String nombres, String apellido_paterno, String apellido_materno, String contrasenia, int idRoles, String idDivisiones, String telefono, String email, int id_Plan) {
        this.id_usuario = id_usuario;
        this.nombres = nombres;
        this.apellido_paterno = apellido_paterno;
        this.apellido_materno = apellido_materno;
        this.contrasenia = contrasenia;
        this.idRoles = idRoles;
        this.idDivisiones = idDivisiones;
        this.telefono = telefono;
        this.email = email;
        this.id_Plan = id_Plan;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public int getIdRoles() {
        return idRoles;
    }

    public void setIdRoles(int idRoles) {
        this.idRoles = idRoles;
    }

    public String getIdDivisiones() {
        return idDivisiones;
    }

    public void setIdDivisiones(String idDivisiones) {
        this.idDivisiones = idDivisiones;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId_Plan() {
        return id_Plan;
    }

    public void setId_Plan(int id_Plan) {
        this.id_Plan = id_Plan;
    }

}

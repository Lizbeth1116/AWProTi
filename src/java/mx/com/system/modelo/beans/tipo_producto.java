/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo.beans;

/**
 *
 * @author lizzb
 */
public class tipo_producto {
    private String idTipo_P;
    private String Nombre;

    public tipo_producto(String idTipo_P, String Nombre) {
        this.idTipo_P = idTipo_P;
        this.Nombre = Nombre;
    }

    public tipo_producto() {
    }

    public String getIdTipo_P() {
        return idTipo_P;
    }

    public void setIdTipo_P(String idTipo_P) {
        this.idTipo_P = idTipo_P;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
    
}

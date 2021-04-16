/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo.beans;

/**
 *
 * @author hecdanhdzgrc
 */
public class Divisiones {
    
    private String idDivisiones;
    private String nombre;

    public Divisiones() {
    }

    public Divisiones(String idDivisiones, String nombre) {
        this.idDivisiones = idDivisiones;
        this.nombre = nombre;
    }

    
    public String getIdDivisiones() {
        return idDivisiones;
    }

    public void setIdDivisiones(String idDivisiones) {
        this.idDivisiones = idDivisiones;
    }

    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}

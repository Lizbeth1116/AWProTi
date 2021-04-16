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
public class Planes_Est {
    private int id_Plan;
    private String nombre;

    public Planes_Est() {
    }

    public Planes_Est(int id_Plan, String nombre) {
        this.id_Plan = id_Plan;
        this.nombre = nombre;
    }

    public int getId_Plan() {
        return id_Plan;
    }

    public void setId_Plan(int id_Plan) {
        this.id_Plan = id_Plan;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}

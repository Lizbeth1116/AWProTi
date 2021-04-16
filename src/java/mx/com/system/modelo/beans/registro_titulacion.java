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
public class registro_titulacion {
    private String periodo_ingreso;
    private String periodo_egreso;
    private String inicio_servicio;
    private String fin_servicio;
    private String inicio_residencia;
    private String fin_residencia;
    private String estado;
    private double promedio;
    private int creditos_aprobados;
    private String fecha_egel;
    private double puntaje_egel;
    private int id_producto;
    private int avance;

    public registro_titulacion(String periodo_ingreso, String periodo_egreso, String inicio_servicio, String fin_servicio, String inicio_residencia, String fin_residencia, String estado, double promedio, int creditos_aprobados, String fecha_egel, double puntaje_egel, int id_producto, int avance) {
        this.periodo_ingreso = periodo_ingreso;
        this.periodo_egreso = periodo_egreso;
        this.inicio_servicio = inicio_servicio;
        this.fin_servicio = fin_servicio;
        this.inicio_residencia = inicio_residencia;
        this.fin_residencia = fin_residencia;
        this.estado = estado;
        this.promedio = promedio;
        this.creditos_aprobados = creditos_aprobados;
        this.fecha_egel = fecha_egel;
        this.puntaje_egel = puntaje_egel;
        this.id_producto = id_producto;
        this.avance = avance;
    }

    public registro_titulacion() {
    }

    public String getPeriodo_ingreso() {
        return periodo_ingreso;
    }

    public void setPeriodo_ingreso(String periodo_ingreso) {
        this.periodo_ingreso = periodo_ingreso;
    }

    public String getPeriodo_egreso() {
        return periodo_egreso;
    }

    public void setPeriodo_egreso(String periodo_egreso) {
        this.periodo_egreso = periodo_egreso;
    }

    public String getInicio_servicio() {
        return inicio_servicio;
    }

    public void setInicio_servicio(String inicio_servicio) {
        this.inicio_servicio = inicio_servicio;
    }

    public String getFin_servicio() {
        return fin_servicio;
    }

    public void setFin_servicio(String fin_servicio) {
        this.fin_servicio = fin_servicio;
    }

    public String getInicio_residencia() {
        return inicio_residencia;
    }

    public void setInicio_residencia(String inicio_residencia) {
        this.inicio_residencia = inicio_residencia;
    }

    public String getFin_residencia() {
        return fin_residencia;
    }

    public void setFin_residencia(String fin_residencia) {
        this.fin_residencia = fin_residencia;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getPromedio() {
        return promedio;
    }

    public void setPromedio(double promedio) {
        this.promedio = promedio;
    }

    public int getCreditos_aprobados() {
        return creditos_aprobados;
    }

    public void setCreditos_aprobados(int creditos_aprobados) {
        this.creditos_aprobados = creditos_aprobados;
    }

    public String getFecha_egel() {
        return fecha_egel;
    }

    public void setFecha_egel(String fecha_egel) {
        this.fecha_egel = fecha_egel;
    }

    public double getPuntaje_egel() {
        return puntaje_egel;
    }

    public void setPuntaje_egel(double puntaje_egel) {
        this.puntaje_egel = puntaje_egel;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getAvance() {
        return avance;
    }

    public void setAvance(int avance) {
        this.avance = avance;
    }
    
    
    
    
    
    
}

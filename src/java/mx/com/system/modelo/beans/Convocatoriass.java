/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.system.modelo.beans;

import java.io.InputStream;

/**
 *
 * @author lizzb
 */
public class Convocatoriass {
    private String idConvocatoria;
    private String nombre;
    private String estado;
    InputStream archivopdf;
    private byte[] archivopdf2;

    public Convocatoriass() {
    }

    public Convocatoriass(String idConvocatoria, String nombre, String estado, byte[] archivopdf2) {
        this.idConvocatoria = idConvocatoria;
        this.nombre = nombre;
        this.estado = estado;
        this.archivopdf2 = archivopdf2;
    }

    
    public String getIdConvocatoria() {
        return idConvocatoria;
    }

    public void setIdConvocatoria(String idConvocatoria) {
        this.idConvocatoria = idConvocatoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public InputStream getArchivopdf() {
        return archivopdf;
    }

    public void setArchivopdf(InputStream archivopdf) {
        this.archivopdf = archivopdf;
    }

    public byte[] getArchivopdf2() {
        return archivopdf2;
    }

    public void setArchivopdf2(byte[] archivopdf2) {
        this.archivopdf2 = archivopdf2;
    }
    
    
    
    
    
}

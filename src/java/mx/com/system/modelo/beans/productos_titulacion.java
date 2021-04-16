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
public class productos_titulacion {
    private int id_producto;
    private String nombre;
    private String id_usuario;
    private String Convocatoria_idConvocatoria;
    private String resultado=" ";
    private String observaciones;
    private String idTipo_P;
    private String asesor;
    private String revisor1;
    private String revisor2;
    private String vocalsupl;
    private InputStream Anteproyecto;
    private byte[] Anteproyecto2;
    private InputStream producto;
    private byte[] producto2;
    private InputStream autorizacion_tema;
    private byte[] autorizacion_tema2;
    private InputStream registro_producto;
    private byte[] registro_producto2;
    private InputStream kardex_avalado;
    private byte[] kardex_avalado2;
    private InputStream acreditacion_ingles;
    private byte[] acreditacion_ingles2;
    private InputStream liberacion_servicio;
    private byte[] liberacion_servicio2;
    private InputStream acreditacion_recidencia;
    private byte[] acreditacion_recidencia2;
    private InputStream testimonio_egel;
    private byte[] testimonio_egel2;
    private InputStream documento_titulacion;
    private byte[] documento_titulacion2;
    private InputStream constancia_no_incoveniencia;
    private byte[] constancia_no_incoveniencia2;
    private InputStream recibo_pago;
    private byte[] recibo_pago2;
    private InputStream dictamen_liberacion;
    private byte[] dictamen_liberacion2;
    private InputStream oficio_jurado;
    private byte[] oficio_jurado2;
    private InputStream plan_trabajo_asesorias;
    private byte[] plan_trabajo_asesorias2;
    private String fecha_protocolo;
    
    private String nombreCompleto;
    private String convocatoria;
    private String planEstudio;
    private String resultadoCompleto;

    public productos_titulacion() {
    }

    public productos_titulacion(int id_producto, String nombre, String id_usuario, String Convocatoria_idConvocatoria, String resultado, String observaciones, String idTipo_P, String asesor, String revisor1, String revisor2, String vocalsupl, byte[] Anteproyecto2, byte[] producto2, byte[] autorizacion_tema2, byte[] registro_producto2, byte[] kardex_avalado2, byte[] acreditacion_ingles2, byte[] liberacion_servicio2, byte[] acreditacion_recidencia2, byte[] testimonio_egel2, byte[] documento_titulacion2, byte[] constancia_no_incoveniencia2, byte[] recibo_pago2, byte[] dictamen_liberacion2, byte[] oficio_jurado2, byte[] plan_trabajo_asesorias2, String fecha_protocolo) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.id_usuario = id_usuario;
        this.Convocatoria_idConvocatoria = Convocatoria_idConvocatoria;
        this.resultado = resultado;
        this.observaciones = observaciones;
        this.idTipo_P = idTipo_P;
        this.asesor = asesor;
        this.revisor1 = revisor1;
        this.revisor2 = revisor2;
        this.vocalsupl = vocalsupl;
        this.Anteproyecto2 = Anteproyecto2;
        this.producto2 = producto2;
        this.autorizacion_tema2 = autorizacion_tema2;
        this.registro_producto2 = registro_producto2;
        this.kardex_avalado2 = kardex_avalado2;
        this.acreditacion_ingles2 = acreditacion_ingles2;
        this.liberacion_servicio2 = liberacion_servicio2;
        this.acreditacion_recidencia2 = acreditacion_recidencia2;
        this.testimonio_egel2 = testimonio_egel2;
        this.documento_titulacion2 = documento_titulacion2;
        this.constancia_no_incoveniencia2 = constancia_no_incoveniencia2;
        this.recibo_pago2 = recibo_pago2;
        this.dictamen_liberacion2 = dictamen_liberacion2;
        this.oficio_jurado2 = oficio_jurado2;
        this.plan_trabajo_asesorias2 = plan_trabajo_asesorias2;
        this.fecha_protocolo = fecha_protocolo;
    }

    

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getConvocatoria_idConvocatoria() {
        return Convocatoria_idConvocatoria;
    }

    public void setConvocatoria_idConvocatoria(String Convocatoria_idConvocatoria) {
        this.Convocatoria_idConvocatoria = Convocatoria_idConvocatoria;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getIdTipo_P() {
        return idTipo_P;
    }

    public void setIdTipo_P(String idTipo_P) {
        this.idTipo_P = idTipo_P;
    }

    public String getAsesor() {
        return asesor;
    }

    public void setAsesor(String asesor) {
        this.asesor = asesor;
    }

    public String getRevisor1() {
        return revisor1;
    }

    public void setRevisor1(String revisor1) {
        this.revisor1 = revisor1;
    }

    public String getRevisor2() {
        return revisor2;
    }

    public void setRevisor2(String revisor2) {
        this.revisor2 = revisor2;
    }

    public String getVocalsupl() {
        return vocalsupl;
    }

    public void setVocalsupl(String vocalsupl) {
        this.vocalsupl = vocalsupl;
    }

    public InputStream getAnteproyecto() {
        return Anteproyecto;
    }

    public void setAnteproyecto(InputStream Anteproyecto) {
        this.Anteproyecto = Anteproyecto;
    }

    public InputStream getProducto() {
        return producto;
    }

    public void setProducto(InputStream producto) {
        this.producto = producto;
    }

    public InputStream getAutorizacion_tema() {
        return autorizacion_tema;
    }

    public void setAutorizacion_tema(InputStream autorizacion_tema) {
        this.autorizacion_tema = autorizacion_tema;
    }

    public InputStream getRegistro_producto() {
        return registro_producto;
    }

    public void setRegistro_producto(InputStream registro_producto) {
        this.registro_producto = registro_producto;
    }

    public InputStream getKardex_avalado() {
        return kardex_avalado;
    }

    public void setKardex_avalado(InputStream kardex_avalado) {
        this.kardex_avalado = kardex_avalado;
    }

    public InputStream getAcreditacion_ingles() {
        return acreditacion_ingles;
    }

    public void setAcreditacion_ingles(InputStream acreditacion_ingles) {
        this.acreditacion_ingles = acreditacion_ingles;
    }

    public InputStream getLiberacion_servicio() {
        return liberacion_servicio;
    }

    public void setLiberacion_servicio(InputStream liberacion_servicio) {
        this.liberacion_servicio = liberacion_servicio;
    }

    public InputStream getAcreditacion_recidencia() {
        return acreditacion_recidencia;
    }

    public void setAcreditacion_recidencia(InputStream acreditacion_recidencia) {
        this.acreditacion_recidencia = acreditacion_recidencia;
    }

    public InputStream getTestimonio_egel() {
        return testimonio_egel;
    }

    public void setTestimonio_egel(InputStream testimonio_egel) {
        this.testimonio_egel = testimonio_egel;
    }

    public InputStream getDocumento_titulacion() {
        return documento_titulacion;
    }

    public void setDocumento_titulacion(InputStream documento_titulacion) {
        this.documento_titulacion = documento_titulacion;
    }

    public InputStream getConstancia_no_incoveniencia() {
        return constancia_no_incoveniencia;
    }

    public void setConstancia_no_incoveniencia(InputStream constancia_no_incoveniencia) {
        this.constancia_no_incoveniencia = constancia_no_incoveniencia;
    }

    public InputStream getRecibo_pago() {
        return recibo_pago;
    }

    public void setRecibo_pago(InputStream recibo_pago) {
        this.recibo_pago = recibo_pago;
    }

    public InputStream getDictamen_liberacion() {
        return dictamen_liberacion;
    }

    public void setDictamen_liberacion(InputStream dictamen_liberacion) {
        this.dictamen_liberacion = dictamen_liberacion;
    }

    public InputStream getOficio_jurado() {
        return oficio_jurado;
    }

    public void setOficio_jurado(InputStream oficio_jurado) {
        this.oficio_jurado = oficio_jurado;
    }

    public InputStream getPlan_trabajo_asesorias() {
        return plan_trabajo_asesorias;
    }

    public void setPlan_trabajo_asesorias(InputStream plan_trabajo_asesorias) {
        this.plan_trabajo_asesorias = plan_trabajo_asesorias;
    }

    public String getFecha_protocolo() {
        return fecha_protocolo;
    }

    public void setFecha_protocolo(String fecha_protocolo) {
        this.fecha_protocolo = fecha_protocolo;
    }

    public byte[] getAnteproyecto2() {
        return Anteproyecto2;
    }

    public void setAnteproyecto2(byte[] Anteproyecto2) {
        this.Anteproyecto2 = Anteproyecto2;
    }

    public byte[] getProducto2() {
        return producto2;
    }

    public void setProducto2(byte[] producto2) {
        this.producto2 = producto2;
    }

    public byte[] getAutorizacion_tema2() {
        return autorizacion_tema2;
    }

    public void setAutorizacion_tema2(byte[] autorizacion_tema2) {
        this.autorizacion_tema2 = autorizacion_tema2;
    }

    public byte[] getRegistro_producto2() {
        return registro_producto2;
    }

    public void setRegistro_producto2(byte[] registro_producto2) {
        this.registro_producto2 = registro_producto2;
    }

    public byte[] getKardex_avalado2() {
        return kardex_avalado2;
    }

    public void setKardex_avalado2(byte[] kardex_avalado2) {
        this.kardex_avalado2 = kardex_avalado2;
    }

    public byte[] getAcreditacion_ingles2() {
        return acreditacion_ingles2;
    }

    public void setAcreditacion_ingles2(byte[] acreditacion_ingles2) {
        this.acreditacion_ingles2 = acreditacion_ingles2;
    }

    public byte[] getLiberacion_servicio2() {
        return liberacion_servicio2;
    }

    public void setLiberacion_servicio2(byte[] liberacion_servicio2) {
        this.liberacion_servicio2 = liberacion_servicio2;
    }

    public byte[] getAcreditacion_recidencia2() {
        return acreditacion_recidencia2;
    }

    public void setAcreditacion_recidencia2(byte[] acreditacion_recidencia2) {
        this.acreditacion_recidencia2 = acreditacion_recidencia2;
    }

    public byte[] getTestimonio_egel2() {
        return testimonio_egel2;
    }

    public void setTestimonio_egel2(byte[] testimonio_egel2) {
        this.testimonio_egel2 = testimonio_egel2;
    }

    public byte[] getDocumento_titulacion2() {
        return documento_titulacion2;
    }

    public void setDocumento_titulacion2(byte[] documento_titulacion2) {
        this.documento_titulacion2 = documento_titulacion2;
    }

    public byte[] getConstancia_no_incoveniencia2() {
        return constancia_no_incoveniencia2;
    }

    public void setConstancia_no_incoveniencia2(byte[] constancia_no_incoveniencia2) {
        this.constancia_no_incoveniencia2 = constancia_no_incoveniencia2;
    }

    public byte[] getRecibo_pago2() {
        return recibo_pago2;
    }

    public void setRecibo_pago2(byte[] recibo_pago2) {
        this.recibo_pago2 = recibo_pago2;
    }

    public byte[] getDictamen_liberacion2() {
        return dictamen_liberacion2;
    }

    public void setDictamen_liberacion2(byte[] dictamen_liberacion2) {
        this.dictamen_liberacion2 = dictamen_liberacion2;
    }

    public byte[] getOficio_jurado2() {
        return oficio_jurado2;
    }

    public void setOficio_jurado2(byte[] oficio_jurado2) {
        this.oficio_jurado2 = oficio_jurado2;
    }

    public byte[] getPlan_trabajo_asesorias2() {
        return plan_trabajo_asesorias2;
    }

    public void setPlan_trabajo_asesorias2(byte[] plan_trabajo_asesorias2) {
        this.plan_trabajo_asesorias2 = plan_trabajo_asesorias2;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getConvocatoria() {
        return convocatoria;
    }

    public void setConvocatoria(String convocatoria) {
        this.convocatoria = convocatoria;
    }

    public String getPlanEstudio() {
        return planEstudio;
    }

    public void setPlanEstudio(String planEstudio) {
        this.planEstudio = planEstudio;
    }

    public String getResultadoCompleto() {
        return resultadoCompleto;
    }

    public void setResultadoCompleto(String resultadoCompleto) {
        this.resultadoCompleto = resultadoCompleto;
    }

    
    
}

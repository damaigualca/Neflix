/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Luis Carlos
 */
public class Alquiler { 
    private int id;
    private String socio;
    private String pelicula;
    private String fecha_inicio;
    private String fecha_fin;
    private String valor;
    private String fecha_entrega;
    private String sql;

    public Alquiler(String socio, String pelicula, String fecha_inicio, String fecha_fin, String valor,String fecha_entrega) {
        this.socio = socio;
        this.pelicula = pelicula;
        this.fecha_inicio = fecha_fin;
        this.fecha_fin = fecha_fin;
        this.valor = valor;
        this.fecha_entrega = fecha_entrega;
    }

    public Alquiler() {
        
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSocio() {
        return socio;
    }

    public void setSocio(String socio) {
        this.socio = socio;
    }

    public String getPelicula() {
        return pelicula;
    }

    public void setPelicula(String pelicula) {
        this.pelicula = pelicula;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public String getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(String fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }
    
    public void agregar() {
        sql="insert into alquiler(SOC_ID,PEL_ID,ALQ_FECHA_DESDE,ALQ_FECHA_HASTA,ALQ_VALOR,ALQ_FECHA_ENTREGA)values(?,?,?,?,?,?)";
    }
}

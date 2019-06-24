/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.util.Date;

/**
 *
 * @author PC
 */
public class Pelicula {
    private int id;
    private String nombre;
    private double costo;
    private Date fecha_estreno;

    public Pelicula() {
    }

    public Pelicula(int id, String nombre, double costo, Date fecha_estreno) {
        this.id = id;
        this.nombre = nombre;
        this.costo = costo;
        this.fecha_estreno = fecha_estreno;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public Date getFecha_estreno() {
        return fecha_estreno;
    }

    public void setFecha_estreno(Date fecha_estreno) {
        this.fecha_estreno = fecha_estreno;
    }
    
    
}

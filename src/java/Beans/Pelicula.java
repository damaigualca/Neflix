/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import com.mysql.jdbc.Blob;
import java.awt.Image;
import java.io.File;
import java.util.Date;

/**
 *
 * @author PC
 */
public class Pelicula implements Actions{
    private int id;
    private String nombre;
    private double costo;
    private String fecha_estreno;
    private String sql;
    private String genero;
    private String formato;
    private String director;
    private String imagen;

    public String getGenero() {
        return genero;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

  
    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public Pelicula() {
    }

    public Pelicula(int id, String nombre, double costo, String fecha_estreno, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.costo = costo;
        this.fecha_estreno = fecha_estreno;
        this.imagen = imagen;
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

    public String getFecha_estreno() {
        return fecha_estreno;
    }

    public void setFecha_estreno(String fecha_estreno) {
        this.fecha_estreno = fecha_estreno;
    }

    @Override
    public void agregar() {
        sql="insert into pelicula(GEN_ID,DIR_ID,FOR_ID,PEL_NOMBRE,PEL_COSTO,PEL_FECHA_ESTRENO,PEL_IMG)values(?,?,?,?,?,?,?)";
    }

    @Override
    public void delete(int id) {
        sql= "delete from pelicula where PEL_ID="+id;
    }

    @Override
    public void edit(int id) {
        sql= "select * from pelicula where PEL_ID="+id;
    }

    @Override
    public void update(int id) {
        sql= "update  pelicula set GEN_ID=?,DIR_ID=?,FOR_ID=?,PEL_NOMBRE=?,PEL_COSTO=?,PEL_FECHA_ESTRENO=?,PEL_IMG=? where PEL_ID="+id;
    }

    @Override
    public void list() {
        sql= "SELECT p.PEL_ID,p.PEL_IMG, p.PEL_NOMBRE,p.PEL_COSTO,p.PEL_FECHA_ESTRENO,g.GEN_NOMBRE,d.DIR_NOMBRE,f.FOR_NOMBRE FROM pelicula p,genero g, formato f,director d WHERE p.GEN_ID=g.GEN_ID AND p.DIR_ID=d.DIR_ID AND p.FOR_ID=f.FOR_ID ";
    }

    @Override
    public void select(String columna) {
        sql="select * from "+columna;
    }
    
    
}

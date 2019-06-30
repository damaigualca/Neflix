/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author PC
 */
public class Director implements Actions{
     private int id;
   private String nombre;
   private String sql;

    public Director() {
    }

    public Director(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
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

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    @Override
    public void agregar() {
        sql="insert into director(DIR_NOMBRE)values(?)";
    }

    @Override
    public void delete(int id) {
        sql= "delete from director where DIR_ID="+id;
    }

    @Override
    public void edit(int id) {
        sql= "select * from director where DIR_ID="+id;
    }

    @Override
    public void update(int id) {
        sql= "update  director set DIR_NOMBRE=? where DIR_ID="+id;
    }

    @Override
    public void list() {
        sql= "select * from director";
    }

    @Override
    public void select(String columna) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

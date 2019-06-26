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
public class Actor implements Actions{
   private int id;
   private String nombre;
   private String sql;
   private String sexo;

    public Actor() {
    }

    public Actor(int id, String nombre, String sql, String sexo) {
        this.id = id;
        this.nombre = nombre;
        this.sql = sql;
        this.sexo = sexo;
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

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    @Override
    public void agregar() {
        sql="insert into actor(SEX_ID,ACT_NOMBRE)values(?,?)";
    }

    @Override
    public void delete(int id) {
        sql= "delete from actor where ACT_ID="+id;
    }

    @Override
    public void edit(int id) {
        sql= "select * from actor where ACT_ID="+id;
    }

    @Override
    public void update(int id) {
        sql= "update  actor set ACT_NOMBRE=?,SEX_ID=? where ACT_ID="+id;
    }

    @Override
    public void list() {
        sql= "select * from actor";
    }
   
}

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
public class Socio implements Actions{
    private int id;
    private String cedula;
    private String nombre;
    private String direccion;
    private String telefono;
    private String correo;
    
    private String sql;

    public Socio() {
    }

    public Socio(int id, String cedula, String nombre, String direccion, String telefono, String correo) {
        this.id = id;
        this.cedula = cedula;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
    }

    public Socio(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    @Override
    public void agregar(){
       sql="insert into socio(SOC_CEDULA,SOC_NOMBRE,SOC_DIRECCION,SOC_TELEFONO,SOC_CORREO)values(?,?,?,?,?)";
    }
    @Override
    public void edit(int id){
       sql= "select * from socio where SOC_ID="+id;
    }
    @Override
    public void delete(int id){
       sql= "delete from socio where SOC_ID="+id;
    }
    @Override
    public void update(int id){
       sql= "update  socio set SOC_CEDULA=?,SOC_NOMBRE=?,SOC_DIRECCION=?,SOC_TELEFONO=?,SOC_CORREO=? where SOC_ID="+id;
    }

    @Override
    public void list() {
        sql= "select * from socio";
    }
    
}

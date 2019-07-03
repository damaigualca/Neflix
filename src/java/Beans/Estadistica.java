/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author LIBET
 */
public class Estadistica {

    private String sql;
    private String desde;
    private String hasta;

    public Estadistica() {
    }

    public String getDesde() {
        return desde;
    }

    public void setDesde(String desde) {
        this.desde = desde;
    }

    public String getHasta() {
        return hasta;
    }

    public void setHasta(String hasta) {
        this.hasta = hasta;
    }

    public Estadistica(String sql) {
        this.sql = sql;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    //El la estadisca de todos los socios que alquilan
    public void EstadisticaSocioAlquiler() {
        sql = "SELECT s.soc_nombre AS socio, COUNT( * ) AS num FROM alquiler a, socio s WHERE a.soc_id = s.soc_id GROUP BY a.soc_id ";
    }

    //peliculas que más se han alquilado
    public void EstadisticaPeliculaAlquiler() {
        sql = "SELECT p.pel_nombre AS pelicula, COUNT( * ) AS num FROM alquiler a, pelicula p WHERE p.pel_id = a.pel_id GROUP BY a.pel_id";
    }
    public void EstadisticaAlquiler() {
        sql = "SELECT * from alquiler";
    }

    //muestra el valor total de cada pelicula
    public void EstadisticaCostoPeliculas() {
        sql = "SELECT p.pel_nombre AS pelicula, COUNT( * ) * p.pel_costo AS costo\n"
                + "FROM alquiler a, pelicula p\n"
                + "WHERE p.pel_id = a.pel_id\n"
                + "GROUP BY a.pel_id";
    }

    public void EstadisticaFechaAlquiler() {
        sql = "SELECT p.pel_nombre AS pelicula, s.soc_nombre AS socio, a.alq_fecha_desde AS fecha, a.alq_fecha_hasta AS fecha1 , a.alq_valor\n"
                + "FROM alquiler a, pelicula p, socio s\n"
                + "WHERE p.pel_id = a.pel_id\n"
                + "AND a.soc_id = s.soc_id\n"
                + "AND a.alq_fecha_desde\n"
                + "BETWEEN  '" + desde + "' AND '" + hasta+"'";
    }
}

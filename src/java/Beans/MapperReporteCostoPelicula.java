/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author LIBET
 */
public class MapperReporteCostoPelicula implements RowMapper<Reporte> {

    @Override
    public Reporte mapRow(ResultSet rs, int i) throws SQLException {
    Reporte rep= new Reporte();
   rep.setLabel(rs.getString("pelicula"));
   rep.setValor(rs.getDouble("costo"));
   
        return rep;
    
    }
    
}

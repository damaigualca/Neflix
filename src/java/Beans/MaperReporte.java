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
public class MaperReporte implements RowMapper<Reporte>{
    Reporte rep= new Reporte();
    
    @Override
    public Reporte mapRow(ResultSet rs, int i) throws SQLException {
    rep.setLabel(rs.getString("socio"));
    rep.setValor(rs.getDouble("num"));
        return rep;
    }
    
    
}
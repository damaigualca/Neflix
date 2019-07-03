/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Estadistica;
import Beans.MaperReporte;
import Beans.Reporte;
import Config.Conexion;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author LIBET
 */
@Controller
public class EstadisticaController {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    
    @RequestMapping(value = "/admin/estadisticas.htm", method = RequestMethod.GET)
    public ModelAndView SocioAlquiler(Estadistica s) {
        mav.clear();
        s.EstadisticaSocioAlquiler();
        String sql = s.getSql();
        datos = this.jdbcTemplate.queryForList(sql);
        
        mav.addObject("lista", datos);
        
        
        s.EstadisticaPeliculaAlquiler();
        String sql1 = s.getSql();
        
        List <Reporte> lista = this.jdbcTemplate.query(sql, new MaperReporte());
        String[] labels = new String[lista.size()];
        double[] valores = new double[lista.size()];
         for (int i = 0; i < lista.size(); i++) {
                labels[i] = "'"+lista.get(i).getLabel()+"'";
                valores[i] = lista.get(i).getValor();
            }
        
        mav.addObject("label", Arrays.toString(labels));
        mav.addObject("valor", Arrays.toString(valores));
        

        

        s.EstadisticaAlquiler();
        String sql3 = s.getSql();
        datos = this.jdbcTemplate.queryForList(sql3);
        mav.addObject("listaAlq", datos);
        
        s.EstadisticaCostoPeliculas();
        String sql2 = s.getSql();
        datos = this.jdbcTemplate.queryForList(sql2);
        mav.addObject("listaPeliCosto", datos);
        mav.setViewName("admin/estadisticas");
        return mav;
    }

    @RequestMapping(value = "/admin/estadisticas.htm", method = RequestMethod.POST)
    public ModelAndView SocioAlquiler1( Estadistica sa
            ) {
        

        sa.EstadisticaFechaAlquiler();
        String sql2 = sa.getSql();
        datos = this.jdbcTemplate.queryForList(sql2);
        System.out.println(datos);
        mav.addObject("listaFechaAlquiler", datos);
        mav.setViewName("admin/estadisticas");
        return mav;
        

    }

}

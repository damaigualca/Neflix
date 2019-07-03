/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Alquiler;
import Beans.Pelicula;
import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author PC
 */
@Controller
public class AlquilerController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    
    List datos;
    
    @RequestMapping(value =  "/admin/alquoler/listaAlquiler.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Alquiler p){   
        p.list();
        String sql= p.getSql();
        datos= this.jdbcTemplate.queryForList(sql);
        System.out.println(sql);
        mav.addObject("lista",datos);
        mav.setViewName("admin/alquoler/listaAlquiler");
        return mav;
    }
}

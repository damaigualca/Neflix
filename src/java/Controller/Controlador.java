/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Pelicula;
import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.client.match.MockRestRequestMatchers.method;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author PC
 */
@Controller
public class Controlador {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    @RequestMapping(value =  "index1.htm", method = RequestMethod.GET )
    public ModelAndView Listar(){   
        String sql= "select * from actor";
        
        List datos= this.jdbcTemplate.queryForList(sql);
        System.out.println(datos);
      
        mav.addObject("lista",datos);
        mav.setViewName("/index1");
        return mav;
    }
    @RequestMapping(value="agregar.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Pelicula());
        mav.setViewName("agregar");
        return mav;
    }
    @RequestMapping(value="agregar.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Pelicula p ){
        String sql="insert into pelicula()values()";
        mav.addObject(new Pelicula());
        mav.setViewName("agregar");
        return mav;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Pelicula;
import Beans.Socio;
import Config.Conexion;
import com.sun.net.httpserver.HttpServer;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
public class SocioController {
     Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos;
    
    @RequestMapping(value =  "/admin/socio/listaSocio.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Socio s){
        s.list();
        String sql= s.getSql();
        
        datos= this.jdbcTemplate.queryForList(sql);
        System.out.println(datos);
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/socio/listaSocio");
        return mav;
    }
    @RequestMapping(value="/admin/socio/agregarSocio.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Socio());
        mav.setViewName("admin/socio/agregarSocio");
        return mav;
    }
    @RequestMapping(value="/admin/socio/agregarSocio.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Socio s ){
        s.agregar();
        String sql=s.getSql();
        this.jdbcTemplate.update(sql, s.getCedula(),s.getNombre(),s.getDireccion(),s.getTelefono(),s.getCorreo());
        
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
    }
    @RequestMapping(value="/admin/socio/editarSocio.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Socio s ){
        id= Integer.parseInt(request.getParameter("id"));
        s.edit(id);
        String sql= s.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("admin/socio/editarSocio");
        
        return mav ;
    }
    @RequestMapping(value="/admin/socio/editarSocio.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Socio s ){
        s.update(id);
        String sql=s.getSql();
        this.jdbcTemplate.update(sql, s.getCedula(),s.getNombre(),s.getDireccion(),s.getTelefono(),s.getCorreo());
         
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
        
    }
    @RequestMapping("/admin/socio/eliminarSocio.htm")
    public ModelAndView Delete(HttpServletRequest request,Socio s){
        id= Integer.parseInt(request.getParameter("id"));
        
        s.delete(id);
        String sql= sql= s.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
    }
}

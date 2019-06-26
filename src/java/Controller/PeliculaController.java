/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Actor;
import Beans.Pelicula;
import Beans.Sexo;
import Config.Conexion;
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
public class PeliculaController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos,datos1,datos2;
    @RequestMapping(value =  "/admin/pelicula/listaPelicula.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Pelicula p){   
        p.list();
        String sql= p.getSql();
        
        
        List datos= this.jdbcTemplate.queryForList(sql);
       
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/pelicula/listaPelicula");
        return mav;
    }
    @RequestMapping(value="/admin/pelicula/agregarPelicula.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Pelicula());
        
        
        String sql= "select * from genero";
         datos= this.jdbcTemplate.queryForList(sql);
         mav.addObject("listaG",datos);
         String sql1= "select * from director";
         datos1= this.jdbcTemplate.queryForList(sql1);
         mav.addObject("listaD",datos1);
         String sql2= "select * from formato";
         datos2= this.jdbcTemplate.queryForList(sql2);
         mav.addObject("listaF",datos2);
        mav.setViewName("admin/pelicula/agregarPelicula");
        return mav;
         
    }
    @RequestMapping(value="/admin/pelicula/agregarPelicula.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Pelicula p ){
       
        p.agregar();
        String sql=p.getSql();
        this.jdbcTemplate.update(sql, p.getGenero(),p.getDirector(),p.getFormato(),p.getNombre(),p.getCosto(),p.getFecha_estreno());
        
        return new ModelAndView("redirect:/admin/pelicula/listaPelicula.htm") ;
    }
    @RequestMapping(value="/admin/actor/editarActor.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Actor a ){
        id= Integer.parseInt(request.getParameter("id"));
        a.edit(id);
        String sql= a.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         String sql1="select * from sexo";
         datos1= this.jdbcTemplate.queryForList(sql1);
        mav.addObject("lista",datos);
        mav.addObject("listaS",datos1);
        mav.setViewName("admin/actor/editarActor");
        
        return mav ;
    }
    @RequestMapping(value="/admin/actor/editarActor.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Actor a ){
        a.update(id);
        String sql=a.getSql();
        this.jdbcTemplate.update(sql, a.getNombre(),a.getSexo());
         
        return new ModelAndView("redirect:/admin/actor/listaActor.htm") ;
        
    }
    @RequestMapping("/admin/actor/eliminarActor.htm")
    public ModelAndView Delete(HttpServletRequest request,Actor a){
        id= Integer.parseInt(request.getParameter("id"));
        
        a.delete(id);
        String sql= sql= a.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/actor/listaActor.htm") ;
    }
}

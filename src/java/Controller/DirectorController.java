/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Director;
import Beans.Formato;
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
public class DirectorController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos,datos1;
    @RequestMapping(value =  "/admin/director/listaDirector.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Director f){
        f.list();
        String sql= f.getSql();
        
        List datos= this.jdbcTemplate.queryForList(sql);
       
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/director/listaDirector");
        return mav;
    }
    @RequestMapping(value="/admin/director/agregarDirector.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Director());
        mav.setViewName("admin/director/agregarDirector");
        return mav;
         
    }
    @RequestMapping(value="/admin/director/agregarDirector.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Director f ){
       
        f.agregar();
        String sql=f.getSql();
        this.jdbcTemplate.update(sql,f.getNombre());
        
        return new ModelAndView("redirect:/admin/director/listaDirector.htm") ;
    }
    @RequestMapping(value="/admin/director/editarDirector.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Director a ){
        id= Integer.parseInt(request.getParameter("id"));
        a.edit(id);
        String sql= a.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         
        mav.addObject("lista",datos);
        
        mav.setViewName("admin/director/editarDirector");
        
        return mav ;
    }
    @RequestMapping(value="/admin/director/editarDirector.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Director a ){
        a.update(id);
        String sql=a.getSql();
        this.jdbcTemplate.update(sql, a.getNombre());
         
        return new ModelAndView("redirect:/admin/director/listaDirector.htm") ;
        
    }
    @RequestMapping("/admin/director/eliminarDirector.htm")
    public ModelAndView Delete(HttpServletRequest request,Director a){
        id= Integer.parseInt(request.getParameter("id"));
        
        a.delete(id);
        String sql= sql= a.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/director/listaDirector.htm") ;
    }
}

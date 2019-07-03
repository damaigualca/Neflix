/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Formato;
import Beans.Genero;
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
public class GeneroController {
 Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos,datos1;
    @RequestMapping(value =  "/admin/genero/listaGenero.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Genero f){
        f.list();
        String sql= f.getSql();
        
        List datos= this.jdbcTemplate.queryForList(sql);
       
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/genero/listaGenero");
        return mav;
    }
    @RequestMapping(value="/admin/genero/agregarGenero.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Genero());
        mav.setViewName("admin/genero/agregarGenero");
        return mav;
         
    }
    @RequestMapping(value="/admin/genero/agregarGenero.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Genero f ){
       
        f.agregar();
        String sql=f.getSql();
        this.jdbcTemplate.update(sql,f.getNombre());
        
        return new ModelAndView("redirect:/admin/genero/listaGenero.htm") ;
    }
    @RequestMapping(value="/admin/genero/editarGenero.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Genero a ){
        id= Integer.parseInt(request.getParameter("id"));
        a.edit(id);
        String sql= a.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         
        mav.addObject("lista",datos);
        
        mav.setViewName("admin/genero/editarGenero");
        
        return mav ;
    }
    @RequestMapping(value="/admin/genero/editarGenero.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Genero a ){
        a.update(id);
        String sql=a.getSql();
        this.jdbcTemplate.update(sql, a.getNombre());
         
        return new ModelAndView("redirect:/admin/genero/listaGenero.htm") ;
        
    }
    @RequestMapping("/admin/genero/eliminarGenero.htm")
    public ModelAndView Delete(HttpServletRequest request,Genero a){
        id= Integer.parseInt(request.getParameter("id"));
        
        a.delete(id);
        String sql= sql= a.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/genero/listaGenero.htm") ;
    }   
}

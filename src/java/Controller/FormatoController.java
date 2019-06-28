/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Actor;
import Beans.Formato;
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
public class FormatoController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos,datos1;
    @RequestMapping(value =  "/admin/formato/listaFormato.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Formato f){
        f.list();
        String sql= f.getSql();
        
        List datos= this.jdbcTemplate.queryForList(sql);
       
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/formato/listaFormato");
        return mav;
    }
    @RequestMapping(value="/admin/formato/agregarFormato.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Formato());
        mav.setViewName("admin/formato/agregarFormato");
        return mav;
         
    }
    @RequestMapping(value="/admin/formato/agregarFormato.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Formato f ){
       
        f.agregar();
        String sql=f.getSql();
        this.jdbcTemplate.update(sql,f.getNombre());
        
        return new ModelAndView("redirect:/admin/formato/listaFormato.htm") ;
    }
    @RequestMapping(value="/admin/formato/editarFormato.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Formato a ){
        id= Integer.parseInt(request.getParameter("id"));
        a.edit(id);
        String sql= a.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         
        mav.addObject("lista",datos);
        
        mav.setViewName("admin/formato/editarFormato");
        
        return mav ;
    }
    @RequestMapping(value="/admin/formato/editarFormato.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Formato a ){
        a.update(id);
        String sql=a.getSql();
        this.jdbcTemplate.update(sql, a.getNombre());
         
        return new ModelAndView("redirect:/admin/formato/listaFormato.htm") ;
        
    }
    @RequestMapping("/admin/formato/eliminarFormato.htm")
    public ModelAndView Delete(HttpServletRequest request,Formato a){
        id= Integer.parseInt(request.getParameter("id"));
        
        a.delete(id);
        String sql= sql= a.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/formato/listaFormato.htm") ;
    }
}

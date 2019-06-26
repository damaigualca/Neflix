/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Actor;
import Beans.Pelicula;
import Beans.Sexo;
import Beans.Socio;
import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
public class ActorController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos,datos1;
    @RequestMapping(value =  "/admin/actor/listaActor.htm", method = RequestMethod.GET )
    public ModelAndView Listar(){   
        String sql= "select * from actor";
        
        List datos= this.jdbcTemplate.queryForList(sql);
        System.out.println(datos);
      
        mav.addObject("lista",datos);
        mav.setViewName("admin/actor/listaActor");
        return mav;
    }
    @RequestMapping(value="/admin/actor/agregarActor.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Actor());
        mav.addObject(new Sexo());
        
        String sql= "select * from sexo";
         datos= this.jdbcTemplate.queryForList(sql);
         mav.addObject("lista",datos);
        mav.setViewName("admin/actor/agregarActor");
        return mav;
         
    }
    @RequestMapping(value="/admin/actor/agregarActor.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Actor a ){
       
        a.agregar();
        String sql=a.getSql();
        this.jdbcTemplate.update(sql, a.getSexo(),a.getNombre());
        
        return new ModelAndView("redirect:/admin/actor/listaActor.htm") ;
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

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
    public ModelAndView Listar(){   
        String sql= "select * from socio";
        
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
        String sql="insert into socio(SOC_CEDULA,SOC_NOMBRE,SOC_DIRECCION,SOC_TELEFONO,SOC_CORREO)values(?,?,?,?,?)";
        this.jdbcTemplate.update(sql, s.getCedula(),s.getNombre(),s.getDireccion(),s.getTelefono(),s.getCorreo());
        
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
    }
    @RequestMapping(value="/admin/socio/editarSocio.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request ){
        id= Integer.parseInt(request.getParameter("id"));
        String sql= "select * from socio where SOC_ID="+id;
         datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("admin/socio/editarSocio");
        
        return mav ;
    }
    @RequestMapping(value="/admin/socio/editarSocio.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Socio s ){
        
        String sql= "update  socio set SOC_CEDULA=?,SOC_NOMBRE=?,SOC_DIRECCION=?,SOC_TELEFONO=?,SOC_CORREO=? where SOC_ID="+id;
        this.jdbcTemplate.update(sql, s.getCedula(),s.getNombre(),s.getDireccion(),s.getTelefono(),s.getCorreo());
         
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
        
    }
    @RequestMapping("/admin/socio/eliminarSocio.htm")
    public ModelAndView Delete(HttpServletRequest request){
        id= Integer.parseInt(request.getParameter("id"));
        String sql= "delete from socio where SOC_ID="+id;
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/socio/listaSocio.htm") ;
    }
}

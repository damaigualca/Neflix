/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Actor;
import Beans.Alquiler;
import Beans.Pelicula;
import Beans.Sexo;
import Config.Conexion;
import java.awt.Image;
import java.awt.Toolkit;
import java.sql.Blob;
import java.util.List;
import java.util.Map;
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
    List datosQ,datos,datos1,datos2;
    Pelicula pel_aux= new Pelicula();
    @RequestMapping(value =  "/admin/pelicula/listaPelicula.htm", method = RequestMethod.GET )
    public ModelAndView Listar(Pelicula p){   
        p.list();
        String sql= p.getSql();
        datos= this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("admin/pelicula/listaPelicula");
        return mav;
    }
    @RequestMapping(value="/admin/pelicula/agregarPelicula.htm", method=RequestMethod.GET)
    public ModelAndView  Agregar(){
        mav.addObject(new Pelicula());
        pel_aux.select("genero");
        String sql= pel_aux.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         mav.addObject("listaG",datos);
         pel_aux.select("director");
         String sql1= pel_aux.getSql();
         datos1= this.jdbcTemplate.queryForList(sql1);
         mav.addObject("listaD",datos1);
         pel_aux.select("formato");
         String sql2= pel_aux.getSql();
         datos2= this.jdbcTemplate.queryForList(sql2);
         mav.addObject("listaF",datos2);
        mav.setViewName("admin/pelicula/agregarPelicula");
        return mav;
         
    }
    @RequestMapping(value="/admin/pelicula/agregarPelicula.htm", method=RequestMethod.POST)
    public ModelAndView  Agregar(Pelicula p ){
        p.agregar();
        String sql=p.getSql();
        this.jdbcTemplate.update(sql, p.getGenero(),p.getDirector(),p.getFormato(),p.getNombre(),p.getCosto(),p.getFecha_estreno(),p.getImagen());
        
        return new ModelAndView("redirect:/admin/pelicula/listaPelicula.htm") ;
    }
    @RequestMapping(value="/admin/pelicula/editarPelicula.htm", method=RequestMethod.GET)
    public ModelAndView  Editar(HttpServletRequest request, Pelicula p ){
        id= Integer.parseInt(request.getParameter("id"));
        p.edit(id);
        String sqlQ= p.getSql();
        datosQ= this.jdbcTemplate.queryForList(sqlQ);
        mav.addObject("listaQ",datosQ);
        pel_aux.select("genero");
         String sql= pel_aux.getSql();
         datos= this.jdbcTemplate.queryForList(sql);
         mav.addObject("listaG",datos);
         pel_aux.select("director");
         String sql1= pel_aux.getSql();
         datos1= this.jdbcTemplate.queryForList(sql1);
         mav.addObject("listaD",datos1);
         pel_aux.select("formato");
         String sql2= pel_aux.getSql();
         datos2= this.jdbcTemplate.queryForList(sql2);
         mav.addObject("listaF",datos2);
        mav.setViewName("admin/pelicula/editarPelicula");
        
        return mav ;
    }
    @RequestMapping(value="/admin/pelicula/editarPelicula.htm", method=RequestMethod.POST)
    public ModelAndView  Editar(Pelicula p ){
        p.update(id);
        String sql=p.getSql();
        this.jdbcTemplate.update(sql, p.getGenero(),p.getDirector(),p.getFormato(),p.getNombre(),p.getCosto(),p.getFecha_estreno(),p.getImagen());        
        return new ModelAndView("redirect:/admin/pelicula/listaPelicula.htm") ;    
    }
    @RequestMapping("/admin/pelicula/eliminarPelicula.htm")
    public ModelAndView Delete(HttpServletRequest request,Pelicula p){
        id= Integer.parseInt(request.getParameter("id"));
        
        p.delete(id);
        String sql= p.getSql();
          this.jdbcTemplate.update(sql);
        
        return new ModelAndView("redirect:/admin/pelicula/listaPelicula.htm") ;
    }
    
    @RequestMapping(value =  "/admin/pelicula/alquilarPelicula.htm", method = RequestMethod.GET )
    public ModelAndView Alquilar(HttpServletRequest request,Pelicula p){
       
    
        p.list();
        String sql= p.getSql();
        List datos= this.jdbcTemplate.queryForList("SELECT p.PEL_ID,p.PEL_NOMBRE AS PEL_NOMBRE, p.PEL_COSTO, p.PEL_FECHA_ESTRENO, p.PEL_IMG,g.GEN_NOMBRE, d.DIR_NOMBRE, f.FOR_NOMBRE FROM pelicula p, genero g, director d, formato f WHERE p.GEN_ID=g.GEN_ID AND p.DIR_ID=d.DIR_ID AND p.FOR_ID=f.FOR_ID  ");
        System.out.println(datos.toString());
        mav.addObject("lista",datos);
        mav.setViewName("admin/pelicula/alquilarPelicula");
        return mav;
    }
    
    @RequestMapping(value="/admin/pelicula/guardarPelicula.htm", method=RequestMethod.GET)
    public ModelAndView Guardar(HttpServletRequest request){
        int aux = 0;
        String[] peliculas2 =  request.getParameterValues("array");
        String validacion = "";
        if(request.getParameterValues("array")!=null){
              System.out.println("entra");
              String[] peliculas = request.getParameterValues("array");
             
        for(String favorito: peliculas)
            peliculas2 = favorito.split(",");
           
         for(String favorito: peliculas2){
            if(aux == 0){
                validacion = validacion + favorito;
            }else{
                validacion = validacion + " OR PEL_ID="+favorito;
            }
            aux++;
         }
            
           datos= this.jdbcTemplate.queryForList("SELECT p.PEL_ID, p.PEL_COSTO, p.PEL_NOMBRE FROM pelicula p WHERE PEL_ID="+validacion);
           System.out.println(validacion);
           mav.addObject("lista",datos);
        
        
         id= 1;
         pel_aux.select("socio");
         String sql2= pel_aux.getSql();
         datos2= this.jdbcTemplate.queryForList(sql2);
         mav.addObject("listaF",datos2);
         }  
        mav.setViewName("admin/pelicula/guardarPelicula");
        return mav;
    }
    @RequestMapping(value="/admin/pelicula/guardarPelicula.htm", method=RequestMethod.POST)
    public ModelAndView  Guardar(Alquiler p ){
        
        p.agregar();
        String[] socio = p.getSocio().split(",");
        String[] entrega = p.getFecha_entrega().split(",");
        String[] inicio = p.getFecha_inicio().split(",");
        String[] fin = p.getFecha_fin().split(",");
        String[] pelicula = p.getPelicula().split(",");
        String[] valor= p.getValor().split(",");
        for(int i=0; i<socio.length;i++){
            String sql=p.getSql();
            this.jdbcTemplate.update(sql, socio[i],pelicula[i],inicio[i],fin[i],valor[i],null); 
        }
        //System.out.println(p.getSocio()+"Socio"+p.getFecha_entrega()+"fecha entre"+p.getFecha_inicio()+"fecha inicio"+p.getFecha_fin()+"fecha fin");
       
        return new ModelAndView("redirect:/admin/pelicula/alquilarPelicula.htm") ;    
    }
    
}

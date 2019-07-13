/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.api;

import Beans.Pelicula;
import Config.Conexion;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author PC
 */
@RestController
//@RequestMapping(value = "/api")
public class PeliculaApiController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
List datos;
@RequestMapping(value = "/api/pelicula",method = RequestMethod.GET)
    @SuppressWarnings("empty-statement")
    public ResponseEntity<List<Pelicula>>  Listar() {
        Pelicula p= new Pelicula();
        p.list();
         String sql= p.getSql();
        datos= this.jdbcTemplate.queryForList(sql);
        System.out.println(datos);
        return new ResponseEntity<List<Pelicula>>(datos, HttpStatus.OK); 
        }
    

}

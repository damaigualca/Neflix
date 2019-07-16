/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.Estadistica;
import Beans.MaperReporte;
import Beans.MapperReporteCostoPelicula;
import Beans.Reporte;
import Beans.ReporteCostoPelicula;
import Config.Conexion;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author LIBET
 */
@Controller
public class EstadisticaController {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    
    @RequestMapping(value = "/admin/estadisticas.htm", method = RequestMethod.GET)
    public ModelAndView SocioAlquiler(Estadistica s) {
        mav.clear();
       //grafico 1
       s.EstadisticaSocioAlquiler();
        String sql=s.getSql();
List <Reporte> lista = this.jdbcTemplate.query(sql, new MaperReporte());
        String[] labels = new String[lista.size()];
        double[] valores = new double[lista.size()];
         for (int i = 0; i < lista.size(); i++) {
                labels[i] = "'"+lista.get(i).getLabel()+"'";
               valores[i] = lista.get(i).getValor();
         }
        mav.addObject("lista", lista);
        System.out.println(Arrays.toString(labels));
        mav.addObject("label", Arrays.toString(labels));
        mav.addObject("valor", Arrays.toString(valores));
        //grafico 2
        s.EstadisticaCostoPeliculas(); 
        String sql2 = s.getSql();
        
        List <Reporte> listaPelicula=this.jdbcTemplate.query(sql2, new MapperReporteCostoPelicula());
         String[] labelsCosto = new String[listaPelicula.size()];
        double[] valoresCosto = new double[listaPelicula.size()];
        for (int i = 0; i < listaPelicula.size(); i++) {
                labelsCosto[i] = "'"+listaPelicula.get(i).getLabel()+"'";
               valoresCosto[i] = listaPelicula.get(i).getValor();
         }
         System.out.println(Arrays.toString(labelsCosto));
        mav.addObject("labelsCosto", Arrays.toString(labelsCosto));
        mav.addObject("valoresCosto", Arrays.toString(valoresCosto));   
        
        datos=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("lista1", datos);
        //Lista años
        Map<String, String> aniosList = new HashMap<String, String>();

        for(int i=0; i<11; i++){
            aniosList.put(String.valueOf(LocalDate.now().plusYears(i).getYear()), String.valueOf(LocalDate.now().plusYears(i).getYear()));
        }
        System.out.println("salida" + aniosList);
       mav.addObject("aniosList", aniosList);
   
        return mav;
    }

    @RequestMapping(value = "/admin/estadisticas.htm", method = RequestMethod.POST)
    public ModelAndView SocioAlquiler1( Estadistica sa
            ) {
        
        
        sa.EstadisticaFechaAlquiler();
        String sql2 = sa.getSql();
        datos = this.jdbcTemplate.queryForList(sql2);
        System.out.println(datos);
        mav.addObject("listaFechaAlquiler", datos);
        mav.setViewName("admin/estadisticas");
        return mav;
        

    }
@RequestMapping(value = "/admin/gainbyyear.htm", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody List <Reporte> gainByYear(@RequestBody List <Reporte> listaGanancia) {
        System.out.println("error aqui");
            Reporte rep= new Reporte();
        rep.setLabel("hola");
        rep.setValor(23);
        List <Reporte> listarep= new ArrayList<>();
        listarep.add(rep);
	return	listarep;
	}
}


package Controller;

import Beans.Login;
import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    Conexion con= new Conexion();
    JdbcTemplate jdbcTemplate= new  JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int id;
    List datos;
     @RequestMapping(value = "login.htm", method = RequestMethod.GET)
  public String login() {
        return "login";
    
  }
  @RequestMapping(value = "login.htm", method = RequestMethod.POST)
  public ModelAndView login( Login login) {
    
    login.validateUser();
    String sql= login.getSql();
    datos= null;
    datos= this.jdbcTemplate.queryForList(sql);
    mav.addObject(datos);
    if (!mav.isEmpty() ) {
       mav.clear();
    return new ModelAndView("redirect:/admin/indexAdmin.htm") ;
    } else {
        mav.addObject("message", "Username or Password is wrong!!");
        mav.clear();
        return new ModelAndView("redirect:/login.htm") ;
    }
    
  }

}

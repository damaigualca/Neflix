/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author PC
 */
public class Login {
    private String id;
    private String username;
    private String password;
    private String sql;

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public Login() {
    }

    public Login(String id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void validateUser() {
     sql = "select * from admin where ADM_USER='" + getUsername() + "' and ADM_PASS='" + getPassword()
    + "'";
        
    }

    
}

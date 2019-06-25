/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author PC
 */
public interface Actions {
    public void agregar();
    public void delete(int id);
    public void edit(int id);
    public void update(int id);
    public void list();
}

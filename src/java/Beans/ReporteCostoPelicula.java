/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author LIBET
 */
public class ReporteCostoPelicula {
    private String label;
    private double valor;

    public ReporteCostoPelicula() {
    }

    public ReporteCostoPelicula(String label, double valor) {
        this.label = label;
        this.valor = valor;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

   
    
}

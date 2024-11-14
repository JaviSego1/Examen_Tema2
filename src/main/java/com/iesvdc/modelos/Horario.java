package com.iesvdc.modelos;


public class Horario {
    private int id;
    private int instalacion;
    private String inicio;
    private String fin;

    // Constructor
    public Horario(int id, int instalacion, String inicio, String fin) {
        this.id = id;
        this.instalacion = instalacion;
        this.inicio = inicio;
        this.fin = fin;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInstalacion() {
        return instalacion;
    }

    public void setInstalacion(int instalacion) {
        this.instalacion = instalacion;
    }

    public String getInicio() {
        return inicio;
    }

    public void setInicio(String inicio) {
        this.inicio = inicio;
    }

    public String getFin() {
        return fin;
    }

    public void setFin(String fin) {
        this.fin = fin;
    }


    @Override
    public String toString() {
        return "Venta{id=" + id + ", instalacion=" + instalacion + ", inicio=" + inicio + ", fin=" + fin + "}";
    }
}



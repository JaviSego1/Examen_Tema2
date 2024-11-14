package com.iesvdc.modelos;

public class Reserva {

    private int id;
    private int usuario;
    private int horario;
    private String fecha;

    // Constructor
    public Reserva(int id, int usuario, int horario, String fecha) {
        this.id = id;
        this.usuario = usuario;
        this.horario = horario;
        this.fecha = fecha;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }

    public int getHorario() {
        return horario;
    }

    public void setHorario(int horario) {
        this.horario = horario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }


    @Override
    public String toString() {
        return "Venta{id=" + id + ", usuario=" + usuario + ", horario=" + horario + ", fecha=" + fecha + "}";
    }
    
}

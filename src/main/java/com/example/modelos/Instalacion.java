package com.example.modelos;

public class Instalacion {
    private int id;
    private String nombre;

    // Constructor
    public Instalacion(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Producto{id=" + id + ", nombre='" + nombre + "}";
    }
}



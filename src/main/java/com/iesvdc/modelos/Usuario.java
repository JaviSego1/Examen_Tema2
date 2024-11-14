package com.iesvdc.modelos;

public class Usuario {
    private int id;
    private String user_name;
    private String password;
    private String email;

    // Constructor
    public Usuario(int id, String user_name, String password, String email) {
        this.id = id;
        this.user_name = user_name;
        this.password = password;
        this.email = email;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return user_name;
    }

    public void setNombre(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setContraseña(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Usuario{id=" + id + ", nombre='" + user_name + "', contraseña='" + password + "', email=" + email + "}";
    }
}




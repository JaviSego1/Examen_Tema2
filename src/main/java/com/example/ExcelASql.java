package com.example;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.example.modelos.Horario;
import com.example.modelos.Usuario;
import com.example.modelos.Instalacion;
import com.example.modelos.Reserva;

public class ExcelASql {
    
    // Método para generar el archivo SQL
    public static void generarSQL(List<Usuario> usuarios, List<Instalacion> instalaciones, List<Horario> horarios, List<Reserva> reservas) throws IOException {
        FileWriter writer = new FileWriter("C:\\Users\\mañana\\Desktop\\demo\\src\\main\\java\\com\\example\\stack\\scripts\\initdb.sql");

        // Crear base de datos y seleccionarla
        writer.write("CREATE DATABASE IF NOT EXISTS `reservas`;\n\n");
        writer.write("USE `reservas`;\n\n");

        // Crear tabla de 'Usuarios'
        writer.write("CREATE TABLE Usuarios (\n");
        writer.write("    id INT PRIMARY KEY,\n");
        writer.write("    user_name VARCHAR(50),\n");
        writer.write("    password VARCHAR(65),\n");
        writer.write("    email VARCHAR(80)\n");
        writer.write(");\n\n");

        // Insertar datos de 'Usuarios'
        for (Usuario usuario : usuarios) {
            writer.write(String.format("INSERT INTO Usuarios (id, user_name, password, email) VALUES (%d, '%s', '%s', '%s');\n",
                    usuario.getId(), usuario.getNombre(), usuario.getPassword(), usuario.getEmail()));
        }

        writer.write("\n");

        // Crear tabla de 'Instalacion'
        writer.write("CREATE TABLE Instalacion (\n");
        writer.write("    id INT PRIMARY KEY,\n");
        writer.write("    nombre VARCHAR(50)\n");
        writer.write(");\n\n");

        // Insertar datos de 'Instalacion'
        for (Instalacion instalacion : instalaciones) {
            writer.write(String.format("INSERT INTO Instalacion (id, nombre) VALUES (%d, '%s');\n",
                    instalacion.getId(), instalacion.getNombre()));
        }

        writer.write("\n");

        // Crear tabla de 'Horario'
        writer.write("CREATE TABLE Horario (\n");
        writer.write("    id INT PRIMARY KEY,\n");
        writer.write("    instalaciones INT,\n");
        writer.write("    inicio VARCHAR(10),\n");
        writer.write("    fin VARCHAR(10)\n");
        writer.write(");\n\n");

        // Insertar datos de 'Ventas'
        for (Horario horario : horarios) {
            writer.write(String.format("INSERT INTO Horario (id, instalaciones, inicio, fin) VALUES (%d, %d, '%s', '%s');\n",
                    horario.getId(), horario.getInstalacion(), horario.getInicio(), horario.getFin()));
        }

        writer.write("\n");

        // Crear tabla de 'Reserva'
        writer.write("CREATE TABLE Reserva (\n");
        writer.write("    id INT PRIMARY KEY,\n");
        writer.write("    usuario INT,\n");
        writer.write("    horario INT,\n");
        writer.write("    fecha DATE\n");
        writer.write(");\n\n");

        // Insertar datos de 'Reserva'
        for (Reserva reserva : reservas) {
            writer.write(String.format("INSERT INTO Reserva (id, usuario, horario, fecha) VALUES (%d, %d, %d, '%s');\n",
                    reserva.getId(), reserva.getUsuario(), reserva.getHorario(), reserva.getFecha()));
        }

        writer.close();
    }

    // Método para leer el archivo Excel y cargar los datos en las listas
    public static List<Usuario> leerUsuarios(Sheet usuariosSheet) {
        List<Usuario> usuarios = new ArrayList<>();
        for (Row row : usuariosSheet) {
            if (row.getRowNum() == 0) continue;  // Saltar encabezado

            Cell cellId = row.getCell(0);
            Cell cellUser_name = row.getCell(1);
            Cell cellPassword = row.getCell(2);
            Cell cellEmail = row.getCell(3);

            if (cellId != null && cellUser_name != null && cellPassword != null && cellEmail != null) {
                int id = (int) cellId.getNumericCellValue();
                String user_name = cellUser_name.getStringCellValue();
                String password = cellPassword.getStringCellValue();
                String email = cellEmail.getStringCellValue();
                usuarios.add(new Usuario(id, user_name, password, email));
            }
        }
        return usuarios;
    }

    public static List<Instalacion> leerInstalacion(Sheet productosSheet) {
        List<Instalacion> instalaciones = new ArrayList<>();
        for (Row row : productosSheet) {
            if (row.getRowNum() == 0) continue;  // Saltar encabezado

            Cell cellId = row.getCell(0);
            Cell cellNombre = row.getCell(1);

            if (cellId != null && cellNombre != null) {
                int id = (int) cellId.getNumericCellValue();
                String nombre = cellNombre.getStringCellValue();
                instalaciones.add(new Instalacion(id, nombre));
            }
        }
        return instalaciones;
    }

    public static List<Horario> leerHorarios(Sheet ventasSheet) {
        List<Horario> horarios = new ArrayList<>();
        for (Row row : ventasSheet) {
            if (row.getRowNum() == 0) continue;  // Saltar encabezado

            Cell cellId = row.getCell(0);
            Cell cellInstalacion = row.getCell(1);
            Cell cellInicio = row.getCell(2);
            Cell cellFin = row.getCell(3);

            if (cellId != null && cellInstalacion != null && cellInicio != null && cellFin != null) {
                int id = (int) cellId.getNumericCellValue();
                int instalacion = (int) cellInstalacion.getNumericCellValue();
                String inicio = cellInicio.getStringCellValue();
                String fin = cellFin.getStringCellValue();

                horarios.add(new Horario(id, instalacion, inicio, fin));

            }

        }
            return horarios;
    }

        public static List<Reserva> leerReservas(Sheet productosSheet) {
            List<Reserva> reservas = new ArrayList<>();
            for (Row row : productosSheet) {
                if (row.getRowNum() == 0) continue;  // Saltar encabezado
    
                Cell cellId = row.getCell(0);
                Cell cellUsuario = row.getCell(1);
                Cell cellHorario = row.getCell(2);
                Cell cellFecha = row.getCell(3);
    
                if (cellId != null && cellUsuario != null && cellHorario != null && cellFecha != null) {
                    int id = (int) cellId.getNumericCellValue();
                    int usuario = (int) cellUsuario.getNumericCellValue();
                    int horario = (int) cellHorario.getNumericCellValue();
                    // Leer la fecha como String
                    String fecha = "";
                    if (cellFecha.getCellType() == CellType.STRING) {
                        fecha = cellFecha.getStringCellValue();
                    } else if (cellFecha.getCellType() == CellType.NUMERIC) {
                        fecha = cellFecha.getDateCellValue().toString(); // Convertir a string en el formato predeterminado
                    }
                    reservas.add(new Reserva(id, usuario, horario, fecha));
                }
            }
            return reservas;
        }


    
    public static void ejecutarConsulta(String consultaSQL) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:33310/reservas", "root", "9127836901");
             Statement stmt = conn.createStatement()) {
            ResultSet rs = stmt.executeQuery(consultaSQL);

            // Mostrar los resultados de la consulta
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    System.out.print(rs.getString(i) + "\t");
                }
                System.out.println();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Método principal
    public static void main(String[] args) throws IOException {
        FileInputStream fis = new FileInputStream(new File("C:\\Users\\mañana\\Desktop\\demo\\reservas.xlsx"));
        XSSFWorkbook workbook = new XSSFWorkbook(fis);

        // Leer las hojas de Excel y convertirlas en listas
        List<Usuario> usuarios = leerUsuarios(workbook.getSheet("Usuario"));
        List<Instalacion> instalacion = leerInstalacion(workbook.getSheet("Instalacion"));
        List<Horario> horarios = leerHorarios(workbook.getSheet("Horario"));
        List<Reserva> reservas = leerReservas(workbook.getSheet("Reserva"));

        // Generar el archivo SQL
        generarSQL(usuarios, instalacion, horarios, reservas);

        // Cerrar recursos
        workbook.close();
        fis.close();

        System.out.println("\nEl archivo SQL ha sido generado con éxito.\n");

        // Menú de consultas
        Scanner scanner = new Scanner(System.in);
        System.out.println("Selecciona una consulta para ejecutar:");
        System.out.println("1. Ver todos los usuarios");
        System.out.println("2. Ver todos los productos");
        System.out.println("3. Ver todas las ventas");
        System.out.print("Ingresa el número de la consulta: ");
        int opcion = scanner.nextInt();

        switch (opcion) {
            case 1:
                ejecutarConsulta("SELECT * FROM Usuarios;");
                break;
            case 2:
                ejecutarConsulta("SELECT * FROM Productos;");
                break;
            case 3:
                ejecutarConsulta("SELECT * FROM Ventas;");
                break;
            default:
                System.out.println("Opción inválida.");
        }
        scanner.close();
    }
}




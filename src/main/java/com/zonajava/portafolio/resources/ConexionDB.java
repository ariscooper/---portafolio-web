package com.zonajava.portafolio.resources;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    
    // Obtener URL de base de datos desde variables de entorno
    private static String getDatabaseURL() {
        String url = System.getenv("DATABASE_URL");
        if (url == null || url.isEmpty()) {
            // Desarrollo local - MySQL
            return "jdbc:mysql://localhost:3306/portafolio_db?useSSL=false&serverTimezone=UTC";
        }
        return url;
    }
    
    // Obtener usuario desde variables de entorno
    private static String getDBUser() {
        String user = System.getenv("DB_USER");
        return user != null ? user : "root";
    }
    
    // Obtener contraseña desde variables de entorno
    private static String getDBPassword() {
        String password = System.getenv("DB_PASSWORD");
        return password != null ? password : "";
    }
    
    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            String url = getDatabaseURL();
            String user = getDBUser();
            String password = getDBPassword();
            
            // Detectar si es PostgreSQL o MySQL
            if (url.contains("postgresql")) {
                Class.forName("org.postgresql.Driver");
                // PostgreSQL usa la URL completa con credenciales incluidas
                conn = DriverManager.getConnection(url);
            } else {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
            }
            
            System.out.println("✅ Conexión exitosa a la base de datos");
            
        } catch (ClassNotFoundException e) {
            System.err.println("❌ Error: Driver de base de datos no encontrado");
            e.printStackTrace();
            throw new SQLException("Driver no encontrado", e);
        } catch (SQLException e) {
            System.err.println("❌ Error de conexión: " + e.getMessage());
            throw e;
        }
        return conn;
    }
    
    // Método para probar la conexión
    public static boolean testConnection() {
        try (Connection conn = getConnection()) {
            if (conn != null && !conn.isClosed()) {
                System.out.println("✅ La conexión está activa");
                return true;
            }
        } catch (SQLException e) {
            System.err.println("❌ Error probando conexión: " + e.getMessage());
        }
        return false;
    }
}

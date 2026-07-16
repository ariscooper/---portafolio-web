package com.zonajava.portafolio.resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/api/clases")
public class ClaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        // Agregar CORS para permitir peticiones desde el frontend
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        
        JSONArray jsonArray = new JSONArray();
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(
                 "SELECT * FROM clases WHERE activo = TRUE ORDER BY orden ASC")) {
            
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                JSONObject clase = new JSONObject();
                clase.put("id", rs.getInt("id"));
                clase.put("titulo", rs.getString("titulo"));
                clase.put("descripcion", rs.getString("descripcion"));
                clase.put("categoria", rs.getString("categoria"));
                clase.put("imagen", rs.getString("imagen"));
                clase.put("enlace", rs.getString("enlace"));
                clase.put("github", rs.getString("github"));
                clase.put("orden", rs.getInt("orden"));
                
                jsonArray.put(clase);
            }
            
            rs.close();
            
        } catch (SQLException e) {
            System.err.println("❌ Error obteniendo clases: " + e.getMessage());
            e.printStackTrace();
            
            // Enviar error JSON
            JSONObject error = new JSONObject();
            error.put("error", "Error al obtener las clases");
            error.put("mensaje", e.getMessage());
            
            response.setStatus(500);
            PrintWriter out = response.getWriter();
            out.print(error.toString());
            out.flush();
            return;
        }
        
        // Enviar respuesta exitosa
        PrintWriter out = response.getWriter();
        out.print(jsonArray.toString());
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
        // Aquí podrías agregar lógica para crear nuevas clases
        JSONObject respuesta = new JSONObject();
        respuesta.put("mensaje", "Método POST no implementado aún");
        
        PrintWriter out = response.getWriter();
        out.print(respuesta.toString());
        out.flush();
    }
    
    // Manejar preflight requests de CORS
    @Override
    protected void doOptions(HttpServletRequest request, HttpServletResponse response) {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        response.setStatus(200);
    }
}
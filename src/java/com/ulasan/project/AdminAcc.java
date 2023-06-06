package com.ulasan.project;
import java.sql.*;

//Class ini dipakai pada admin_settings.jsp
public class AdminAcc {
    private Connection conn;

    public AdminAcc() {
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet getAdminData() throws SQLException {
        String query = "SELECT * FROM public.\"admin\"";
        Statement statement = conn.createStatement();
        return statement.executeQuery(query);
    }
}
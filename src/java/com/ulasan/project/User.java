package com.ulasan.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class User {
    private String name;
    private String email;

    public User(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public void saveUser() throws ClassNotFoundException, SQLException {
        Connection con;
        PreparedStatement pst;

        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
        pst = con.prepareStatement("insert into public.\"user\"(name, email) values(?,?);");

        pst.setString(1, name);
        pst.setString(2, email);
        pst.executeUpdate();

        pst.close();
        con.close();
    }
}

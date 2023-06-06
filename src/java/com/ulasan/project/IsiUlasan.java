package com.ulasan.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//class ini dipakai di index untuk input data-data ulasan
public class IsiUlasan {
    private String message;

    public IsiUlasan(String message) {
        this.message = message;
    }

    public void saveUlasan() throws ClassNotFoundException, SQLException {
        Connection con;
        PreparedStatement pst;

        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
        pst = con.prepareStatement("insert into public.\"ulasan\"(message, tanggal) values(?, current_timestamp);");

        pst.setString(1, message);
        pst.executeUpdate();

        pst.close();
        con.close();
    }
}

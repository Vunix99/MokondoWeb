package com.ulasan.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UpdateMenu {
    private Connection con;
    private PreparedStatement pst;
    private ResultSet rs;

    public UpdateMenu() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateMenu(Menu menu) {
        try {
            pst = con.prepareStatement("UPDATE public.\"menu\" SET nama_menu = ?, harga = ? WHERE id_menu = ?");
            pst.setString(1, menu.getNamaMenu());
            pst.setInt(2, menu.getHarga());
            pst.setString(3, menu.getIdMenu());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Menu getMenuById(String idMenu) {
        Menu menu = null;
        try {
            pst = con.prepareStatement("SELECT * FROM public.\"menu\" WHERE id_menu = ?");
            pst.setString(1, idMenu);
            rs = pst.executeQuery();
            if (rs.next()) {
                String namaMenu = rs.getString("nama_menu");
                int harga = rs.getInt("harga");
                menu = new Menu(idMenu, namaMenu, harga);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menu;
    }

    public void close() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

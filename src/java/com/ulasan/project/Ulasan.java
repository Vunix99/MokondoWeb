package com.ulasan.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Ulasan {
    private int noUlasan;
    private String tanggal;
    private String nama;
    private String email;
    private String pesan;

    public Ulasan(int noUlasan, String tanggal, String nama, String email, String pesan) {
        this.noUlasan = noUlasan;
        this.tanggal = tanggal;
        this.nama = nama;
        this.email = email;
        this.pesan = pesan;
    }
    
    public int getNoUlasan(){
        return noUlasan;
    }
    
    public String getTanggal(){
        return tanggal;
    }
    
    public String getNama(){
    return nama;
    }
    
    public String getEmail(){
    return email;
    }
    
    public String getPesan(){
    return pesan;
    }
    
       
    


    // Metode untuk mengambil data ulasan dari database
    public static List<Ulasan> getAllUlasan() {
        List<Ulasan> ulasanList = new ArrayList<>();

        try {
            Connection conn;
            PreparedStatement pst;
            ResultSet rs;
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");

            String panggil = "SELECT * FROM public.\"user\" INNER JOIN public.\"ulasan\" ON \"user\".user_id = \"ulasan\".user_id;";
            Statement st = conn.createStatement();
            rs = st.executeQuery(panggil);

            while (rs.next()) {
                int noUlasan = rs.getInt("no_ulasan");
                String tanggal = rs.getString("tanggal");
                String nama = rs.getString("name");
                String email = rs.getString("email");
                String pesan = rs.getString("message");

                Ulasan ulasan = new Ulasan(noUlasan, tanggal, nama, email, pesan);
                ulasanList.add(ulasan);
            }

            conn.close();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

        return ulasanList;
    }

    // Metode untuk menghapus ulasan dari database
    public static void deleteUlasan(int user_id) {
        try {
            Connection conn;
            PreparedStatement pst;
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");

            String deleteQuery = "DELETE FROM public.\"ulasan\" WHERE user_id = ?";
            pst = conn.prepareStatement(deleteQuery);
            pst.setInt(1, user_id);
            pst.executeUpdate();

            conn.close();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}
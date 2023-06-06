package com.ulasan.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResetPasswordController {
    public void changePassword(String username, String newPassword) throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement pst = null;
        
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
            pst = con.prepareStatement("UPDATE public.\"admin\" SET password = ? WHERE username = ?");
            pst.setString(1, newPassword);
            pst.setString(2, username);
            pst.executeUpdate();  
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
}

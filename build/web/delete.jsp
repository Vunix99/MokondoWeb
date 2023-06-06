<%-- 
    Document   : delete
    Created on : May 20, 2023, 10:14:11 PM
    Author     : Glorian Beda
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List, com.ulasan.project.Ulasan"%>
        <script>
            
            alert("Data terhapus");
            window.location.href="admin_main.jsp";
       
       </script>
<%
    int user_id = Integer.parseInt(request.getParameter("user_id"));
    Ulasan.deleteUlasan(user_id);
    response.sendRedirect("admin_main.jsp");
%>

        

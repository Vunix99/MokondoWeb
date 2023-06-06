<%-- 
    Document   : update_menu
    Created on : May 25, 2023, 6:58:33 PM
    Author     : Glorian Beda
--%>
<!-- update_menu.jsp -->
<!-- update_menu.jsp -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.ulasan.project.Menu, com.ulasan.project.UpdateMenu"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="assets/css/style4.css">

    <!-- ===== BOX ICONS ===== -->

    <title>Reset Password</title>
    <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">
</head>
<body>
<%
    if (request.getParameter("submit") != null) {
        String idMenu = request.getParameter("id_menu");
        String namaMenu = request.getParameter("nama_menu");
        int harga = Integer.parseInt(request.getParameter("harga"));

        Menu menu = new Menu(idMenu, namaMenu, harga);
        UpdateMenu updateMenu = new UpdateMenu();
        updateMenu.updateMenu(menu);
%>
        <script>
            alert("Data menu berhasil diubah");
            window.location.href = "admin_setmenu.jsp";
        </script>
<%
    }

    String idMenu = request.getParameter("id_menu");
    UpdateMenu updateMenu = new UpdateMenu();
    // Mendapatkan data menu dari database berdasarkan ID menu
    Menu menu = updateMenu.getMenuById(idMenu);
%>
<div class="container">
    <form id="contact" action="" method="post">
        <h3>Edit menu</h3>
        <h4>Edit menu anda sesuai kebutuhan</h4>
        <fieldset>
            <input placeholder="" value="<%= menu.getNamaMenu() %>" name="nama_menu" id="nama_menu" type="text" tabindex="1" required autofocus>
        </fieldset>
        <fieldset>
            <input placeholder="" value="<%= menu.getHarga() %>" type="harga" name="harga" id="harga" tabindex="2" required>
        </fieldset>
        <fieldset>
            <button name="submit" value="submit" type="submit" id="submit">Submit</button>
        </fieldset>
    </form>
</div>
</body>
</html>


<%@ page import="com.ulasan.project.Ulasan" %>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Prolog Admin Dashboard</title>
    <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">

    <!-- Montserrat Font -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style3.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"/>
    
  </head>
  <body>
    <div class="grid-container">

      <!-- Header -->
      <header class="header">
        <div class="menu-icon" onclick="openSidebar()">
          <span class="material-icons-outlined" style="cursor: pointer;">menu</span>
        </div>
        <h3>Prolog Coffee</h3>
      </header>
      <!-- End Header -->

      <!-- Sidebar -->
      <aside id="sidebar">
        <div class="sidebar-title">
          <div class="sidebar-brand">
            <h5 style="margin-bottom: 0;">Menu</h5>
          </div>
          <span class="material-icons-outlined" style="cursor: pointer; "onclick="closeSidebar()">close</span>
        </div>

        <ul class="sidebar-list">
          <a href="admin_main.jsp">
          <li class="sidebar-list-item">
              <span class="material-icons-outlined">comment</span> Ulasan
            </a>
          </li>
          <a href="admin_setmenu.jsp">
          <li class="sidebar-list-item">
              <span class="material-icons-outlined">emoji_food_beverage</span> Ubah Catalog
            </a>
          <a href="admin_settings.jsp">
          <li class="sidebar-list-item">
              <span class="material-icons-outlined">settings</span> Admin Account
            </a>
          </li>
          <a href="home.jsp" target="_blank">
          <li class="sidebar-list-item">
              <span class="material-icons-outlined">logout</span> Kunjungi Situs
            </a>

        </ul>
      </aside>
      <!-- End Sidebar -->

      <!-- Main -->
      <main class="main-container">
        <div class="main-title">
          <p class="font-weight-bold">Data Ulasan</p>
        </div>

        <div class="charts">
          <div class="charts-card">
            <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
              <thead>
                  <tr>
                         <th>No Ulasan</th>
                         <th>Tanggal</th>
                         <th>Nama</th>
                         <th>Email</th>
                         <th>Pesan</th>
                         <th>Delete</th>
                  </tr>  
              </thead>
              <tbody>
                <%  
                  List<Ulasan> ulasanList = Ulasan.getAllUlasan();
                  for (Ulasan ulasan : ulasanList) {
                %>
                <tr>
                  <td><%= ulasan.getNoUlasan() %></td>
                  <td><%= ulasan.getTanggal() %></td>
                  <td><%= ulasan.getNama() %></td>
                  <td><%= ulasan.getEmail() %></td>
                  <td><%= ulasan.getPesan() %></td>
                  <td><a href="delete.jsp?user_id=<%= ulasan.getNoUlasan() %>" style="text-decoration: underline; color: red;">Delete</a></td>
                </tr>
                <% } %>
              </tbody>
            </table>    
          </div>
        </div>
      </main>
      <!-- End Main -->

      <!-- Scripts section -->
       <script>
        $(document).ready(function() {
            $('#tbl-student').DataTable( {
                "order": [[ 3, "desc" ]]
            } );
        } );
    </script>
    </div>
  </body>
</html>

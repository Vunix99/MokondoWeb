<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- ===== CSS ===== -->
        <link rel="stylesheet" href="assets/css/style2.css">
    
        <!-- ===== BOX ICONS ===== -->
        <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>

        <title>Welcome</title>
        <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">
    </head>
    <body>
        <div class="login">
            <div class="login__content">
                <div class="login__img">
                    <img src="assets/img/prologNight.jpg" style="border-radius: 1rem;" alt="">
                </div>

                <div class="login__forms">
                    <form action="" class="login__registre" id="login-in">
                        <h1 class="login__title">Admin Account Sign In</h1>
    
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Username" name="username" id="username" class="login__input">
                        </div>
    
                        <div class="login__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="Password" name="password" id="password" class="login__input">
                        </div>
                        <input type="submit" value="Login" name="login" id="login" class="login__button">

                        <div>
                            <span class="login__account">Not an admin ?</span>
                            <a href="home.jsp"><span class="login__signin" id="sign-up">Go to page</span></a>
                        </div>
                    </form>
    <%-- Establish database connection --%>
    <%
        // Import required packages
        // Assuming you are using MySQL database and JDBC 
        if(request.getParameter("login")!=null)
        {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog","postgres","admin");

            // Ambil data
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String error = "Username atau Password tidak sesuai! ";
    

            // Query
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM admin WHERE username='" + username + "' AND password='" + password + "'");

            // Cek validasi akun admin
            if(resultSet.next()) {
                //Jika user ada maka panggil admin_main
                response.sendRedirect("admin_main.jsp");
            } else {//kalo tidak ada, maka jalankan script:  %>
                <script>
                    alert("Username atau Password tidak sesuai! ");
                </script>
            <%}

            // Close database connection
            resultSet.close();
            statement.close();
            connection.close();
    }
    %>

                </div>
            </div>
        </div>

        <!--===== MAIN JS =====-->
        <script src="assets/js/login.js"></script>
    </body>
</html>
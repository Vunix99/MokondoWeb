<%@ page import="com.ulasan.project.ResetPasswordController" %>
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

    <title>Reset Password</title>
    <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">
</head>
<body>
    <div class="login">
        <div class="login__content">
            <div class="login__img">
                <img src="assets/img/prologNight.jpg" style="border-radius: 1rem;" alt="">
            </div>

            <div class="login__forms">
                <form action="resetpassword.jsp" method="post" class="login__registre" id="login-in">
                    <h1 class="login__title">Ubah Password</h1>

                    <div class="login__box">
                        <i class='bx bx-user login__icon'></i>
                        <input type="text" placeholder="Username" name="username" id="username" class="login__input">
                    </div>

                    <div class="login__box">
                        <i class='bx bx-lock-alt login__icon'></i>
                        <input type="text" placeholder="new Password" name="newpassword" id="newpassword" class="login__input">
                    </div>
                    <input type="submit" value="Ubah Password" name="change" id="change" class="login__button">
                </form>

                <%-- Handle form submission --%>
                <%
                if (request.getParameter("change") != null) {
                    try {
                        String username = request.getParameter("username");
                        String newPassword = request.getParameter("newpassword");

                        // Create controller object and call changePassword method
                        ResetPasswordController controller = new ResetPasswordController();
                        controller.changePassword(username, newPassword);


                        %>
                        <script >
                            alert("Data telah diproses! ");
                            window.location.href="admin_settings.jsp";
                        </script>
                    <%} catch (ClassNotFoundException | SQLException e) {
                        e.printStackTrace();
                    }
                }
                %>
            </div>
        </div>
    </div>

    <!--===== MAIN JS =====-->
    <script src="assets/js/login.js"></script>
</body>
</html>
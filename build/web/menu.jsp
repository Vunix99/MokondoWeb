<%-- 
    Document   : menu
    Created on : May 18, 2023, 6:54:51 PM
    Author     : Glorian Beda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Prolog</title>
    <!--=======SOURCE ICONS & CSS==========-->
     <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/22979ab279.js" crossorigin="anonymous"></script>
</head>
<body>
    <!-- Konek Database -->
    <%
    try {
        Connection conn;
        Statement st;
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/prolog", "postgres", "admin");
        st = conn.createStatement();
    %>

        <!--===== HEADER =====-->
        <header class="l-header">
            <nav class="nav bd-grid">
                <div>
                    <a href="home.jsp" class="nav__logo">Prolog coffee</a>
                </div>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="home.jsp" class="nav__link">Home</a></li>
                        <li class="nav__item"><a href="#signature" class="nav__link active">Signature</a></li>
                        <li class="nav__item"><a href="#kopi" class="nav__link">Kopi</a></li>
                        <li class="nav__item"><a href="#non-kopi" class="nav__link">Non-Kopi</a></li>
                    </ul>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-menu'></i>
                </div>
            </nav>
        </header>
    <!--===== MENU =====-->
<section class="menu section" id="signature">
    <!--==========KOPI Signature===============-->
    <div class="menu__container bd-grid">          
        <div>
            <h2 class="menu__subtitle2">Signature <span>Prolog</span></h2>
            <div class="work__container bd-grid">
                <%
                    String query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'S001';";
                    ResultSet rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/H6pRxFW" class="work__img">
                    <img src="assets/img/monolog.jpg" alt="Es Kopi Monolog">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'S002';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %> 
                
                <a href="https://gofood.link/a/HyJ4LBo" class="work__img">
                    <img src="assets/img/dialog.jpg" alt="Es Kopi Monolog">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'S003';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %> 
                <a href="https://gofood.link/a/HyJ7uSh" class="work__img">
                    <img src="assets/img/monolog-extra-shot.jpg" alt="Es Kopi Monolog Extra Shot">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>    
                    
            </div>
        </div>
    </div>
</section>
    <!--==========KOPI Variant===============-->
<section class="menu section" id="kopi">
    <div class="menu__container bd-grid">          
        <div>
            <h2 class="menu__subtitle2">Varian <span>Kopi</span></h2>
            <div class="work__container bd-grid">
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C001';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %> 
                <a href="https://gofood.link/a/HyJ6HAU" class="work__img">
                    <img src="assets/img/kopi-almond.jpg" alt="Es Kopi Almond">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %> 
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C002';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ3MMs" class="work__img">
                    <img src="assets/img/kopi-salt-caramel.jpg" alt="Es Kopi Caramel">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %> 
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C003';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ5KsG" class="work__img">
                    <img src="assets/img/irish-kopi.jpg" alt="Irish Kopi">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>    
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C004';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ8STN" class="work__img">
                    <img src="assets/img/kopi-pandan.jpg" alt="Es Kopi Pandan">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>     
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C005';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ664o" class="work__img">
                    <img src="assets/img/kopi-nutella.jpg" alt="Es Kopi Nutella">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>     
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C006';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ8qAm" class="work__img">
                    <img src="assets/img/kopi-berry.jpg" alt="Es Kopi Berry">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>     
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'C007';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="#kopi" class="work__img">
                    <img src="assets/img/kopi-banana.jpg" class="sold" alt="Es Kopi Banana">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="sold-out">Out of Stock</button>
                </a>
                <%
                     }
                      rs.close();
                %>     
            </div>
        </div>
    </div>
</section>
<!--=========Non Kopi==========-->
<section class="menu section" id="non-kopi">
    <div class="menu__container bd-grid">          
        <div>
            <h2 class="menu__subtitle2">Varian <span>Non-Kopi</span></h2>
            <div class="work__container bd-grid">
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N001';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ9uD7" class="work__img">
                    <img src="assets/img/fresh-tea.jpg" alt="Fresh Tea">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>    
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N002';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ9cfm" class="work__img">
                    <img src="assets/img/lemon-tea.jpg" alt="Lemon Tea">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %>       
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N003';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ5fNm" class="work__img">
                    <img src="assets/img/violent-tea.jpg" alt="Violent Tea">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %> 
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N004';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ6oLC" class="work__img">
                    <img src="assets/img/tea-on-berrys.jpg" alt="Tea on Berries">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %> 
               
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N005';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJanzw" class="work__img">
                    <img src="assets/img/matcha-latte.jpg" alt="Matcha Latte">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                     }
                      rs.close();
                %> 
                
                <%
                    query = "SELECT nama_menu, harga FROM menu WHERE menu.id_menu = 'N006';";
                    rs = st.executeQuery(query);
                    if (rs.next()) {
                %>
                <a href="https://gofood.link/a/HyJ9WZ3" class="work__img">
                    <img src="assets/img/pink-blossom.jpg" alt="Pink Blossom">
                    <h3><%=rs.getString("nama_menu")%></h3>
                    <h4>Rp<%=rs.getInt("harga")%></h4>
                    <button type="button" class="btn-buy">Buy Now</button>
                </a>
                <%
                    }
                      rs.close();
                    }catch (Exception e) {
                     e.printStackTrace();
                    }
                %> 
            </div>
        </div>
    </div>
</section>
        <!--===== MAIN JS =====-->
        <script src="https://unpkg.com/scrollreveal"></script>
        <script src="assets/js/main.js"></script>
</body>
</html>


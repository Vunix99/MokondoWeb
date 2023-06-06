<%-- 
    Document   : home
    Created on : May 16, 2023, 9:36:56 PM
    Author     : Glorian Beda
--%>

<%@ page import="com.ulasan.project.User" %>
<%@ page import="com.ulasan.project.IsiUlasan" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
if (request.getParameter("submit") != null) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String ulasan = request.getParameter("ulasan");

    User user = new User(name, email);
    user.saveUser();

    IsiUlasan objUlasan = new IsiUlasan(ulasan);
    objUlasan.saveUlasan();
%>
<script>
    alert("Masukkan anda kami terima, Terimakasih :)");
    window.location.href = "home.jsp";
</script>
<%
}
%>

   


   
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="icon" type="image/x-icon" href="assets/img/logoProlog.jpg">
        <!-- =====BOX ICONS===== -->
        <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://kit.fontawesome.com/22979ab279.js" crossorigin="anonymous"></script>
        <title>Prolog coffee website</title>
    </head>
    <body>
        <!--===== HEADER =====-->
        <header class="l-header">
            <nav class="nav bd-grid">
                <div>
                    <a href="#home" class="nav__logo">Prolog coffee</a>
                </div>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="#home" class="nav__link active">Home</a></li>
                        <li class="nav__item"><a href="#about" class="nav__link">About</a></li>
                        <li class="nav__item"><a href="#menu" class="nav__link">Menu</a></li>
                        <li class="nav__item"><a href="#event" class="nav__link">Event</a></li>
                        <li class="nav__item"><a href="#contact" class="nav__link">Contact</a></li>
                    </ul>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-menu'></i>
                </div>
            </nav>
        </header>

        <main class="l-main">
            <!--===== HOME =====-->
            <section class="home bd-grid" id="home">
                <div class="home__data">
                    <h1 class="home__title">Welcome,<br>To <span class="home__title-color">Prolog</span><br> Coffee</h1>
                </div>

                <div class="home__motto">
                    <h3 class="motto">"Kopi enak gak harus mahal"</h3>
                </div>

                <div class="home__img">
                    <svg class="home__blob" viewBox="0 0 479 467" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <mask id="mask0" mask-type="alpha">
                            <path d="M9.19024 145.964C34.0253 76.5814 114.865 54.7299 184.111 29.4823C245.804 6.98884 311.86 -14.9503 370.735 14.143C431.207 44.026 467.948 107.508 477.191 174.311C485.897 237.229 454.931 294.377 416.506 344.954C373.74 401.245 326.068 462.801 255.442 466.189C179.416 469.835 111.552 422.137 65.1576 361.805C17.4835 299.81 -17.1617 219.583 9.19024 145.964Z"/>
                        </mask>
                        <g mask="url(#mask0)">
                            <image class="home__blob-img" x="50" y="60" href="assets/img/monolog.jpg"/>
                        </g>
                    </svg>
                </div>
            </section>

            <!--===== ABOUT =====-->
            <section class="about section " id="about">
                <h2 class="section-title">About</h2>

                <div class="about__container bd-grid">
                    <div class="about__img">
                        <img src="assets/img/about.jpg" alt="">
                    </div>
                    
                    <div>
                        <h2 class="about__subtitle">Prolog Coffee</h2>
                        <p class="about__text">Kopi Prolog berdiri pada tanggal 25 November 2022. Berlandaskan Motto "Kopi enak gak harus mahal" prolog lebih menginginkan banyak konsumer ketika harganya ramah kantung, dibandingkan dengan menaruh harga yang tingii namun sepi konsumer. Kopi kami telah dinikmati banyak kalangan, selain itu kami juga menjual Dessert (pemesanan offline only). </p>           
                    </div>                                   
                </div>
            </section>

            <!--===== MENU =====-->
            <section class="menu section" id="menu">
                <h2 class="section-title">Menu</h2>

                <div class="menu__container bd-grid">          
                    <div>
                        <h2 class="menu__subtitle">Menu minuman & Dessert</h2>
                        <p class="menu__text">menu yang tersedia berbagai macam desert dan minuman di Prolog Coffee </p>
                        
                        <div class="work__container bd-grid">
                            <a href="https://gofood.link/a/HyJ3MMs" class="work__img">
                                <img src="assets/img/kopi-salt-caramel.jpg" alt="Kopi Salt Caramel">
                            </a>
                            <a href="https://gofood.link/a/HyJ4LBo" class="work__img">
                                <img src="assets/img/dialog.jpg" alt="Es Kopi Dialog">
                            </a>
                            <a href="https://gofood.link/a/HyJ5fNm" class="work__img">
                                <img src="assets/img/violent-tea.jpg" alt="Violent Tea">
                            </a>
                            <a href="https://gofood.link/a/HyJ5KsG" class="work__img">
                                <img src="assets/img/irish-kopi.jpg" alt="Irish Kopi">
                            </a>
                            <a href="https://gofood.link/a/HyJ664o" class="work__img">
                                <img src="assets/img/kopi-nutella.jpg" alt="Kopi Nutella">
                            </a>
                            <a href="https://gofood.link/a/HyJ6oLC" class="work__img">
                                <img src="assets/img/tea-on-berrys.jpg" alt="Tea on Berries">
                            </a>
                            
                        </div>
                    </div>
                </div>
            </section>
            <button type="button" class="btnserv"><span></span><a href="menu.jsp">Lihat Selengkapnya &#x27F6;</a></button>

            <!--===== Event =====-->
            <section class="event section" id="event">
                <h2 class="section-title">Event</h2>

                <div class="work__container bd-grid">
                    <a href="" class="work__img">
                        <img src="assets/img/event1.jpg" alt="Event 1">
                    </a>
                    <a href="" class="work__img">
                        <img src="assets/img/event2.jpg" alt="Event 2">
                    </a>
                    <a href="" class="work__img">
                        <img src="assets/img/event3.jpg" alt="Event 3">
                    </a>
                    <a href="" class="work__img">
                        <img src="assets/img/event4.jpg" alt="Event 4">
                    </a>
                </div>
            </section>

        <!--===== FOOTER =====-->
        <section class="contact section" id="contact">
            <div class="containerx">
                <div class="row">
                    <div class="contact-left">
                        <h1 class="sub-title">Contact Us</h1>
                        <div class="social-icons">
                            <a href="https://www.instagram.com/prologidn/"><i class="fa-brands fa-instagram"></i></a>
                            <a href="https://www.tiktok.com/@prologidn"><i class="fa-brands fa-tiktok"></i></a>
                        </div>
                        <br>
                        <h2 style="margin-bottom: 0rem;">Jam Buka</h2>
                        <h4 style="margin: 0 0;">Setiap Hari: 10.00 - 02.00</h3>
                        <iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3963.4518159967447!2d106.8045821!3d-6.5906281!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c5d609585c77%3A0x94e0dbab82922911!2sPROLOG%20KOPI!5e0!3m2!1sen!2sid!4v1684319775780!5m2!1sen!2sid" width="360" height="200" style="border:0; margin-top: 1rem;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    <div class="contact-right">
                        <h3>Ulasan & saran untuk kami</h3>
                        <form>
                            <input type="text" name="name" id="name "placeholder="Your Name" required>
                            <input type="email" name="email" id= "email" placeholder="Your Email" required>
                            <textarea name="ulasan" id="ulasan" rows="6" placeholder="Your Message"></textarea>
                            <button type="submit" id="submit" name="submit" class="btn-submit">Submit</button>
                        </form>
                </div>
            </div>
        
            </div>
        </section>


        <!--===== SCROLL REVEAL =====-->
        <script src="https://unpkg.com/scrollreveal"></script>

        <!--===== MAIN JS =====-->
        <script src="assets/js/main.js"></script>
        
    </body>
</html>

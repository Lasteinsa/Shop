<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<head>
    <title> About Us </title>
    <link rel="stylesheet" href="assets/css/Hashashin.css">
</head>
<body>
    <jsp:include page="assets/navbar.jsp"/>
    <div class="jumbotron jumbotron-fluid about text-white" style="background-color: #2b2e4a">
        <div class="container">
          <h1 class="display-4">About Us</h1>
          <p class="">This project is developed, maintained, and debugged by Team 1</p>
          <small><i> Tentang Kami. Projek ini dikembangkan, dipelihara, dan di-debug oleh Tim 1</i></small>
        </div>
    </div>
        <h3 class="mb-2 text-center"> Anggota Kelompok <hr></h3>
        <div class="d-flex justify-content-center">
            <div class="card-deck p-5">
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/einsa.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            Rubi Ahmad Fauzan
                            <br>
                            1911501656
                            <br>
                            <span class="font-italic text-danger">
                                Programmer
                            </span>
                        </p>
                    </div>
                </div>
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/dwi.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            Dwi Alfiyanti
                            <br>
                            1911501011
                            <br>
                            <span class="font-italic text-success">
                                Designer
                            </span>
                        </p>
                    </div>
                </div>
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/heru.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            Heru Saputro
                            <br>
                            1911501672
                            <br>
                            <span class="font-italic text-danger">
                                Programmer
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <div class="card-deck p-5">
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/ryo.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            Ryo Umar Wahid
                            <br>
                            1911500666
                            <br>
                            <span class="font-italic text-primary">
                                Database Administrator
                            </span>
                        </p>
                    </div>
                </div>
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/lina.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            Marlina Hidayat
                            <br>
                            1911501664
                            <br>
                            <span class="font-italic text-success">
                                Designer
                            </span>
                        </p>
                    </div>
                </div>
                <div class="card us catlogger" style="width: 18rem;">
                    <img class="card-img-top profiles" src="assets/images/profiles/daniel.jpg">
                    <div class="card-body">
                        <p class="card-text font-weight-bold">
                            M. Mustafa Daniel Noya
                            <br>
                            1911501581
                            <br>
                            <span class="font-italic text-primary">
                                Database Administrator
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <div style="margin-bottom: 70px;">

    </div>
</body>
<footer>
    <jsp:include page="assets/footer.jsp"/>
</footer>
<jsp:include page="assets/header.jsp"/>
<html>
    <head>
        <title>Home</title>
    </head>
    <body>
        <jsp:include page="assets/navbar.jsp"/>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="assets/images/highlight1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/highlight2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/highlight3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        <div id="catlog">
            <center><h3>Catalog</h3></center>
            <br><br>
            <div class="card-deck">
                <div class="card">
                  <img class="card-img-top" src="assets/images/galaxyA.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Galaxy A</h5>
                    <p class="card-text">The best Price to Performance</p>
                  </div>
                  <div class="card-footer">
                      <a href="GalaxyA.jsp" class="thelink">Learn More</a> <br>
                    <small class="text-muted">Powered by Samsung</small>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="assets/images/galaxyM.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Galaxy M</h5>
                    <p class="card-text">Long last battery life</p>
                  </div>
                  <div class="card-footer">
                      <a href="GalaxyM.jsp" class="thelink">Learn More</a> <br>
                    <small class="text-muted">Powered by Samsung</small>
                  </div>
                </div>
                <div class="card">
                  <img class="card-img-top" src="assets/images/galaxyS.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Galaxy S</h5>
                    <p class="card-text">The most Flagship that you can't buy. coz it's expensive</p>
                  </div>
                  <div class="card-footer">
                      <a href="GalaxyS.jsp" class="thelink">Learn More</a> <br>
                    <small class="text-muted">Powered by Samsung</small>
                  </div>
                </div>
            </div>
        </div>
        
        
        
        
        
        <script>
            $('.carousel').carousel({
                interval: 1200
              });
        </script>
    </body>
</html>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e1e5ea;">
    <a class="navbar-brand" href=""><img src="assets/images/logo.png" width="120px" class="d-inline-block align-top"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link mr-5" href="index.jsp">Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link mr-5" href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="GalaxyA.jsp">Galaxy A</a>
          <a class="dropdown-item" href="GalaxyM.jsp">Galaxy M</a>
          <a class="dropdown-item" href="GalaxyS.jsp">Galaxy S</a>
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link ml-5" href="about.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>About us</a>
      </li>
    </ul>
  </div>
  <%
      if (session.getAttribute("susername") != null) {
          %>
            <form action="logout.jsp" method="post" class="form-inline my-2 my-lg-0">
                <h6> Hello <%= session.getAttribute("sname") %> </h6>
                <button class="btn badge-danger mx-4 my-2 my-sm-0" type="submit" onclick="return confirm('Logout?')">Logout</button>
            </form>
          <%
      } else { %>
    <a href="loginpage.jsp" class="btn badge-primary mx-4 my-2 my-sm-0">Login</a>
            <%
        }%>
</nav>
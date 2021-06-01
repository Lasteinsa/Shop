<jsp:include page="assets/header.jsp"/>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Samsung Galaxy A</title>
    </head>
    <body>
        <jsp:include page="assets/navbar.jsp"/>
        <div class="welcome-b">
            <div class="row layer">
                <div class="row">
                  <div class="col-lg-12 col-sm-12 text-white">
                    <h2>Galaxy A</h2>
                    The Samsung Galaxy A series is a line of mid-range smartphones and tablets manufactured by Samsung Electronics as part of their Galaxy line. 
                    The first models in the series, the first-generation Samsung Galaxy A3 and A5, were introduced in December 2014 and released in March 2015.
                  </div>
                </div>
            </div>
        </div>
        <br>
    <div class="d-flex justify-content-center"><h2>Catalog</h2></div>
    <%
            String id = request.getParameter("id");
            if(id!=null)
            {
                String desc = request.getParameter("desc");
                Float price = new Float(request.getParameter("price"));
                cart.addItem(id, desc, price.floatValue(),1);
            }
        %>
        <div class="d-flex justify-content-center">
            <a href="cart.jsp">Shopping Cart Quantity @ </a>
        <%=
            cart.getNumOfItems()
                    %>
        </div>
        <hr width="80%">
        <div class="card-group">
        <%
            try {
            Koneksi konek = new Koneksi();
            Connection conn = konek.bukaKoneksi();
            Statement st = conn.createStatement();
            String sql = "select * from product where series = 'Series A'";
            ResultSet res = st.executeQuery(sql);
            while(res.next()) {
        %>
            <form method="post" action="GalaxyA.jsp">
                <div id="catlog">
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="assets/images/<%= res.getString(3)%>.jpg" alt="Card image cap">
                        <div class="card-body">
                          <h5 class="card-title"><%=res.getString(2)%></h5>
                          <p class="card-text"><%=res.getString(6)%></p>
                        </div>
                        <ul class="list-group list-group-flush">
                          <li class="list-group-item"><%=res.getString(4)%></li>
                          <li class="list-group-item">USD $ <%=res.getString(5)%></li>
                        </ul>
                        <div class="card-body">
                            <input type="hidden" name="id" value="<%= res.getString(1)%>">
                            <input type="hidden" name="desc" value="<%= res.getString(2)%>">
                            <input type="hidden" name="price" value="<%= res.getString(5)%>">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </form>
                <%  } } catch (Exception e) {
                    e.printStackTrace();
                    }
                %>
        </div>
        </div>
    </body>
</html>
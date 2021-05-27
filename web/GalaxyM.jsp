<jsp:include page="assets/header.jsp"/>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Samsung Galaxy M</title>
    </head>
    <body>
        <jsp:include page="assets/navbar.jsp"/>
        <div class="welcome">
            <div class="row layer">
                <div class="row">
                  <div class="col-lg-12 col-sm-12 text-white">
                    <h2>Galaxy M</h2>
                    The Samsung Galaxy M series is a line of online-exclusive budget smartphones manufactured by Samsung Electronics. 
                    The first models in the series, the Samsung Galaxy M10 and M20, were released on February 5, 2019; they were followed by the Samsung Galaxy M30 on March 7 and the Samsung Galaxy M40 on June 18. 
                    The Galaxy M10s and M30s were announced on September 18, and both were released on September 29.
                    The Galaxy M01 and M11 were released on June 2 and were available for sale on both online and offline platforms. On September 10, Samsung announced the Galaxy M51, the first upper mid-range model in the lineup.
                  </div>
                </div>
            </div>
        </div>
        <br>
    <center><h2>Catalog</h2></center>
        <%
            String id = request.getParameter("id");
            if(id!=null)
            {
                String desc = request.getParameter("desc");
                Float price = new Float(request.getParameter("price"));
                cart.addItem(id, desc, price.floatValue(),1);
            }
        %>
        <a href="cart.jsp">Shopping Cart Quantity</a>
        <%=
            cart.getNumOfItems()
                    %>
        <hr width="80%">
        <div class="card-group">
        <%
            try {
            Koneksi konek = new Koneksi();
            Connection conn = konek.bukaKoneksi();
            Statement st = conn.createStatement();
            String sql = "select * from product where series = 'Series M'";
            ResultSet res = st.executeQuery(sql);
            while(res.next()) {
        %>
            <form method="post" action="GalaxyS.jsp">
                <div id="catlog">
                    <div class="card" style="width: 18rem;">
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
    </body>
</html>
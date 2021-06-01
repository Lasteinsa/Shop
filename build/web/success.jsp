<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<head>
    <title>Success</title>
    
</head>
<body>
    <jsp:include page="assets/navbar.jsp"/>
    <%
        Enumeration e = cart.getEnumeration();
        String[] tmpItem;
        while(e.hasMoreElements())
        {
            tmpItem=(String[])e.nextElement();
            String mid = tmpItem[1];
            Koneksi konek = new Koneksi();
            Connection conn = konek.bukaKoneksi();
            Statement st = conn.createStatement();
            String sql = "select * from product where name = '"+mid+"'";
            ResultSet res = st.executeQuery(sql);
            while(res.next()) {
                String id = res.getString("id");
                cart.removeItem(id);
            }
        }
    %>
    <div class="card text-center" style="margin: 50px 20%">
        <div class="card-header">
          Information
        </div>
        <div class="card-body">
          <h5 class="card-title">Payment Successful</h5>
          <p class="card-text">Good Job! <%= session.getAttribute("sname") %>, 
              Your order has been successful without any problem!
              Be happy that package is on the way to destination. 
              <br>
              Happy Shopping
          </p>
          <a href="index.jsp" class="btn btn-primary">Shop Again?</a>
        </div>
    </div>
</body>
<footer>
    <jsp:include page="assets/footer.jsp"/>
</footer>
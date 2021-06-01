<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Koneksi konek = new Koneksi();
    Connection conn = konek.bukaKoneksi();
    Statement st = conn.createStatement();
    String sql = "select * from user where username = '"+username+"' and password = '"+password+"'";
    ResultSet res = st.executeQuery(sql);
    while(res.next()) {
        String suid         = res.getString("uid");
        String susername    = res.getString("username");
        String sname        = res.getString("name");

        session.setAttribute("suid",suid);
        session.setAttribute("susername",susername);
        session.setAttribute("sname",sname);

    }
    response.sendRedirect("index.jsp");
    %>
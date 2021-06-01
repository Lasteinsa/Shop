<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>

<head>
    <title>All Order</title>
    
</head>
<body>
    <jsp:include page="assets/navbar.jsp"/>
    <%
        if (session.getAttribute("susername") == null || session.getAttribute("susername").equals("")) {
            response.sendRedirect("pay.jsp");
        } else {
            String uid      = session.getAttribute("suid").toString();
            Koneksi konek   = new Koneksi();
            Connection conn = konek.bukaKoneksi();
            Statement st    = conn.createStatement();
            String sql      = "select * from transaction where uid = '"+uid+"'";
            ResultSet res   = st.executeQuery(sql);
            while(res.next()) {
            %>
            
                        
            <%
                }
        }
    %>
</body>
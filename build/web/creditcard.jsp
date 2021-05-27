<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<%
    try {
    String suid         = request.getParameter("suid");
    String idnumber     = request.getParameter("idnumber");
    String expired      = request.getParameter("expired");
    String cvc          = request.getParameter("cvc");
    String holder       = request.getParameter("holder");
    String total        = request.getParameter("total");
    String address      = request.getParameter("address");
    
    Koneksi konek = new Koneksi();
    Connection conn = konek.bukaKoneksi();
    Statement st = conn.createStatement();
    String sql = "insert into transaction (uid, idnumber, expired, cvc, holder, total, address) values ('"+suid+"', '"+idnumber+"', '"+expired+"', '"+cvc+"', '"+holder+"', '"+total+"', '"+address+"')";
    st.executeUpdate(sql);
    conn.close();
    response.sendRedirect("success.jsp");
    } catch (Exception e) {
        out.print(e);
    }
%>
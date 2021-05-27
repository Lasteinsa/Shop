<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<%
            String id = request.getParameter("id");
            if(id!=null)
            {
                cart.removeItem(id);
                response.sendRedirect("cart.jsp");  
            } else {
                out.print("Punten?");
            }
%>
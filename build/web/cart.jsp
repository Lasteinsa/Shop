<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <body>
        <jsp:include page="assets/navbar.jsp"/>
        <br><br>
        <div class="d-flex justify-content-center"><h2> My Cart Order </h2></div>
        <hr width="60%">
        <div class="thecart">
            <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col" style="width:25px;">No</th>
                    <th scope="col">Name Product</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                    <%
                        Enumeration e = cart.getEnumeration();
                        String[] tmpItem;
                        int I = 1;
                        while(e.hasMoreElements())
                        {
                            tmpItem=(String[])e.nextElement();
                    %>
                  <tr>
                    <th scope="row"><%= I %></th>
                    <td><%=tmpItem[1] %></td>
                    <td>$ <%=tmpItem[2] %></td>
                    <td>@<%=tmpItem[3] %></td>
                    <td>
                        <form method="post" action="remove.jsp">
                            <%
                                String mid = tmpItem[1];
                                Koneksi konek = new Koneksi();
                                Connection conn = konek.bukaKoneksi();
                                Statement st = conn.createStatement();
                                String sql = "select * from product where name = '"+mid+"'";
                                ResultSet res = st.executeQuery(sql);
                                while(res.next()) {
                                %>
                            <input type="hidden" name="id" value="<%= res.getString("id")%>">
                            <%
                                } %>
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Delete?')">Remove</button>
                        </form>
                    </td>
                  </tr>
                  <%
                      I++;
                    }
                %>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>$ <%= cart.getCost() %></td>
                </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>

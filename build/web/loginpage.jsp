<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<head>
    <title>Login</title>
</head>
<body>
    <%
        if (session.getAttribute("susername") == null || session.getAttribute("susername").equals("")) {
            %>
            <div style="margin: 50px 25%;" class="border border-dark bg-dark text-white py-5 px-5 rounded">
                <div class="d-flex justify-content-center mb-3">
                    <h2>Welcomeback</h2>
                </div>
                <form action="loginpages.jsp" method="post">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Username</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" name="username" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="password" name="password" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info">LOGIN!</button>
                    <a href="index.jsp" class="btn btn-primary">Back</a>
                </form>
            </div>
            <%
        } else {
            out.print("Punten Ngapain? <a href='index.php'>Balik sana </a>");
            }
            %>
</body>

<jsp:include page="assets/header.jsp"/>
<%@page import="java.util.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<head>
    <title>Payment Info?</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/3.0.0/jquery.payment.min.js"></script>
    <script>
        $(function($) {
        $('[data-numeric]').payment('restrictNumeric');
        $('.cc-number').payment('formatCardNumber');
        $('.cc-exp').payment('formatCardExpiry');
        $('.cc-cvc').payment('formatCardCVC');
        $.fn.toggleInputError = function(erred) {
        this.parent('.form-group').toggleClass('has-error', erred);
        return this;
        };
        $('form').submit(function(e) {
        var cardType = $.payment.cardType($('.cc-number').val());
        $('.cc-number').toggleInputError(!$.payment.validateCardNumber($('.cc-number').val()));
        $('.cc-exp').toggleInputError(!$.payment.validateCardExpiry($('.cc-exp').payment('cardExpiryVal')));
        $('.cc-cvc').toggleInputError(!$.payment.validateCardCVC($('.cc-cvc').val(), cardType));
        $('.cc-brand').text(cardType);
        $('.validation').removeClass('text-danger text-success');
        $('.validation').addClass($('.has-error').length ? 'text-danger' : 'text-success');
        });
        });
    </script>
    <style>
        .padding {
            padding: 5rem !important
        }
    </style>
</head>                                                                                                                                                                                                                                                                                                                                                                                                               
<body>
    <jsp:include page="assets/navbar.jsp"/>
    <%
        if (session.getAttribute("susername") == null || session.getAttribute("susername").equals("")) {
            %>
            <div style="margin: 50px 25%;" class="border border-dark bg-dark text-white py-5 px-5 rounded">
                <div class="d-flex justify-content-center mb-3">
                    <h2>Login First!</h2>
                </div>
                <form action="login.jsp" method="post">
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
                </form>
            </div>
            <%
        } else {
            %>
                <form action="creditcard.jsp" method="post">
                    <div class="padding">
                        <div class="row">
                            <div class="container-fluid d-flex justify-content-center">
                                <div class="col-sm-8 col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="row">
                                                <div class="col-md-6"> <span>CREDIT/DEBIT CARD PAYMENT</span> </div>
                                                <div class="col-md-6 text-right" style="margin-top: -5px;"> <img src="https://img.icons8.com/color/36/000000/visa.png"> <img src="https://img.icons8.com/color/36/000000/mastercard.png"> <img src="https://img.icons8.com/color/36/000000/amex.png"> </div>
                                            </div>
                                        </div>
                                        <div class="card-body" style="height: 350px">
                                            <div class="form-group"> 
                                                <label for="cc-number" class="control-label">CARD NUMBER</label> 
                                                <input id="cc-number" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder=".... .... .... ...." name="idnumber" required> 
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group"> 
                                                        <label for="cc-exp" class="control-label">CARD EXPIRY</label> 
                                                        <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder=".. / .." name="expired" required> 
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group"> 
                                                        <label for="cc-cvc" class="control-label">CARD CVC</label> 
                                                        <input id="cc-cvc" type="tel" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="...." name="cvc" required> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"> 
                                                <label for="numeric" class="control-label">CARD HOLDER NAME</label> 
                                                <input type="text" class="input-lg form-control" name="holder"> 
                                            </div>
                                        </div>
                                        <div class="card-header">
                                            <div class="row">
                                                <div class="col-md-6"> <span>Shipment</span> </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group"> 
                                                <label for="numeric" class="control-label">Address</label> 
                                                <textarea class="input-lg form-control" name="address" required></textarea>
                                            </div>
                                            <div class="card-body">
                                                <table class="table table-hover">
                                                    <thead>
                                                      <tr>
                                                        <th scope="col" width="25px">No</th>
                                                        <th scope="col">Name Product</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Quantity</th>
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
                                                      </tr>
                                                      <%
                                                          I++;
                                                        }
                                                    %>
                                                    <tr>
                                                        <td>Total</td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>$ <%= cart.getCost() %></td>
                                                        <input type="hidden" name="total" value="<%= Float.toString(cart.getCost()) %>">
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group"> 
                                                <input type="hidden" name="suid" value="<%= session.getAttribute("suid")%>">
                                                <button type="submit" class="btn btn-success btn-lg form-control" style="font-size: .8rem;"> Make Payment </button> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            <%
        }
    %>
</body>
<footer>
    <jsp:include page="assets/footer.jsp"/>
</footer>
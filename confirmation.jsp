<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/5/2022
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.removeAttribute("cart");%>
        <h1>Transaction confirmed our Delivery Agent Will contact You Soon !!!</h1>
        <a href="index.jsp" > Continue shopping</a>
    </body>
</html>

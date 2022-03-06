<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/5/2022
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="handler.item"%>
<html>
<head>
    <title>page</title>
</head>
<body>
<header class='header mb-5'>
    <nav class='navbar navbar-expand-lg'>
        <div class='container'>
            <a href='index.jsp' class='navbar-brand home'><img src='img/logo.png' alt='logo' class='d-none d-md-inline-block'><img src='img/logo-small.png' alt='logo' class='d-inline-block d-md-none'><span class='sr-only'>- go to homepage</span></a>
            <div class='navbar-buttons'>
                <button type='button' data-toggle='collapse' data-target='#navigation' class='btn btn-outline-secondary navbar-toggler'><span class='sr-only'>Toggle navigation</span><i class='fa fa-align-justify'></i></button>
                <button type='button' data-toggle='collapse' data-target='#search' class='btn btn-outline-secondary navbar-toggler'><span class='sr-only'>Toggle search</span><i class='fa fa-search'></i></button><a href='confirmation.jsp' class='btn btn-outline-secondary navbar-toggler'><i class='fa fa-shopping-cart'></i></a>
            </div>
            <div id='navigation' class='collapse navbar-collapse'>
                <ul class='navbar-nav mr-auto'>
                    <li class='nav-item'><a href='index.jsp' class='nav-link active'>Home</a></li>
                </ul>
                <div class='navbar-buttons d-flex justify-content-end'>
                    <div id='search-not-mobile' class='navbar-collapse collapse'></div>
                    <a data-toggle='collapse'href='#search' class='btn navbar-btn btn-primary d-none d-lg-inline-block'><span class='sr-only'>Toggle search</span><i class='fa fa-search'></i></a>
                    <div id='basket-overview' class='navbar-collapse collapse d-none d-lg-block'><a href=controller?action=cart.jsp class='btn btn-primary navbar-btn'><i class='fa fa-shopping-cart'></i><span>
                                <%
                                    List<item> _cart = new ArrayList<>();
                                    if (session.getAttribute("cart") != null) {
                                        _cart = (List<item>) session.getAttribute("cart");
                                        out.println(_cart.get(0).getItemCount() + _cart.get(1).getItemCount() + _cart.get(2).getItemCount() + _cart.get(3).getItemCount());
                                    }
                                    else
                                        out.println(0);

                                %>
                            </span></a>
                    </div>
                    <span > WELCOME To the Shop </span>
                </div>
            </div>
        </div>
    </nav>
    <div id='search' class='collapse'>
        <div class='container'>
            <form role='search' class='ml-auto'>
                <div class='input-group'>
                    <input type='text' placeholder='Search' class='form-control'>
                    <div class='input-group-append'>
                        <button type='button' class='btn btn-primary'><i class='fa fa-search'></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</header>
</body>
</html>
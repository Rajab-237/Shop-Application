<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/5/2022
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page</title>
</head>
<jsp:useBean id="prod" class="handler.products" />
<%@ include file="linkedFIles.jsp" %>
<body>

<%@ include file="header.jsp" %>
<div id='all'>
    <div id='content'>

        <%@ include file="slider.jsp" %>
        <div id='hot'>
            <div class='box py-4'>
                <div class='container'>
                    <div class='row'>
                        <div class='col-md-12'>
                            <h2 class='mb-0'>CHOOSE A PRODUCT </h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class='container'>
                <div class='product-slider owl-carousel owl-theme'>

                    <%
                        for(int i=1;i<3;i++)
                        {
                            out.println("<div class='item'><div class='product'> <div class='flip-container'><div class='flipper'> <div class='front'><a href='#'> <a href='#'><img src='img/");
//                            out.println(prod.getimage(1) + ".jpg'");
                            out.println(" alt=' class='img-fluid'></a></div> </div> </div>");
                            out.println("<a href='#' class='invisible'><img src='img/");
//                            out.println(prod.getimage(i)+".jpg'");
                            out.println("alt='' class='img-fluid'></a>");
                            out.println("<div class='text'> <h3><a href='#'>");
//                            out.println(prod.getpname(i) + "</a> </h3>");

                            out.println("<p class='price'> <del></del>");
//                            out.println("price "+prod.getprice(i)+" Taka");
//                            out.println("<p>"+ prod.getdesc(i) +"</p>");

                            out.println("<p class='buttons'><a href='#' class='btn btn-outline-secondary'>View detail</a>");
                            out.println("<a href=controller?"+"action=add&"+"origin=index&"+ "id=" + i);
                            out.println("class='btn btn-primary'><i class='fa fa-shopping-cart'></i>Add to cart</a></p>");
                            out.println("</p> </p> </div> </div> </div>");
                        }


                    %>

                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>

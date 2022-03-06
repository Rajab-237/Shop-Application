<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/5/2022
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="prod" class="handler.products" />
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="handler.item"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="linkedFIles.jsp" %>
    </head>
    <body>
        <% System.out.println("hello sala");%>
         <%@ include file="header.jsp" %>
        
       <div id="all">
   <div id="content">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <!-- breadcrumb-->
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a href="#">Home</a></li>
                     <li aria-current="page" class="breadcrumb-item active">Shopping cart</li>
                  </ol>
               </nav>
            </div>
            <div id="basket" class="col-lg-9">
               <div class="box">
                  <form method="get" action="checkout">
                     <h1>Shopping cart</h1>
                     <p class="text-muted">"
                     </p>
                     <div class="table-responsive">
                        <table class="table">
                           <thead>
                              <tr>
                                 <th colspan="2">Product</th>
                                 <th>Quantity</th>
                                 <th>Unit price</th>
                                 <th>Discount</th>
                                 <th colspan="2">Total</th>
                              </tr>
                           </thead>
                           <tbody>
                               
                               
                               <%
                                   List<item> _cart2 = new ArrayList<>();
                                   double tot =0;
                               _cart2 = (List<item>) session.getAttribute("cart");

                                      // final int count  = item.getItemCount();
                                       for(int i=0; i<4;i++){

                                           if(_cart2.get(i).getItemCount()>0)
                                           {
                                          tot =tot +  prod.getprice(_cart2.get(i).getId())*_cart2.get(i).getItemCount();


                                               out.println("<tr> <td> <a href='#'> <img src='img/"+ prod.getimage(_cart2.get(i).getId()) + ".jpg'>");
                                          out.println("</a></td> <td><a href='#'>");
                                           out.println(prod.getpname(_cart2.get(i).getId()));
                                           out.println("</a></td> <td>");
                                           out.println(" <a href=controller?action=add&"+ "origin=cart&"+"id=" +_cart2.get(i).getId() + ">");
                                           out.println("<button type = 'button' class='btn btn-xs btn-warning'>+</button></a><input type='number' value='" +_cart2.get(i).getItemCount() + "'class='form-control' style='margin:5px;'>");
                                          out.println(" <a href=controller?action=decrease&id=" +_cart2.get(i).getId() + ">");
                                          out.println("<button type = 'button' class='btn btn-xs btn-danger'>-</button></a></td><td>");
                                           out.println(prod.getprice(_cart2.get(i).getId()));
                                           out.println("</td> <td>$0.00</td> <td>" + prod.getprice(_cart2.get(i).getId())*_cart2.get(i).getItemCount()+" Tk"+ "</td> <td>");
                                           out.println(" <a href=controller?action=delete&id=" + _cart2.get(i).getId() + ">" );
                                           out.println("<i class='fa fa-trash-o'></i></a></td> </tr>");

                                           }

                                       }
                               %>
                   
                           </tbody>
                           <tfoot>
                              <tr>
                                 <th colspan="5">Total</th>
                                 <th colspan="2"><%out.println(tot +" Tk");%>
                                 </th>
                              </tr>
                           </tfoot>
                        </table>
                     </div>
                     <!-- /.table-responsive-->
                     <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                        <div class="left"><a href=index.jsp class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> Continue shopping</a></div>
                        <div class="right">
                          <a href=confirmation.jsp class="btn btn-outline-secondary"><i class="fa fa-chevron-right">Proceed to checkout </i></a>
                        </div>
                     </div>
                  </form>
               </div>
               <!-- /.box-->
            </div>
            <!-- /.col-lg-9-->
            <div class="col-lg-3">
               <div id="order-summary" class="box">
                  <div class="box-header">
                     <h3 class="mb-0">Order summary</h3>
                  </div>
                  <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>
                  <div class="table-responsive">
                     <table class="table">
                        <tbody>
                           <tr>
                              <td>Order subtotal</td>
                              <th><%out.println(tot);%>
                              </th>
                           </tr>
                           <tr>
                              <td>Shipping and handling</td>
                              <th>$10.00</th>
                           </tr>
                           <tr class="total">
                              <td>Total</td>
                              <th><%out.println(tot + 10 +" Tk");%>
                              </th>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
            <!-- /.col-md-3-->
         </div>
      </div>
   </div>
</div>
         <jsp:include page="footer.jsp" />
    </body>
</html>

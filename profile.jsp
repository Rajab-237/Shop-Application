<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/5/2022
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>my order</title>
  <!-- linked-files -->
  <%@ include file="linkedFIles.jsp" %>
</head>
<body>


<!-- Header -->
<%@ include file="header.jsp" %>

<div class="container ">
  <div class="card card_categories">
    <div class="card-body">
      <div class="user_css">
        <div class="row">

          <div class="col-lg-1"></div>
          <div class="col-lg-8"><br>
            <h3 class="lead">My Account</h3><hr><br>
            <form class="my_profile" method="POST" action="myaccount.html">
              <input type="text" name="" id="user" placeholder="Name"><br><br>
              <input type="password" name="" id="pass" placeholder="Password"><br><br>
              <input type="text" name="" id="phone" placeholder="Telephone number"><br><br>
              <input type="text" name="" id="h-name" placeholder="Hall name"><br><br>
              <input type="text" name="" id="room" placeholder="Room number"><br><br>
              <input class="my_profile_button btn btn-primary" type="submit" name="" value="Update">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>






<!-- start footer -->
<%@ include file="footer.jsp" %>

</body>
</html>

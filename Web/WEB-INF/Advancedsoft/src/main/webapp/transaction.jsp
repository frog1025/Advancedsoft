<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Bank</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Frontline Bank</a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active">
                <img src="logo.png" alt="Logo" width="40" height="40" class="d-inline-block align-text-top">
            </li>
            <li><a href="viewbalanceservlet">View Accounts</a></li>
            <li><a href="paytransferservlet">Pay and Transfer</a></li>
            <li><a href="account.jsp">Account</a></li>
            <li><a href="savecontactservlet">Contacts Management</a></li>
            <li><a href="card/selectByCustomerId">Card</a></li>
        </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Login</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </div>
      </nav>
    <div class="container" style="margin-top:50px">
        <table class="table table-hover">
            <caption><h2>List of Transactions</h2></caption>
            <tr>
                <th class="col-md-3">Account ID</th>
                <th class="col-md-3">Amount</th>
                <th class="col-md-3">Payee Email</th>
                

            </tr>
            <c:forEach var="trans" items="${listTrans}">
                <tr>
                    <td><c:out value="${trans.account_id}" /></td>
                    <td><c:out value="${trans.amount}" /></td>
                    <td><c:out value="${trans.payee_email}" /></td>
                                
                </tr>
            </c:forEach>
        </table>
      
    <div>
    <a href="trans/selectAll" class="btn btn-info" role="button">Show All</a>
   
    

    </div>
    </div> 
</body>
</html>
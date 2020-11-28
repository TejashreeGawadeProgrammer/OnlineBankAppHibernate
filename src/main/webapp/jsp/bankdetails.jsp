    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
  <%@include file="/css/mycss.css" %>
</style> 
</head>

<body>
<div class="header">
  <a href="#"  class="logo"><b>Online Banking App</b></a>
  <div class="header-right">
  	<a href="index.jsp"><b>Home</b></a>
    <a href="./bankform"><b>Add BankInfo</b></a>
	<a href="./bankdetails"><b>Bank Details</b></a>
	
   
  </div>
</div>

<div class="container">
	<h1>Bank Details</h1>
	
	<table class="table table-striped table-hover">
 	<thead>
      <tr class="info">
      	<th>ID</th>
        <th>BANK NAME</th>
        <th>ACCOUNT NO</th>
        <th>SSN</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <c:forEach var="bank" items="${list}"> 
    <tr>
    <td>${bank.id}</td>
    <td>${bank.bankname}</td>
    <td>${bank.accountno}</td>
    <td>${bank.ssn}</td>
    <td><a href="/OnlineBankAppHibernate/editbank/${bank.id}">Edit</a></td>
    <td><a href="/OnlineBankAppHibernate/deletebank/${bank.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="./bankform">Add New BankInfo</a>
    </div>
 </body>
 </html>
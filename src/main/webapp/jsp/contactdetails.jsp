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
  <a href="#" class="logo"><b>Online Banking App</b></a>
  <div class="header-right">
    <a href="./bankform"><b>Add Bank Info</b></a>
	<a href="./contactdetails"><b>Contact Details</b></a>
   
  </div>
</div>

<div class="container">
	<h1>Contact Details</h1>
	
	<table class="table table-striped table-hover">
 	<thead>
      <tr class="info">
      	<th>ID</th>
        <th>ADDRESS</th>
        <th>CITY</th>
        <th>STATE</th>
        <th>COUNTRY</th>
         <th>PHONE NO</th>
        <th>EDIT</th>
        <th>DELETE</th>
      </tr>
    </thead>
    <c:forEach var="contact" items="${list}"> 
    <tr>
    <td>${contact.id}</td>
    <td>${contact.address}</td>
    <td>${contact.city}</td>
    <td>${contact.state}</td>
    <td>${contact.country}</td>
    <td>${contact.phoneno}</td>
    <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="/OnlineBankAppHibernate/deletecontact/${contact.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="./contactform">Add New Contact</a>
    </div>
 </body>
 </html>
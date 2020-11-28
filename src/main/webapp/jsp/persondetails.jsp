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
<!-- <style>
body{
background: teal;


margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  }
.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
   margin: 40px;
}
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
  background-color: teal;
  color: white;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: maroon;
  color: white;
}


.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
   
  }
}
}
* {
  box-sizing: border-box;
 
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: maroon;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: threedshadow;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 50px;
  margin: 30px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}


@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style> -->
</head>

<body>
<div class="header">
  <a href="#" class="logo"><b>Online Banking App</b></a>
  <div class="header-right">
    <a class="active" href="./contactform"><b>Add Contact</b></a>
	<a href="./persondetails"><b>Person Details</b></a>
   
  </div>
</div>

<div class="container">
	<h1>Person Details</h1>
	
	<table class="table table-striped table-hover">
 	<thead>
      <tr class="info">
      	<th>ID</th>
        <th>FIRST NAME</th>
        <th>MIDDLE NAME</th>
        <th>LAST NAME</th>
        <th>GENDER</th>
        <th>EDIT</th>
        <th>DELETE</th>
      </tr>
    </thead>
    <c:forEach var="person" items="${list}"> 
    <tr>
    <td>${person.id}</td>
    <td>${person.firstname}</td>
    <td>${person.middlename}</td>
    <td>${person.lastname}</td>
    <td>${person.gender}</td>
    <td><a href="/OnlineBankAppHibernate/editperson/${person.id}">Edit</a></td>
    <td><a href="/OnlineBankAppHibernate/deleteperson/${person.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="./personform">Add New Person</a>
    </div>
 </body>
 </html>
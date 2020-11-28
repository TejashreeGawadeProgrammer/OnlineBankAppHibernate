<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
  <%@include file="/css/mycss.css" %>
</style> 

</head>

<body>
	<div class="header">
		<a href="#" class="logo">Spring MVC APP</a>
		<div class="header-right">
			<a class="active" href="./personform"><b>Add Person</b></a> <a
				href="./persondetails"><b>Person Details</b></a>
		</div>
	</div>

	<div class="container">
		<h1>Edit Person</h1>
		<form:form method="POST" modelAttribute="person" action="/OnlineBankAppHibernate/editsave">
			<div class="row">
				<div class="col-25">
					<label for="id">ID</label>
				</div>
				<div class="col-75">
					<form:hidden  path="id" />
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-25">
					<label for="firstname">First Name</label>
				</div>
				<div class="col-75">
					<form:input path="firstname" placeholder="Enter Your Name" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="lastname">Middle Name</label>
				</div>
				<div class="col-75">
					<form:input path="lastname" placeholder="Enter Your Middle Name" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for=middlename>Last Name</label>
				</div>
				<div class="col-75">
					<form:input path="middlename" placeholder="Enter Your Last Name" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for=middlename>Gender</label>
				</div>
				<div class="col-75">
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
				</div>
			</div>

			<div class="row">
				<input type="submit" value="Edit Save" />
			</div>
		</form:form>
	</div>
</body>
</html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
<%@ include file="/css/mycss.css"%>
</style>

</head>

<body>
	<div class="header">
		<a href="#" class="logo">Online Banking App</a>
		<div class="header-right">
			<a class="active" href="./personform"><b>Add Person</b></a> <a
				href="./persondetails"><b>Person Details</b></a>

		</div>
	</div>
	<div class="container">
		<h1>Person Form</h1>
		<form:form method="post" modelAttribute="person" action="save">

			<div class="form-group">
				<label for="firstname">First Name</label>
				<form:input path="firstname" placeholder="Enter Your Name" />
			</div>
			<div class="form-group">
				<label for="lastname">Middle Name</label>
				<form:input path="lastname" placeholder="Enter Your Middle Name" />
			</div>
			<div class="form-group">
				<label for=middlename>Last Name</label>
				<form:input path="middlename" placeholder="Enter Your Last Name" />
			</div>

			<div class="form-group">
				<label for=middlename>Gender</label>
				<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
			</div>
			

			<div class="row">
				<input type="submit" value="Save" />
			</div>

		</form:form>
	</div>
</body>
</html>
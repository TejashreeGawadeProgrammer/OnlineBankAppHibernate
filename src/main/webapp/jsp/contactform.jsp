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
		<a href="#" class="logo"><b>Online Banking App</b></a>
		<div class="header-right">
			<a href="./contactform"><b>Add Contact</b></a> <a
				href="./contactdetails"><b>Contact Details</b></a>

		</div>
	</div>
	<div class="container">
		<h1>Contact Form</h1>
		<form:form method="post" modelAttribute="contact" action="save1">

			<div class="form-group">
				<label for="address">Address:</label>
				<form:input path="address" placeholder="Enter Your Address" />
			</div>
			<div class="form-group">
				<label for="city">City:</label>
				<form:input path="city" placeholder="Enter Your City" />

			</div>
			<div class="form-group">
				<label for="state">State:</label>
				<form:input path="state" placeholder="Enter Your State" />
			</div>
			<div class="form-group">
				<label for="country">Select Country:</label>


				<form:select path="country">
					<form:option value="USA" label="USA" />
					<form:option value="GERMANY" label="Germany" />
					<form:option value="CANADA" label="Canada" />
					<form:option value="JAPAN" label="Japan" />
					<form:option value="SWIDEN" label="Swiden" />
					<form:option value="NORWAY" label="Norway" />
					<form:option value="INDIA" label="India" />
					<form:option value="NEW ZELAND" label="New Zeland" />
				</form:select>

			</div>

			<div class="form-group">
				<label for="phoneno">Phone NO:</label>
				<form:input path="phoneno" placeholder="Enter Your Phone No" />

			</div>

			<div class="row">
				<input type="submit" value="Save" />
			</div>

		</form:form>
	</div>
</body>
</html>
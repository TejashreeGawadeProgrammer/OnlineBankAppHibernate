<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
  <%@include file="/css/mycss.css" %>
</style> 
</head>

<body>
<div class="header">
  <a href="#" class="logo"><b>Online Banking App</b></a>
  <div class="header-right">
    <a href="./bankform"><b>Add BankInfo</b></a>
	<a href="./bankdetails"><b>Bank Details</b></a>
    
  </div>
</div>
<div class="container">
		<h1>Bank Form</h1>
       <form:form method="post" modelAttribute="bank" action="save2">  
       
       <div class="form-group">
				<label for="bankname">Select Bank:</label>


				<form:select path="bankname">
					<form:option value="ICICI" label="ICICI" />
					<form:option value="SWISS" label="SWISS" />
					<form:option value="CHASE" label="CHASE" />
					<form:option value="HDFC" label="HDFC" />
					<form:option value="BOA" label="BOA" />
					<form:option value="SBI" label="SBI" />
					<form:option value="RBI" label="RBI" />
					
				</form:select>
			</div>	
					
			<div class="form-group">
				<label for="accountno">Account NO:</label>
				<form:input path="accountno" placeholder="Enter Your Account No" />

			</div>
			<div class="form-group">
				<label for="ssn">SSN:</label>
				<form:input path="ssn" placeholder="Enter Your SSN" />
			</div>
		

			<div class="row">
				<input type="submit" value="Save" />
			</div>
      
       </form:form>  
</div>
</body>
</html>
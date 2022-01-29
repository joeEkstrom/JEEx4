<!-- Joe Ekstrom  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.util.List, java.util.ArrayList"%>
 <%@ taglib uri="/WEB-INF/user.tld" prefix="user"%>
 
 <%!
 List<String> errors;
 String alert = "";
 String name = "";
 String address = "";
 String email = "";
 
 private boolean validate(String value, String fieldName) {
	 if (value == null || value.trim().equals("")){
		 errors.add(fieldName + " is requried");
		 return true;
	 }
	 return false;
 }
 
 private String buildErrorAlert(Exception e) {
	 
	 String errorMsg = e.getMessage() + "\\n\\n";
	 for (String err: errors) {
		 errorMsg += err + "\\n";		 
	 }
	 return String.format("<script>alert(\"%s\");</script>",errorMsg);
 }
 

 
 %>
 <% errors = new ArrayList<String>();
  boolean formSubmitted = false;
  boolean isError = false;
  try {
	  if (request.getParameter("submitButton") != null) {
		  name = request.getParameter("name");
		  address = request.getParameter("address");
		  email = request.getParameter("email");
		  isError = validate(name,"Name");
		  isError = validate(address, "Address");
		  isError = validate(email, "Email");
		  
		  if (isError && errors.size() > 0) {
			  throw new Exception("Errors found");
		  }
		  
		  formSubmitted = true;
		  alert = "";
		  
	  }
  }catch (Exception e) {
	  alert = buildErrorAlert(e);
  } finally {
	  errors= new ArrayList<String>();
  }
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
		<form method="POST" name="Form1">
			<label for="name">Name:</label>
			<input type="text" name="name" value ='<%=!formSubmitted? name:"" %>'>
			<br />
			<label for="address">Address:</label>
			<input type="text" name="address" value ='<%=!formSubmitted? address:"" %>'>
			<br />
			<label for="email">Email:</label>
			<input type="text" name="email" value ='<%=!formSubmitted? email:"" %>'>
			<br />
			<button type="submit" name="submitButton">Submit</button>
			<br />
		</form>
	<%if (formSubmitted) {
		%> <user:user address="<%=address%>" email="<%=email%>" name="<%=name%>">Your email address is</user:user>
	<%} %>
	</body>
<%= alert %> 
</html>
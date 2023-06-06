<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/csschangeDetails.css">
<script src='http://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg"); 
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed!</h3>
<%} %>
<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
<select class="input-style" name="securityquestion">
<option value="What is the name of your favorite childhood friend?">What is the name of your favorite childhood friend?</option>
<option value="What was the name of your primary school?">What was the name of your primary school?</option>
<option value="What is your pet's name?">What is your pet's name?</option>
<option value="What is your favorite sport?">What is your favorite sport?</option>
</select>
<hr>
<h3>Enter Your New Answer</h3>
<input class="input-style" type="text" name="newAnswer" placeholder="Enter Your New Answer" required>
<hr>
<h3>Enter Password(For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>
<hr>
<button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>

</body>
</html>
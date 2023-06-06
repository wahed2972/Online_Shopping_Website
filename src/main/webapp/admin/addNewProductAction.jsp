<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
String quantity=request.getParameter("quantity");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setString(4,price);
	ps.setString(5,active);
	ps.executeUpdate();
	
	PreparedStatement ps1=con.prepareStatement("insert into products values(?,?,?,?,?,?)");
	ps1.setString(1,id);
	ps1.setString(2,name);
	ps1.setString(3,category);
	ps1.setString(4,price);
	ps1.setString(5,active);
	ps1.setString(6,quantity);
	ps1.executeUpdate();

	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>
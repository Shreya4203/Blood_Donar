<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//Scriptlet
try{
  //Page----Request object,Response object
  
  String email = request.getParameter("email");
  String name = request.getParameter("uname");
  String mobile = request.getParameter("mobile");
  String bg= request.getParameter("bg");
  String city = request.getParameter("city");
  
  
  Class.forName("com.mysql.jdbc.Driver");
  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
      "root","root");
  String sql ="insert into donarreg values('"+email+"','"+name+"','"+mobile+
      "','"+bg+"','"+city+"')";
  Statement st = cn.createStatement();
  st.execute(sql);
  st.close();
  cn.close();
  response.sendRedirect("ThankYou.jsp?v=1");
  
  
}
catch(Exception ex)
{
  out.println(ex);
  //response.sendRedirect("ThankYou.jsp?v=0");
}

%>
</body>
</html>
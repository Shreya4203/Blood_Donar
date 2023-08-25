<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Blood Donar App</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<h2>Search!</h2>
<div class="row">
  <div class="col-sm-4">.col-sm-4</div>
  <div class="col-sm-8">
  <form class="form-inline">
  
  <div class="form-group">
    <label for="bg">Blood Group:</label>
    <select class="form-control" id="bg" name="bg">
    <option>A+</option>
    <option>AB+</option>
    <option>B+</option>
    <option>O+</option>
    <option>A-</option>
    <option>AB-</option>
    <option>O-</option>
    <option>B-</option>
    </select>
  </div>
  <div class="form-group">
    <label for="city">City:</label>
    <select class="form-control" id="city" name="city">
    <option>Jabalpur</option>
    <option>Bhopal</option>
    <option>Indore</option>
    <option>Katni</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary" name="b1">Search</button>
</form>
  <%! String bg=""; %>
  <%! String city=""; %>
  
  <%
  if(request.getParameter("b1")!=null)
  { 
   bg= request.getParameter("bg");
   city = request.getParameter("city");
  %>
  
  <div>
  <h2> Search Result!</h2>
  <hr>
  <h3>Your Selection:</h3>
  Blood Group : <span style="color:red" >  <%= bg %></span>  <p>
  City : <span style="color:red" > <%= city %> </span><p>
  </div>
  

  <h2>Result</h2>
              
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>Blood Group</th>
        <th>City</th>
      </tr>
    </thead>
    <tbody>
    
  <%}
  
  try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql",
        "root","root");
  String sql = "select name,mobile,email,bg,city from donarreg where bg='"+bg+"' and city='"+city+"'";
  Statement st = cn.createStatement();
  ResultSet rs = st.executeQuery(sql);
  while(rs.next())
  {
  out.println("<tr>");
  out.println("<td>"+rs.getString(1)+"</td>");
  out.println("<td>"+rs.getString(2)+"</td>");
  out.println("<td>"+rs.getString(3)+"</td>");
  out.println("<td>"+rs.getString(4)+"</td>");
  out.println("<td>"+rs.getString(5)+"</td>");
  
  out.println("</tr>");
  }
  }
  catch(Exception ex){
  out.println(ex);
  }
  %>
  </tbody>
  </table>

  
  
  </div>
</div>


</body>
</html>
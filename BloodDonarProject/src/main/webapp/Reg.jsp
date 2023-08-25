<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<h2>Registration!</h2>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4">
      <h3>New Registration</h3>
      <form action="DataSave.jsp">
      
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email" required="required" autofocus="autofocus">
  </div>
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="name" name="uname" required="required">
  </div>
  <div class="form-group">
    <label for="mobile">Mobile:</label>
    <input type="text" class="form-control" id="mobile" name="mobile" required="required">
  </div>
  <div class="form-group">
    <label for="bg">Blood Group:</label>
    <select class="form-control" id="bg" name="bg">
    <option>A+</option>
    <option>AB+</option>
    <option>B+</option>
    <option>O+</option>
    <option>A-</option>
    <option>AB-</option>
    <option>B-</option>
    <option>O-</option>
    </select>
  </div>
  <div class="form-group">
    <label for="city">CIty:</label>
    <select class="form-control" id="bg" name="city">
    <option>Jabalpur</option>
    <option>Bhopal</option>
    <option>Indore</option>
    <option>Katni</option>
    </select>
  </div>
 
  <button type="submit" class="btn btn-default">Submit</button>
</form>

    </div>
    <div class="col-sm-4">
    </div>
  </div>
</div>
</body>
</html>
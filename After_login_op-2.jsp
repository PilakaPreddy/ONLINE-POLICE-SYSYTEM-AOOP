<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login.css ">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<title>Welcome User</title>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<div class="top1 d-flex flex-row justify-content-center">
<div class="d-flex flex-column justify-content-center">
<h1 class="top_head">Successfully logged in!!!</h1>
<p class="para">Welcome <%=session.getAttribute("Email") %></p>
</div>
<a href="logout"><button class="logout">Logout</button></a>
</div>
<div class="container">
            <div class="forms">
                <div class="form login">
                    <span class="title">Details</span>
<form method="post" action="After_login" class="details-form" id="details-form">
                        <div class="input-field">
                        <label for="uname"></label>
                        <input type="text" name="uname" id="uname" placeholder="Enter your name" required>
                        <i class="uil uil-user"></i>
                    </div>
                    <div class="input-field">
                    <label for="email"></label>
                        <input type="email" name="email" id="email" placeholder="Enter your email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                    <label for="num"></label>
                        <input type="number" name="num" id="num" placeholder="Enter your contact" required>
                        <i class="uil uil-phone-alt icon"></i>
                    </div>
                    <div class="input-field">
                    <label for="address"></label>
                        <input type="text" name="address" id="address" placeholder="Enter your address" required>
                        <i class="uil uil-home icon"></i>
                    </div>
                    <div class="input-field">
                    <label for="complaint"></label>
                        <input type="text" name="complaint" id="complaint" placeholder="Enter your complaint" required>
                        <i class="uil uil-pen icon"></i>
                    </div>
                    <div class="d-flex flex-row justify-content-center input-field button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Register-complaint">
                    </div>
                </form>
                </div>
            </div>
        </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status == "success")
    	{
    	    swal("Complaint Registered Successfully","Case will be solved soon,thankyou","success");
    	}
    
    
</script>
</body>
</html>
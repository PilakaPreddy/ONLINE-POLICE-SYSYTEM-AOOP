<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </head>
    <title>Online Police System</title>
    <body>
    <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
        <div class="top1">
            <div class="d-flex flex-row justify-content-start">     
            <img src="https://cdn-icons-png.flaticon.com/512/2099/2099783.png" class="img"/>
            <h1 class="top_head">Online Police System</h1>
        </div>
            <div class="d-flex flex-row justify-content-end">
            <p class="top_content" onclick="display('sectionHome')">Home</p>
            <p class="top_content" onclick="display('sectionAbt')">About</p>
            <p class="top_content" onclick="display('sectionRegister')">Register</p>
            <p class="top_content" onclick="display('sectionUser')">User Login</p>
            <p class="top_content" onclick="display('sectionAdmin')">Admin Login</p>
        </div>
        </div> 
    <div id="sectionHome">
        <div class="backh d-flex flex-row justify-content-center">
        <div class="home_content">
        <h1 class="home_head">Welcome to Online Crime<br/> Reporting System</h1>
        <p class="home_para">Police Department is committed to deliver the most efficient, effective, productive, and quality police service to the community. We are dedicated to the advancement of a cooperative partnership with our community to develop better community policing, improved communications, and reduced crime.</p> 
        <p class="home_para2">For Emergency Dial 100</p>
    </div>
    </div>
</div>
    <div id="sectionAbt">
        <div class="backa">
            <h1 class="abt_head">About</h1>
            <p class="abt_para">In order to report any complains related with crime, people has to contact nearest police station. People of the particular city are not aware of crime related things such as list of Most wanted criminals of their city, latest crime related news, missing persons of their area etc..People has to view News Chanels or Read News Paper for such crime related information. Thus we can say that existing system is manual and does not provide all the information from one source.Online crime reporting system helps prevent the law enforcement agencies from the manual work.In short,it is a comprehensive tool that can efficiently record,maintain,and manage criminal affairs.It can be by police and other authorities.Police can respond quickly once a crime has been reported online.Moreover it will prevent the delay caused by reports made by complaint in person at police station.</p>
            <h1 class="abt_head">Pros of E-reporting</h1>
            <ul class="list">
                <li>24/7 services</li>
                <li>Time saving</li>
                <li>Trustable source</li>
            </ul>
        </div>
    </div>
    <div id="sectionRegister">
      <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
        <div class="backr d-flex flex-row justify-content-between">
           <div id="carouselExampleIndicators" class="carousel slide car_size space" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active bottom"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://www.safecommunitiesportugal.com/wp-content/uploads/2021/05/Report-a-crime-on-line.jpg" class="d-block w-100 car_img" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://cdn5-ss13.sharpschool.com/UserFiles/Servers/Server_59869/Image/School%20Board/Images/Online%20Crime%20Reporting.png" class="d-block w-100 car_img" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://www.oneindia.com/img/2019/11/crime-1574483534.jpg" class="d-block w-100 car_img" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon previous" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon next" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>    
        </div>
        <div class="container">
            <div class="forms">
                <div class="form login">
                    <span class="title">Registration</span>

                    <form method="post" action="register" class="register-form" id="register-form">
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
                    <label for="pass"></label>
                        <input type="password" name="pass" id="pass" class="password" placeholder="Enter your password" required>
                        <i class="uil uil-lock icon"></i>
                    </div>
                    <div class="input-field">
                    <label for="re_pass"></label>
                        <input type="password" name="re_pass" id="re_pass" class="password" placeholder="Confirm your password" required>
                        <i class="uil uil-lock icon"></i>
                    </div>
                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Remember me</label>
                        </div>

                        <a href="#" class="text">Forgot password?</a>
                    </div>
                    <div class="input-field button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Register">
                    </div>
                </form>
                    <div class="login-signup">
                        <span class="text">Already a member?</span>
                        <a href="#" class="text signup-text" onclick="display('sectionUser')">Login</a>
                    </div>
                </div>
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
    	    swal("Congrats","Account Created Successfully","success");
    	}
    
    
</script>
    </div>
    <div id="sectionUser">
        <div class="backu d-flex flex-row justify-content-center">
            <div>
                <p class="spaceu">.</p>
            </div>
            <div class="ucontainer">
                <div class="forms">
                    <div class="form login">
                        <span class="title">Login</span>
    
                        <form method="post" action="login" class="login-form" id="login-form">
                            <div class="input-field">
                            <label for="username"></label>
                            <input type="text" name="username" id="username" placeholder="Enter your email" required="required">
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div class="input-field">
                        <label for="password"></label>
                            <input type="password" name="password" id="password" class="password" placeholder="Enter your password" required="required">
                            <i class="uil uil-lock icon"></i>
                        </div>
                        <div class="checkbox-text">
                            <div class="checkbox-content">
                                <input type="checkbox" id="logCheck">
                                <label for="logCheck" class="text">Remember me</label>
                            </div>
                            <a href="#" class="text" onclick="display('sectionForPass')"><br /><br />Forgot password?</a>
                        </div>
                        <div class="input-field button">
                            <input type="submit" value="Login">
                        </div>
                        <div class="login-signup">
                            <span class="text">Not a member?</span>
                            <a href="#" class="text signup-text" onclick="display('sectionRegister')">Sign Up</a>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
    <div id="sectionAdmin">
        <div class="backad d-flex flex-row justify-content-start">
            <div>
                <p class="spaceu">.</p>
            </div>
            <div class="ucontainer">
                <div class="forms">
                    <div class="form login">
                        <span class="title">Login</span>
    
                        <form action="#">
                            <div class="input-field">
                            <input type="text" placeholder="Enter your ID" required>
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div class="input-field">
                            <input type="password" class="password" placeholder="Enter your password" required>
                            <i class="uil uil-lock icon"></i>
                        </div>
                        <div class="checkbox-text">
                            <div class="checkbox-content">
                                <input type="checkbox" id="logCheck">
                                <label for="logCheck" class="text">Remember me</label>
                            </div>
    
                            <a href="#" class="text" onclick="display('sectionForPass')"><br /><br />Forgot password?</a>
                        </div>
                        <div class="input-field button">
                            <input type="button" value="Login">
                        </div>
                        <div class="login-signup">
                            <span class="text">Not a member?</span>
                            <a href="#" class="text signup-text" onclick="display('sectionRegister')">Sign Up</a>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--<script src="script.js"></script>-->
    <script type="text/javascript" src="https://d1tgh8fmlzexmh.cloudfront.net/ccbp-static-website/js/ccbp-ui-kit.js"></script>
     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status == "error")
    	{
    	    swal("Sorry","Wrong Username or Password,Try again","error");
    	}
    
    
</script>
    </body>
</html>


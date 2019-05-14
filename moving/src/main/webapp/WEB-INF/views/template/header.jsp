<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <title>로그인 - movingJS</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
    body {font-family: Arial, Helvetica, sans-serif;}

    #site_logo {
        font-size: 35px;
        color: white;
        line-height: 50px;
    }

    #search_input{
        vertical-align: middle;
        margin-top: 18px;
        width: 500px;
        height: 50px;
        font-size: 20px;
    }

    #search_btn{
        font-size: 31px;
        vertical-align: bottom;
        background: white;
        border: none;
    }

    .search_warp{
        margin-left: 20%
    }
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      height: 86px;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}

    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }

    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

    /* Full-width input fields */
    .login_input, .join_input {
      width: 41%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    .join_btn, .login_btn, .logout_btn, .cancelbtn, .login_sns {
    /*  background-color: ;*/
      color: white;
      font-size: 15px;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 20.3%;
    }
    .join_btn, .login_btn, .logout_btn{
      display: inline-block;
    }
    .login_sns{
     width: 41%;
    }    

    button:hover {
      opacity: 0.8;
    }


    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 30%; /* Could be more or less, depending on screen size */
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }

    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
         display: block;
         float: none;
      }
      .cancelbtn {
         width: 100%;
      }
    }
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a id="site_logo" class="navbar-brand" href="#">Moving_JS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav search_warp">
        <li>
            <input id="search_input" type="text" placeholder="search movie">
            <button id="search_btn"><i class="fa fa-search"></i></button>           
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a><span class="login_btn" onclick="document.getElementById('login').style.display='block'">login</span></a></li>
          <li><a><span class="logout_btn" onclick="">logout</span></a></li>
        <li><a><span class="join_btn" onclick="document.getElementById('join').style.display='block'">join</span></a></li>
      </ul>
    </div>
  </div>
</nav>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

<!-- login --> 
<div id="login" class="modal">
  <form class="modal-content animate" action="/action_page.php">
    <div class="container">
      <label for="uname"><b>Username</b></label><br/>
      <input class="login_input" type="text" placeholder="Enter Username" name="uname" required><br/>

      <label for="psw"><b>Password</b></label><br/>
      <input class="login_input" type="password" placeholder="Enter Password" name="psw" required><br/>
      <button class="login_btn" type="submit">Login</button>
      <button type="button" onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
      <div>
        <span style="font-size: 18px;">다른 계정으로 로그인</span>
      </div>
      <button class="login_sns" type="submit" style="background: #3B5998;">페이스북으로 로그인</button><br/>
      <button class="login_sns" type="submit" style="background: #03CF5D;">네이버로 로그인</button><br/>
      <button class="login_sns" type="submit" style="background: #FBE300;">카카오로 로그인</button><br/>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
  </form>
</div>
    
<!-- join --> 
<div id="join" class="modal">
  <form class="modal-content animate" action="/action_page.php">
       <div class="container">
      <label for="uname"><b>E-mail</b></label><br/>
      <input class="join_input" type="text" placeholder="Enter E-mail" name="email" required><br/>

      <label for="psw"><b>Password</b></label><br/>
      <input class="join_input" type="password" placeholder="Enter Password" name="psw" required><br/>
    
      <label for="psw"><b>Check Password</b></label><br/>
      <input class="join_input" type="password" placeholder="Enter Password" name="chkpsw" required><br/>
      <button class="join_btn" type="submit">Join</button>
      <button type="button" onclick="document.getElementById('join').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<script>
// Get the modal
var loginModal = document.getElementById('login');
var joinModal = document.getElementById('join');
    
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == joinModal || event.target == loginModal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
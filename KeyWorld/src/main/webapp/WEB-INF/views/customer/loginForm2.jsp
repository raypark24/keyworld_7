<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<style>
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

<style>
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}



/*.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65)));  Chrome,Safari4+ 
	z-index: 1;
	opacity: 0.7;
}*/

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Kaushan Script', 'Helvetica Neue', Helvetica, Arial, cursive;
	font-size: 40px;
	font-weight: 200;
}

.header div span{
	color: rgb(251,207,53) !important;
}
h2, th{
color: rgb(251,207,53) !important;
font-family: 'Kaushan Script', 'Helvetica Neue', Helvetica, Arial, cursive;
	
	font-weight: 200;
}
h2 {
	font-size: 40px;
	text-align : center;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}
.login input[type=email]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}
.login input[type=email]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}

#video { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;   
     z-index: -1;
     overflow: hidden;
}
 

table input{
	color: rgb(251,207,53);
}
#submit{
	color : blue;
}
#submit:hover { color: rgb(251,207,53); text-decoration: underline;}
a:link { color: blue; text-decoration: none;}
a:visited { color: blue; text-decoration: none;}
a:hover { color: rgb(251,207,53); text-decoration: underline;}
</style>
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script>
$(function(){
	var sign = '<h2>Sign up</h2><form action="join" method="POST"><table><tr><th>ID</th>'
			+'<td><input type="text" id="userid" name="userid" placeholder="3~10자리 아이디" style = "color: rgb(251,207,53);"/><div id = "result"></div></td></tr><tr>'
			+ '<th>Password</th>'
			+ '<td><input type="password" id="password" name="password" placeholder="3~10자리 비밀번호" style = "color: rgb(251,207,53);" /></td>	</tr>'
		 	+ '<tr><th>Password Check</th><td><input type="password" id="password2" style = "color: rgb(251,207,53);" /></td></tr>'
		 	+ '<tr><th>Name</th><td><input type="text" id="name" name="name"  style = "color: rgb(251,207,53);"/></td></tr>'
			+ '<tr><th>E-Mail</th><td><input type="email" id="email" name="email" style = "color: rgb(251,207,53);"/></td></tr>'
			+ '<tr><td colspan= "2"><input type="submit" id="send_btn" value="Sign up" disabled = "disabled" style = "background-color: rgb(251,207,53);width:370px; color: white"/>'
			+ '</td></tr><tr><td><a href="${pageContext.request.contextPath}/" >Back</a></td></tr></table></form>';
	
	$("#submit").on("click", function(){
		alert("dddd")
		$('.login').empty();
		
		$('.login').append(sign);
		$('.login').css({"position": "absolute" ,"top": "calc(50% - 200px)"}); 
		
	})
})
	
</script>

</head>
<body>

	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" style= "position: fixed;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;   
     z-index: -1;
     overflow: hidden;">
      <source src="resources/loginBackground.mp4">
</video>
    <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div><span>Key</span>World</div>
		</div>
		<br>
		<div class="login">
			
		<form action="login" method="POST">

				<input type="text" placeholder="userID" name="userid" style = "color: rgb(251,207,53);"><br>
				<input type="password" placeholder="password" name="password" style = "color: rgb(251,207,53);"><br>
				<input type="submit"  value="Login" style = "background-color: rgb(251,207,53); color: white">
                <div  style='flex:1 1 auto;padding:6px 0 0 0;cursor:pointer;color : white;'>Don't have an account? <a id = "submit" >Sign up here</a></div>
		</form>	
		</div><!-- .login  -->
</body>




</html>

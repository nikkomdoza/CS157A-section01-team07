<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: lightblue;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #2196F3;
	color: white;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

.topnav2 {
	overflow: hidden;
	background-color: #e9e9e9;
}

.topnav2 a {
	float: right;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav2 a:hover {
	background-color: #ddd;
	color: black;
}

.topnav2 a.active2 {
	background-color: #2196F3;
	color: white;
}

.dropdownbtn {
	float: right;
	background-color: #3498DB;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdownbtn:hover, .dropdownbtn:focus {
	background-color: #2980B9;
}

.dropdown {
	float: right;
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: right;
	background-color: #f1f1f1;
	min-width: 160px;
	overflow: auto;
}

.dropdown-content a {
	float: left;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	float: right;
	background-color: #ddd;
}

.show {
	float: right;
	display: block;
}

.search-container {
	text-align: center;
	padding-top: 15px;
}

.search-container #Depart-bar {
	display: inline-block;
	width: 250px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.search-container #Arrive-bar {
	display: inline-block;
	width: 250px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.search-container #search-button {
	height: 50px;
	width: 75px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.logo {
	text-align: center;
	padding-top: 100px;
	font-size: 50px;
	font-weight: bold;
}

.logo2 {
	text-align: center;
	padding-top: 50px;
	font-size: 25px;
	font-weight: bold;
}
</style>
</head>
<body>

	<div class="topnav">
		<a class="active" href="adminHomepage.jsp">Home</a> <a href="adminAbout.jsp">About</a>
		<a href="adminContact">Contact</a> <a href="adminSearch.jsp">Search</a>
		<div class="topnav2">
			<button onclick="adminHomepageDropdown()" class="dropdownbtn">
				<img
					src="https://img.icons8.com/wired/16/000000/add-user-group-man-woman.png" />
			</button>
		</div>
	</div>
	
	<div id="adminDropdown" class=dropdown-content>
		<a class="active2" href="adminLogin.jsp">Logout</a>
	</div>
	
	<script>
		function adminHomepageDropdown() {
			document.getElementById("adminDropdown").classList.toggle("show");
		}

		window.onclick = function(event) {
			if (!event.target.matches('.dropdownbtn')) {
				var adminDropdownContent = document.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < adminDropdownContent.length(); i++) {
					var showDropdown = adminDropdownContent[i];
					if (showDropdown.classList.contains('show')) {
						showDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>

	<div class="logo">
		<p>FlightCatch Admin Search</p>
	</div>

	<div class="search-container">
		<form action="adminSearch" method="GET">
			<input id="Depart-bar" type="text" name="departVal"
				placeholder="Depart"> <input id="Arrive-bar" type="text"
				name="arriveVal" placeholder="Arrive">
			<button id="search-button" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>
	
</body>
</html>
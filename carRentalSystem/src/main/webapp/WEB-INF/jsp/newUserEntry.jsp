<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration | RoadTripRental</title>
<style>
    body {
        background-image: url('https://www.hdwallpapers.in/download/red_lamborghini_aventador_autumn_road_car_4k_hd_cars-HD.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: 'Roboto', Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9); /* Frosted glass effect */
        padding: 30px 40px;
        border-radius: 15px;
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3);
        text-align: center;
        max-width: 450px;
        width: 100%;
        backdrop-filter: blur(10px);
    }

    h2 {
        font-size: 1.8em;
        color: #007BFF;
        margin-bottom: 15px;
    }

    p.tagline {
        font-size: 1em;
        color: #555;
        margin-bottom: 20px;
        font-style: italic;
    }

    label {
        font-size: 0.9em;
        color: #444;
        display: block;
        margin-bottom: 8px;
        text-align: left;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[list] {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1em;
        box-sizing: border-box;
    }

    button[type="button"],
    button[type="reset"] {
        width: 100%;
        padding: 12px;
        margin-top: 10px;
        border: none;
        border-radius: 8px;
        font-size: 1.1em;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button[type="button"] {
        background-color: #007BFF;
    }

    button[type="button"]:hover {
        background-color: #0056b3;
    }

    button[type="reset"] {
        background-color: #f44336;
    }

    button[type="reset"]:hover {
        background-color: #d32f2f;
    }
</style>
<script type="text/javascript">
    function passwordCheck() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;

        if (pass1.length < 5 || pass1.length > 10) {
            alert("Password must be between 5 to 10 characters long.");
            return;
        }
        if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
        } else {
            alert("Passwords do not match. Please try again.");
        }
    }
</script>
</head>
<body>
<div class="container">
    <h2>User Registration</h2>
    <p class="tagline">"Hit the road with ease – Register today!"</p>
    <form:form id="registrationForm" method="post" action="/register" modelAttribute="userRecord">
        <label for="username">User ID:</label>
        <form:input path="username" required="true" id="username" placeholder="Enter your User ID" />

        <label for="pass1">Password:</label>
        <form:input type="password" path="password" id="pass1" required="true" placeholder="Create a Password" />

        <label for="pass2">Confirm Password:</label>
        <input type="password" id="pass2" required="true" placeholder="Re-enter Password" />

        <label for="email">Email:</label>
        <form:input path="email" required="true" type="email" id="email" placeholder="Enter your Email" />

        <label for="type">User Type:</label>
        <input list="types" name="role" id="type" required="true" placeholder="Select a User Type"/>
        <datalist id="types">
            <option value="Customer" />
            <option value="Admin" />
        </datalist>

        <button type="button" onclick="passwordCheck();">Register</button>
        <button type="reset">Reset</button>
    </form:form>
</div>
</body>
</html>

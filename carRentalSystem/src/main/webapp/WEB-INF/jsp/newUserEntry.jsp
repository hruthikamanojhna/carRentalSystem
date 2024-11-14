<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
    body {
		background-image: url('https://www.hdwallpapers.in/download/red_lamborghini_aventador_autumn_road_car_4k_hd_cars-HD.jpg');
        background-color: #f4f4f9;
        font-family: Arial, sans-serif;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
    }

    .container {
        background-color: #ffffff;
        padding: 20px 40px;
        border-radius: 8px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
    }

    label {
        font-size: 14px;
        color: #555;
        display: block;
        margin-bottom: 8px;
        text-align: left;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[list] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 14px;
    }

    button[type="button"],
    button[type="reset"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        color: #fff;
        cursor: pointer;
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

        if (pass1 === pass2) {
            if (pass1.length >= 5 && pass1.length <= 10) {
                document.getElementById("registrationForm").submit();
            } else {
                alert("Password must be between 5 to 10 characters long.");
            }
        } else {
            alert("Passwords do not match. Please try again.");
        }
    }
</script>
</head>
<body>
<div class="container">
    <h2>User Registration Form</h2>
    <form:form id="registrationForm" method="post" action="/register" modelAttribute="userRecord">
        <label for="username">Enter User ID:</label>
        <form:input path="username" required="true" id="username" />

        <label for="pass1">Enter Password:</label>
        <form:input type="password" path="password" id="pass1" required="true" />

        <label for="pass2">Re-type Password:</label>
        <input type="password" id="pass2" required="true" />

        <label for="email">Enter Email:</label>
        <form:input path="email" required="true" type="email" id="email" />

        <label for="type">Select User Type:</label>
        <input list="types" name="role" id="type" required="true"/>
        <datalist id="types">
            <option value="Customer"/>
            <option value="Admin"/>
        </datalist>

        <button type="button" onclick="passwordCheck();">Submit</button>
        <button type="reset">Reset</button>
    </form:form>
</div>
</body>
</html>

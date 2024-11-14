<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
			background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-top: 10px;
            text-align: left;
        }

        input[type="text"], input[type="email"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        button {
            width: 48%;
            padding: 10px;
            margin-top: 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            color: white;
            cursor: pointer;
        }

        button[type="submit"] {
            background-color: #007BFF;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        button[type="reset"] {
            background-color: #f44336;
        }

        button[type="reset"]:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Customer Entry Page</h1>
    <form:form action="/customerAdd" method="post" modelAttribute="customerRecord">
        <form:hidden path="username"/>
		<form:hidden path="email"/>
		<form:hidden path="status"/>
		
		<label for="username">Enter User Name:</label>
		        <form:input path="username" id="username" required="true"/>

        <label for="email">Enter Email:</label>
        <form:input path="email" id="email" required="true"/>

        <label for="firstName">Enter First Name:</label>
        <form:input path="firstName" id="firstName" required="true"/>

        <label for="lastName">Enter Last Name:</label>
        <form:input path="lastName" id="lastName" required="true"/>

        <label for="address">Enter Address:</label>
        <form:input path="address" id="address" required="true"/>

        <label for="mobile">Enter Mobile Number:</label>
        <form:input path="mobile" id="mobile" required="true"/>

        <label for="license">Enter License Number:</label>
        <form:input path="license" id="license" required="true"/>

        <label for="expiryDate">Enter License Expiry Date:</label>
        <form:input path="expiryDate" id="expiryDate" type="date" required="true"/>

        <div style="display: flex; justify-content: space-between;">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>
</body>
</html>

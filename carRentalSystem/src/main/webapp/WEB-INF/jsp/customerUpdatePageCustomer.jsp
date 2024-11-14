<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Update Page</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
			background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            text-decoration: underline;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            box-sizing: border-box;
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Form Styles */
        .form-container label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #333;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="date"],
        .form-container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-container input[disabled] {
            background-color: #e9ecef;
        }

        .form-container button {
            width: 48%;
            padding: 10px;
            margin-top: 20px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container button[type="reset"] {
            background-color: #f44336;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .form-container button[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Button Container */
        .button-container {
            display: flex;
            justify-content: space-between;
        }

        .form-container input[type="hidden"] {
            display: none;
        }

        /* Responsive Styles */
        @media (max-width: 600px) {
            .form-container {
                padding: 15px;
                width: 100%;
                max-width: none;
            }

            .form-container button {
                width: 100%;
                margin-top: 10px;
            }

            .button-container {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h1>Customer Update Page</h1>
        
        <form:form action="/customerUpdate" method="post" modelAttribute="customerRecord">
            <!-- Hidden Fields -->
            <form:hidden path="username"/>
            <form:hidden path="email"/>
            <form:hidden path="status" />
            <form:hidden path="firstName" />
            <form:hidden path="mobile" />
            <form:hidden path="license" />

            <!-- User Name (Disabled) -->
            <label for="username">User Name:</label>
            <form:input path="username" disabled="true"/>
            
            <label for="email">Email:</label>
            <form:input path="email" disabled="true"/>
            
            <label for="firstName">First Name:</label>
            <form:input path="firstName" disabled="true"/>
            
            <!-- Update Last Name -->
            <label for="lastName">Update Last Name:</label>
            <form:input path="lastName"/>
            
            <!-- Update Address -->
            <label for="address">Update Address:</label>
            <form:input path="address"/>
            
            <!-- Mobile Number (Disabled) -->
            <label for="mobile">Mobile Number:</label>
            <form:input path="mobile" disabled="true"/>
            
            <!-- License Number (Disabled) -->
            <label for="license">License Number:</label>
            <form:input path="license" disabled="true"/>
            
            <!-- Update License Expiry Date -->
            <label for="expiryDate">Update License Expiry Date:</label>
            <form:input type="date" placeholder="dd-mm-yy" path="expiryDate"/>

            <!-- Status (Disabled) -->
            <label for="status">Status:</label>
            <form:input path="status" disabled="true"/>
            
            <!-- Submit and Reset Buttons -->
            <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</div>

</body>
</html>

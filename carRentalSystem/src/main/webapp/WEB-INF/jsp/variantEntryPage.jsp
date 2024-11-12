<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Variant Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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

        input[type="text"] {
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
    <h1>Car Variant Entry Page</h1>
    <form:form action="/variantAdd" method="post" modelAttribute="variantRecord">
        <form:hidden path="variantId"/>
        
        <label for="variantId">Variant ID:</label>
        <form:input path="variantId" id="variantId" disabled="true"/>
        
        <label for="variantName">Enter Variant Name:</label>
        <form:input path="variantName" id="variantName" required="true"/>

        <label for="numberOfSeat">Enter Number of Seats:</label>
        <form:input path="numberOfSeat" id="numberOfSeat" required="true"/>

        <label for="fuel">Enter Type of Fuel:</label>
        <form:input path="fuel" id="fuel" required="true"/>

        <div style="display: flex; justify-content: space-between;">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>
</body>
</html>
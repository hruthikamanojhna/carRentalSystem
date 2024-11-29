<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Car</title>
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
            color: #333;
        }

        .container {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        header {
            text-align: center;
            padding-bottom: 20px;
        }

        header h1 {
            color: #007BFF;
            font-size: 24px;
            margin: 0;
        }

        nav a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }

        h2 {
            font-size: 20px;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
            text-align: left;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 1em;
        }

        button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        button[type="reset"] {
            background-color: #6c757d;
        }

        button[type="reset"]:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <h1>RoadTripRental</h1>
        <nav>
            <a href="/index">Home</a>
        </nav>
    </header>
    
    <h2>Add New Car</h2>
    
    <form:form action="/carAdd" method="post" modelAttribute="carRecord">
        <form:hidden path="available" />

        <label for="carNumber">Car Registration Number:</label>
        <form:input path="carNumber" id="carNumber" placeholder="Registration number" />

        <label for="carName">Car Name:</label>
        <form:input path="carName" id="carName" placeholder="Car name"/>

        <label for="carColor">Car Color:</label>
        <form:input path="carColor" id="carColor" placeholder="Car color" />

        <label for="manufacturer">Car Manufacturer Name:</label>
        <form:input path="manufacturer" id="manufacturer" placeholder="Manufacturer name" />

        <label for="yearOfMfg">Year of Manufacturing:</label>
        <form:input path="yearOfMfg" id="yearOfMfg" placeholder="Year of manufacturing" />

        <label for="rentRate">Rent Rate per Day:</label>
        <form:input path="rentRate" id="rentRate" placeholder="Rent rate per day" />

        <label for="variantId">Select Variant:</label>
        <form:select path="variantId" id="carVariantId">
            <form:option value="" label="Select Variant Id" disabled="true" />
            <c:forEach items="${variantIdList}" var="vids">
                <form:option value="${vids}">${vids}</form:option>
            </c:forEach>
        </form:select>

        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </form:form>
</div>
</body>
</html>

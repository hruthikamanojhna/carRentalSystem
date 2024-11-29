<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Car</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829796.jpg');
            background-color: #f5f6fa;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #2f3640;
        }

        header {
            width: 100%;
            padding: 15px;
            background-color: #3498db;
            color: #fff;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 24px;
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
            padding: 0 10px;
        }

        h2 {
            color: #333;
            font-size: 26px;
            margin-top: 20px;
            text-align: center;
        }

        form {
            width: 60%;
            max-width: 600px;
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            color: #2f3640;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        button {
            padding: 10px 20px;
            margin: 10px 5px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #3498db;
            color: #fff;
        }

        button[type="submit"]:hover {
            background-color: #2980b9;
        }

        button[type="reset"] {
            background-color: #e74c3c;
            color: #fff;
        }

        button[type="reset"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <header>
        <h1>RoadTripRental</h1>
        <nav>
            <a href="${pageContext.request.contextPath}/index">Home</a>
        </nav>
    </header>

    <h2>Update Car</h2>

    <form:form action="/carUpdate" method="post" modelAttribute="carRecord">
        <form:hidden path="carNumber" />
        <form:hidden path="carName" />
        <form:hidden path="carColor" />
        <form:hidden path="manufacturer" />
        <form:hidden path="yearOfMfg" />
        <form:hidden path="variantId" />

        <label for="carNumber">Car Registration Number:</label>
        <form:input path="carNumber" id="carNumber" placeholder="Registration number" disabled="true" />
        
        <label for="carName">Car Name:</label>
        <form:input path="carName" id="carName" placeholder="Car name" disabled="true" />

        <label for="carColor">Car Color:</label>
        <form:input path="carColor" id="carColor" placeholder="Car color" disabled="true" />

        <label for="manufacturer">Car Manufacturer Name:</label>
        <form:input path="manufacturer" id="manufacturer" placeholder="Manufacturer name" disabled="true" />

        <label for="yearOfMfg">Year of Manufacturing:</label>
        <form:input path="yearOfMfg" id="yearOfMfg" placeholder="Year of manufacturing" disabled="true" />

        <label for="rentRate">Enter New Rent Rate per Day:</label>
        <form:input path="rentRate" id="rentRate" placeholder="Rent rate per hour" />

        <label for="variantId">Variant Id:</label>
        <form:input path="variantId" id="variantId" placeholder="Variant Id" disabled="true" />

        <label for="availability">Car Availability:</label>
        <form:select path="available" id="available">
            <option value="true" ${carRecord.available ? 'selected' : ''}>Available</option>
            <option value="false" ${!carRecord.available ? 'selected' : ''}>Unavailable</option>
        </form:select>

        <div style="text-align: center;">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</body>
</html>

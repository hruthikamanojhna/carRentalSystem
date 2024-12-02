<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Car</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding-top: 100px; /* Offset for fixed header */
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }
		header {
		           width: 100%;
		           position: fixed;
		           top: 0;
		           background-color: rgba(0, 0, 0, 0.8);
		           color: white;
		           z-index: 1000;
		       }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .btn, .logout-btn {
            text-decoration: none;
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover, .logout-btn:hover {
            background-color: #0056b3;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 100%;
            max-width: 500px;
            margin: 20px;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            color: #007BFF;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            text-align: left;
            color: #333;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        select:focus {
            outline: none;
            border-color: #007BFF;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
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

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                margin: 10px;
            }

            input[type="text"],
            select {
                font-size: 12px;
            }

            button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div>
                <h1 class="logo">RoadTripRental</h1>
            </div>
            <div>
                <a href="/index" class="btn">Home</a>
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>

    <div class="container">
        <h2>Add New Car</h2>
        <form:form action="/carAdd" method="post" modelAttribute="carRecord">
            <form:hidden path="available" />

            <label for="carNumber">Car Registration Number:</label>
            <form:input path="carNumber" id="carNumber" placeholder="Enter Registration number" />

            <label for="carName">Car Name:</label>
            <form:input path="carName" id="carName" placeholder="Enter Car name" />

            <label for="carColor">Car Color:</label>
            <form:input path="carColor" id="carColor" placeholder="Enter Car color" />

            <label for="manufacturer">Car Manufacturer Name:</label>
            <form:input path="manufacturer" id="manufacturer" placeholder="Enter Manufacturer name" />

            <label for="yearOfMfg">Year of Manufacturing:</label>
            <form:input path="yearOfMfg" id="yearOfMfg" placeholder="Enter Year of Manufacturing" />

            <label for="rentRate">Rent Rate per Day:</label>
            <form:input path="rentRate" id="rentRate" placeholder="Enter Rent rate per day" />

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

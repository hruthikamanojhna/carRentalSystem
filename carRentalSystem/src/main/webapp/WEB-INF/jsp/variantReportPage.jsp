<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Variant Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
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
        }

        .navbar {
            display: flex;
            align-items: center;
            gap: 15px;
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
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            width: 90%;
            margin-top: 100px;
        }

        h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 16px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .button, .action-link {
            display: inline-block;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .button {
            background-color: #007BFF;
            color: white;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .action-link {
            color: #d9534f;
        }

        .action-link:hover {
            color: #c9302c;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div class="navbar">
                <h1 class="logo">RoadTripRental</h1>
                <a href="/index" class="btn" id="home-btn">Home</a>
            </div>
            <div class="navbar navbar-right">
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>

    <div class="container">
        <h1>Car Variant Report</h1>
        <table>
            <tr>
                <th>Variant ID</th>
                <th>Variant Name</th>
                <th>Number of Seats</th>
                <th>Fuel Usage</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${variantList}" var="variant">
                <tr>
                    <td>${variant.variantId}</td>
                    <td>${variant.variantName}</td>
                    <td>${variant.numberOfSeat}</td>
                    <td>${variant.fuel}</td>
                    <td><a href="/variantDeletion/${variant.variantId}" class="action-link">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="/index" class="button">Return to Home</a>
    </div>
</body>
</html>

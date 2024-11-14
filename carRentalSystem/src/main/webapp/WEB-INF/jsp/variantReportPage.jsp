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
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 16px;
            color: #333;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a, .button {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover, .button:hover {
            color: #0056b3;
        }

        .button {
            display: inline-block;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .action-link {
            color: #d9534f;
            text-decoration: none;
            font-weight: bold;
        }

        .action-link:hover {
            color: #c9302c;
        }
    </style>
</head>
<body>
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

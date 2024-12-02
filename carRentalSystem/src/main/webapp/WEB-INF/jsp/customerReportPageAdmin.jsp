<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Report</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-size: cover;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: #333;
            padding-top: 80px; /* Offset for the fixed header */
        }
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #2c3e50;
            font-size: 2.5em;
            text-decoration: underline;
        }
        h2 {
            text-align: center;
            font-size: 1.5em;
            color: #555;
            margin-bottom: 30px;
        }
        .table-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            padding: 20px;
        }
        table {
            width: 90%;
            max-width: 1200px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #3498db;
            color: white;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #3498db;
            text-decoration: none;
            padding: 8px 15px;
            border: 2px solid #3498db;
            border-radius: 5px;
            font-weight: bold;
        }
        a:hover {
            background-color: #3498db;
            color: white;
        }
        .action-links {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        /* Header Styles */
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background-color: #333;
            color: white;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
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
        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 95%;
            }
            th, td {
                font-size: 14px;
                padding: 10px;
            }
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

    <div>
        <h1>Customer Report</h1>
        <h2>View and Update Customer Details</h2>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>License</th>
                        <th>Expiry Date</th>
                        <th>Mobile</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customerList}" var="customer">
                        <tr>
                            <td>${customer.username}</td>
                            <td>${customer.firstName}</td>
                            <td>${customer.lastName}</td>
                            <td>${customer.address}</td>
                            <td>${customer.email}</td>
                            <td>${customer.license}</td>
                            <td>${customer.expiryDate}</td>
                            <td>${customer.mobile}</td>
                            <td>${customer.status}</td>
                            <td>
                                <div class="action-links">
                                    <a href="customerDelete/${customer.username}">Delete</a>
                                    <a href="customerUpdate/${customer.username}">Update</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

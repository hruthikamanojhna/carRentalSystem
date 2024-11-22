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
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
            color: #333;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
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
            margin-top: 30px;
            padding: 20px;
        }
        table {
            width: 100%;
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
            text-decoration: none;
        }
        .action-links {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .action-links a {
            margin: 0 5px;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 90%;
            }
            th, td {
                font-size: 14px;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
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

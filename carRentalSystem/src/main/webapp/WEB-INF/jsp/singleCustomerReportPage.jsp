<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Report</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
			background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background: linear-gradient(145deg, #f0f0f0, #dcdcdc);
            color: #333;
            margin: 0;
            padding: 0;
            height: 100vh;
        }
        
        h1 {
            color: #2c3e50;
            text-decoration: underline;
            margin-top: 40px;
            text-align: center;
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
            box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9ecef;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            table {
                width: 90%;
                margin-bottom: 20px;
            }

            th, td {
                font-size: 14px;
                padding: 12px;
            }

            h1 {
                font-size: 24px;
            }
        }

        /* Adding space between table and other elements */
        h2 {
            text-align: center;
        }

    </style>
</head>
<body>
    <div>
        <h1><u>Customer Report</u></h1>
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
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
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
                        <td><a href="customerUpdate/${customer.username}">Update</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

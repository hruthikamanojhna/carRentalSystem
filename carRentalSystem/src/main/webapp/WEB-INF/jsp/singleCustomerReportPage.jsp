<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Report</title>
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
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 18px;
            margin-bottom: 20px;
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
            padding: 10px;
            text-align: left;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container a {
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .button-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Details</h1>

        <!-- Show error message if no customer data found -->
        <c:if test="${not empty errorMessage}">
            <p class="error-message">${errorMessage}</p>
        </c:if>

        <!-- Show customer details if available -->
        <c:if test="${not empty customer}">
            <table>
                <tr>
                    <th>Username</th>
                    <td>${customer.username}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${customer.email}</td>
                </tr>
                <tr>
                    <th>First Name</th>
                    <td>${customer.firstName}</td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td>${customer.lastName}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${customer.address}</td>
                </tr>
                <tr>
                    <th>Mobile</th>
                    <td>${customer.mobile}</td>
                </tr>
                <tr>
                    <th>License Number</th>
                    <td>${customer.license}</td>
                </tr>
                <tr>
                    <th>License Expiry Date</th>
                    <td>${customer.expiryDate}</td>
                </tr>
				<tr>
					<th>Status</th>
					<td>${customer.status}</d>
				</tr>
            </table>

            <!-- Button to update customer details -->
            <div class="button-container">
                <a href="/customerUpdate/${customer.username}">Update Information</a>
            </div>
        </c:if>
    </div>
</body>
</html>

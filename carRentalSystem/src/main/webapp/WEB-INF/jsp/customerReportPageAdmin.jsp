<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Report</title>
	<style>
	    body {
	        font-family: Arial, sans-serif;
	        background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
	        background-size: cover;
	        background-position: center;
	        background-attachment: fixed;
	        margin: 0;
	        padding: 0;
	    }

	    .container {
	        background-color: rgba(255, 255, 255, 0.9);
	        padding: 30px;
	        border-radius: 15px;
	        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	        max-width: 1000px; /* Increased from 900px */
	        width: 90%; /* Adjusted width to make use of larger screens */
	        text-align: center;
	        margin: 40px auto;
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
	        position: relative;
	    }

	    tr:nth-child(even) {
	        background-color: #f9f9f9;
	    }

	    tr:hover {
	        background-color: #f1f1f1;
	    }

	    th[title]::after {
	        content: " ℹ️";
	        font-size: 14px;
	    }

	    .status-active {
	        color: green;
	        font-weight: bold;
	    }

	    .status-inactive {
	        color: red;
	        font-weight: bold;
	    }

	    .action-button {
	        background-color: #007BFF;
	        color: white;
	        border: none;
	        padding: 8px 12px;
	        margin: 0 4px;
	        border-radius: 4px;
	        cursor: pointer;
	        font-size: 14px;
	    }

	    .action-button:hover {
	        background-color: #0056b3;
	    }

	    @media (max-width: 768px) {
	        .container {
	            padding: 15px;
	        }

	        h1 {
	            font-size: 24px;
	        }

	        table {
	            display: block;
	            overflow-x: auto;
	            font-size: 14px;
	        }

	        tr {
	            display: block;
	        }
	    }
	</style>

</head>
<body>
<div class="container">
    <h1>Customer Report</h1>
    <table>
        <tr>
            <th title="Username of the customer">Username</th>
            <th title="Customer's first name">First Name</th>
            <th title="Customer's last name">Last Name</th>
            <th title="Email address of the customer">Email</th>
            <th title="Physical address of the customer">Address</th>
            <th title="Mobile number of the customer">Mobile</th>
            <th title="License ID of the customer">License</th>
            <th title="Expiration date of the customer's license">Expiry Date</th>
            <th title="Current status of the customer">Status</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.username}</td>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>${customer.mobile}</td>
                <td>${customer.license}</td>
                <td>${customer.expiryDate}</td>
                <td class="${customer.status == 'Active' ? 'status-active' : 'status-inactive'}">${customer.status}</td>
                <td>
                    <form action="/customerUpdate/${customer.username}" method="get" style="display:inline;">
                        <button type="submit" class="action-button">Update</button>
                    </form>
                    <form action="/customerDelete/${customer.username}" method="post" style="display:inline;">
                        <button type="submit" class="action-button">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

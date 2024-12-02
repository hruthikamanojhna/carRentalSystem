<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Customer Report</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background: linear-gradient(135deg, #74ebd5, #acb6e5);
                color: #333;
                margin: 0;
                padding: 0;
                min-height: 100vh;
            }

            /* Header styling */
            .header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 20px;
                background-color: #007bff;
                color: white;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .header .logo {
                font-size: 1.8rem;
                font-weight: bold;
            }

            .header-links {
                display: flex;
                gap: 15px;
            }

            .header-links a {
                text-decoration: none;
                font-size: 1rem;
                color: white;
                background-color: #0056b3;
                padding: 8px 16px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .header-links a:hover {
                background-color: #003f87;
            }

            /* Main Content Styling */
            h1 {
                font-size: 2rem;
                color: #2c3e50;
                text-align: center;
                margin-top: 20px;
                text-decoration: underline;
            }

            .table-container {
                display: flex;
                justify-content: center;
                margin: 30px 20px;
                padding: 20px;
            }

            table {
                width: 100%;
                max-width: 1200px;
                border-collapse: collapse;
                background: white;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                overflow: hidden;
            }

            th, td {
                padding: 15px;
                text-align: center;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #007bff;
                color: white;
                font-weight: bold;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            tr:hover {
                background-color: #e9ecef;
            }

            a {
                color: #007bff;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            /* Responsive Styling */
            @media (max-width: 768px) {
                table {
                    width: 90%;
                    font-size: 0.9rem;
                }

                th, td {
                    padding: 10px;
                }

                h1 {
                    font-size: 1.5rem;
                }

                .header {
                    flex-direction: column;
                    text-align: center;
                    gap: 10px;
                }

                .header-links {
                    flex-wrap: wrap;
                    gap: 10px;
                }
            }
        </style>
    </head>
    <body>
        <!-- Header Section -->
		<header>
		        <style>
		            .header-content {
		                display: flex;
		                justify-content: space-between;
		                align-items: center;
		                padding: 15px 30px;
		                background-color: #333;
		                color: white;
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
		        </style>
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
        <!-- Main Content -->
        <div>
            <h1>Customer Report</h1>
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

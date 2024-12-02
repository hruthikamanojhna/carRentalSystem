<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Customer Entry Page</title>

	    <style>
	        body {
	            font-family: Arial, sans-serif;
	            background: linear-gradient(145deg, #74ebd5, #9face6);
	            color: #333;
	            margin: 0;
	            padding: 0;
	        }

	        /* Header styling */
	        .header {
	            display: flex;
	            justify-content: space-between;
	            align-items: center;
	            padding: 10px 20px;
	            background-color: #007bff;
	            color: white;
	            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	        }

	        .header .logo {
	            font-size: 1.5em;
	            font-weight: bold;
	        }

	        .header .header-links {
	            display: flex;
	            gap: 10px;
	        }

	        .header .header-links a {
	            text-decoration: none;
	            font-size: 0.9em;
	            padding: 8px 12px;
	            background-color: #0056b3;
	            color: white;
	            border-radius: 5px;
	            transition: background-color 0.3s ease;
	        }

	        .header .header-links a:hover {
	            background-color: #003f87;
	        }

	        /* Main container styling */
	        .container {
	            max-width: 400px;
	            margin: 40px auto;
	            background-color: #ffffff;
	            padding: 20px;
	            border-radius: 10px;
	            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	        }

	        h1 {
	            text-align: center;
	            color: #2c3e50;
	            margin-bottom: 20px;
	        }

	        form {
	            display: flex;
	            flex-direction: column;
	            gap: 12px;
	        }

	        label {
	            font-size: 0.9em;
	            color: #555;
	            margin-bottom: 5px;
	        }

	        input[type="text"],
	        input[type="email"],
	        input[type="date"] {
	            width: 100%;
	            padding: 8px;
	            font-size: 0.9em;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	        }

	        input:disabled {
	            background-color: #e9ecef;
	        }

	        .button-container {
	            display: flex;
	            justify-content: space-between;
	            gap: 10px;
	        }

	        button {
	            padding: 8px 16px;
	            font-size: 0.9em;
	            color: white;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            transition: background-color 0.3s ease;
	        }

	        button[type="submit"] {
	            background-color: #28a745;
	        }

	        button[type="submit"]:hover {
	            background-color: #218838;
	        }

	        button[type="reset"] {
	            background-color: #dc3545;
	        }

	        button[type="reset"]:hover {
	            background-color: #c82333;
	        }

	        @media (max-width: 768px) {
	            .container {
	                margin: 20px;
	                padding: 15px;
	            }

	            h1 {
	                font-size: 1.4em;
	            }

	            .header {
	                flex-direction: column;
	                text-align: center;
	                gap: 10px;
	            }

	            .header .header-links {
	                flex-wrap: wrap;
	                gap: 10px;
	            }

	            .button-container {
	                flex-direction: column;
	                gap: 12px;
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
	    <div class="container">
	        <h1>Customer Entry Page</h1>
	        <form:form action="/customerAdd" method="post" modelAttribute="customerRecord">

	            <form:hidden path="username" />
	            <form:hidden path="email" />
	            <form:hidden path="status" />

	            <div>
	                <label for="username">User Name:</label>
	                <form:input path="username" disabled="true" />
	            </div>

	            <div>
	                <label for="email">Email:</label>
	                <form:input path="email" disabled="true" />
	            </div>

	            <div>
	                <label for="firstName">Enter First Name:</label>
	                <form:input path="firstName" />
	            </div>

	            <div>
	                <label for="lastName">Enter Last Name:</label>
	                <form:input path="lastName" />
	            </div>

	            <div>
	                <label for="address">Enter Address:</label>
	                <form:input path="address" />
	            </div>

	            <div>
	                <label for="mobile">Enter Mobile Number:</label>
	                <form:input path="mobile" />
	            </div>

	            <div>
	                <label for="license">Enter License Number:</label>
	                <form:input path="license" />
	            </div>

	            <div>
	                <label for="expiryDate">Enter License Expiry Date:</label>
	                <form:input type="date" placeholder="dd-mm-yy" path="expiryDate" />
	            </div>

	            <div class="button-container">
	                <button type="submit">Submit</button>
	                <button type="reset">Reset</button>
	            </div>
	        </form:form>
	    </div>
	</body>
</html>

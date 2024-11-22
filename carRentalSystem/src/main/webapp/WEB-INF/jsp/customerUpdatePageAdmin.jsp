<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Update Page</title>

    <!-- CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
			background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%; /* Further reduced container width */
            max-width: 380px; /* Reduced max-width */
            margin: 30px auto; /* Reduced top margin */
            background-color: #ffffff;
            padding: 15px; /* Reduced padding */
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Smaller shadow */
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 1.8em; /* Reduced font size */
            margin-bottom: 10px; /* Reduced space below title */
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 8px; /* Reduced gap between elements */
        }

        label {
            font-size: 0.9em; /* Smaller font size for labels */
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            padding: 6px; /* Reduced padding */
            font-size: 0.85em; /* Smaller font size for inputs */
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            margin-top: 4px; /* Reduced margin */
            background-color: #f9f9f9;
        }

        input[type="text"]:disabled,
        input[type="email"]:disabled {
            background-color: #e9ecef;
        }

        .button-container {
            display: flex;
            justify-content: space-between; /* Buttons side by side */
            gap: 8px; /* Reduced gap between buttons */
        }

        button {
            background-color: #007bff;
            color: white;
            font-size: 0.9em; /* Smaller font size for buttons */
            padding: 6px 14px; /* Reduced padding */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 48%; /* Buttons adjusted to fit side by side */
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

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 6px; /* Reduced gap between input fields */
        }

        @media (max-width: 768px) {
            .container {
                width: 90%; /* Container becomes wider on smaller screens */
                padding: 12px; /* Reduced padding for smaller screens */
            }

            h1 {
                font-size: 1.6em; /* Slightly smaller title on mobile */
            }

            button {
                width: 100%; /* Buttons take full width on smaller screens */
            }

            .button-container {
                flex-direction: column; /* Stack buttons vertically on small screens */
                gap: 10px;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <h1><u>Customer Update Page</u></h1>
        <form:form action="/customerUpdate" method="post" modelAttribute="customerRecord">

            <form:hidden path="username" />
            <form:hidden path="email" />
            <!--<form:hidden path="status" />-->
            <form:hidden path="firstName" />
            <form:hidden path="mobile" />
            <form:hidden path="license" />

            <div class="form-group">
                <label for="username">User Name:</label>
                <form:input path="username" disabled="true" />
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <form:input path="email" disabled="true" />
            </div>

            <div class="form-group">
                <label for="firstName">First Name:</label>
                <form:input path="firstName" disabled="true" />
            </div>

            <div class="form-group">
                <label for="lastName">Update Last Name:</label>
                <form:input path="lastName" />
            </div>

            <div class="form-group">
                <label for="address">Update Address:</label>
                <form:input path="address" />
            </div>

            <div class="form-group">
                <label for="mobile">Mobile Number:</label>
                <form:input path="mobile" disabled="true" />
            </div>

            <div class="form-group">
                <label for="license">License Number:</label>
                <form:input path="license" disabled="true" />
            </div>

            <div class="form-group">
                <label for="expiryDate">Update License Expiry Date:</label>
                <form:input type="date" path="expiryDate" />
            </div>

			<div class="form-group">
			    <label for="status">Status:</label>
			    <form:select path="status">
			        <form:option value="true">Active</form:option>
			        <form:option value="false">Inactive</form:option>
			    </form:select>
			</div>


            <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>

        </form:form>
    </div>

</body>

</html>

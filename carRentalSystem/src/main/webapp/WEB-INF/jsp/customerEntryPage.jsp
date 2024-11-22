<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Entry Page</title>

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
        <h1><u>Customer Entry Page</u></h1>
        <form:form action="/customerAdd" method="post" modelAttribute="customerRecord">

            <form:hidden path="username" />
            <form:hidden path="email" />

            <div class="form-group">
                <label for="username">User Name:</label>
                <form:input path="username" disabled="true" />
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <form:input path="email" disabled="true" />
            </div>

            <div class="form-group">
                <label for="firstName">Enter First Name:</label>
                <form:input path="firstName" />
            </div>

            <div class="form-group">
                <label for="lastName">Enter Last Name:</label>
                <form:input path="lastName" />
            </div>

            <div class="form-group">
                <label for="address">Enter Address:</label>
                <form:input path="address" />
            </div>

            <div class="form-group">
                <label for="mobile">Enter Mobile Number:</label>
                <form:input path="mobile" />
            </div>

            <div class="form-group">
                <label for="license">Enter License Number:</label>
                <form:input path="license" />
            </div>

            <div class="form-group">
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

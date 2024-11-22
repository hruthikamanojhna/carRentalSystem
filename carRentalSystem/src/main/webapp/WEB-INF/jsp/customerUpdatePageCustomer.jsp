<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Update Page</title>
    <style>
        /* Background styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            padding: 0 20px;
        }

        /* Form container styling */
        form {
            background-color: #ffffff;
            padding: 15px 25px; /* Reduced padding */
            border-radius: 10px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 600px; /* Increased width */
            width: 100%;
            max-height: 650px; /* Set a max-height for the form */
            overflow-y: auto; /* Allow scrolling if content overflows */
            box-sizing: border-box;
        }

        h1 {
            color: #333;
            font-size: 26px; /* Adjusted heading size */
            margin-bottom: 12px; /* Reduced margin-bottom */
            text-align: center;
        }

        /* Input field styling */
        form input[type="text"],
        form input[type="date"] {
            width: 100%;
            padding: 8px; /* Reduced padding */
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 6px; /* Reduced margin */
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        form input[type="text"]:focus,
        form input[type="date"]:focus {
            border-color: #28a745;
            outline: none;
        }

        /* Button container and button styling */
        .button-container {
            display: flex;
            gap: 10px;
            justify-content: space-between;
            margin-top: 15px; /* Reduced margin-top */
        }

        button {
            padding: 8px 16px; /* Reduced button padding */
            font-size: 14px; /* Adjusted font size */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 48%;
            transition: background-color 0.3s ease;
        }

        button[type="submit"] {
            background-color: #28a745;
        }

        button[type="reset"] {
            background-color: #dc3545;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }

        button[type="reset"]:hover {
            background-color: #c82333;
        }

        /* Label styling */
        form label {
            font-weight: bold;
            margin-bottom: 4px; /* Reduced margin */
            display: inline-block;
        }

        /* Responsive styling for small screens */
        @media (max-width: 600px) {
            form {
                padding: 20px 30px;
                max-height: none; /* Remove max-height for smaller screens */
            }
            h1 {
                font-size: 20px; /* Adjust heading size */
            }
            button {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
<div align="center">
    <h1>Customer Update Page</h1>
    <form:form action="/customerUpdate" method="post" modelAttribute="customerRecord">
        <form:hidden path="username"/>
        <form:hidden path="email"/>
        <form:hidden path="status" />
        <form:hidden path="firstName" />
        <form:hidden path="mobile" />
        <form:hidden path="license" />

        <label>User Name:</label>
        <form:input path="username" disabled="true"/>
        <br/>

        <label>Email:</label>
        <form:input path="email" disabled="true"/>
        <br/>

        <label>First Name:</label>
        <form:input path="firstName" disabled="true"/>
        <br/>

        <label>Update Last Name:</label>
        <form:input path="lastName" />
        <br/>

        <label>Update Address:</label>
        <form:input path="address"/>
        <br/>

        <label>Mobile Number:</label>
        <form:input path="mobile" disabled="true" />
        <br/>

        <label>License Number:</label>
        <form:input path="license" disabled="true"/>
        <br/>

        <label>Update License Expiry Date:</label>
        <form:input type="date" placeholder="dd-mm-yy" path="expiryDate" />
        <br/>

        <label>Status:</label>
        <form:input path="status" disabled="true"/>
        <br/>

        <div class="button-container">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>
</body>
</html>

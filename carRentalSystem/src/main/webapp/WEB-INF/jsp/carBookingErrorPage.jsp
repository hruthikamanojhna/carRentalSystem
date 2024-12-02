<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Error</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
	    <style>
	        /* Header Styling */
	        .header-content {
	            display: flex;
	            justify-content: space-between;
	            align-items: center;
	            padding: 10px 20px;
	            background-color: #343a40;
	            color: #fff;
	        }
	        .logo {
	            font-size: 1.5rem;
	            font-weight: bold;
	        }
	        .navbar a {
	            text-decoration: none;
	            color: white;
	            margin: 0 10px;
	            padding: 5px 10px;
	            border-radius: 5px;
	            transition: background-color 0.3s ease;
	        }
	        .navbar a:hover {
	            background-color: #495057;
	        }

	        /* Error Container Styling */
	        .error-container {
	            max-width: 600px;
	            margin: 50px auto;
	            padding: 20px;
	            text-align: center;
	            background-color: #f8f9fa;
	            border-radius: 8px;
	            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	        }
	        .error-message {
	            font-size: 2rem;
	            color: #dc3545; /* Red for error */
	            margin-bottom: 20px;
	        }

	        /* Buttons/Links Styling */
	        .action-links {
	            display: flex;
	            flex-direction: column;
	            align-items: center;
	            gap: 10px;
	        }
	        .link-button {
	            display: inline-block;
	            padding: 10px 15px;
	            font-size: 1rem;
	            color: white;
	            background-color: #007bff;
	            text-decoration: none;
	            border-radius: 5px;
	            transition: background-color 0.3s ease;
	        }
	        .link-button:hover {
	            background-color: #0056b3;
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
    <div class="error-container">
        <h1 class="error-message">${errorMessage}</h1>
        <br>
        <div class="section action" id="bk-action">
            <div class="action-links">
                <a href="/index" class="link-button action-link">Return to Home</a>
                <br><br>
                <a href="${redirectLink}" class="link-button action-link">${linkText}</a>
            </div>
        </div>
    </div>
</body>
</html>
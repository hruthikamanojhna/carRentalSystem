<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Report - Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829792.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            color: #333;
            padding-top: 80px; /* Adjust for fixed header */
        }

        /* Header styling */
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            margin: 0;
            color: #ffffff;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
        }

        .nav-links {
            display: flex;
            gap: 15px;
        }

        .btn, .logout-btn {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .btn:hover, .logout-btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                align-items: center;
                padding: 10px 20px;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
                gap: 10px;
                margin-top: 10px;
            }
        }

        /* Table and general styles */
        h1 {
            font-size: 28px;
            color: #007BFF;
            margin: 20px 0;
            text-align: center;
        }

        table {
            width: 90%;
            max-width: 1200px;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: grey;
            color: white;
            text-transform: uppercase;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .variant-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            border: 1px solid #ddd;
        }

        .variant-table th, .variant-table td {
            padding: 8px 10px;
            border: 1px solid #ddd;
        }

        .variant-table th {
            background-color: grey;
            font-weight: bold;
            text-align: left;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }

        h3 {
            margin: 20px 0;
            text-align: center;
        }

        h3 a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        h3 a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <div class="logo">
                RoadTripRental
            </div>
            <div class="nav-links">
                <a href="/index" class="btn">Home</a>
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>

    <h1>Admin Car Report</h1>

    <table>
        <tr>
            <th>Car Number</th>
            <th>Car Name</th>
            <th>Color</th>
            <th>Manufacturer</th>
            <th>Year Of Mfg</th>
            <th>Rent Rate (₹/day)</th>
            <th>Variant Details</th>
            <th>Availability</th>
            <th>Actions</th>
        </tr>

        <c:forEach items="${carList}" var="car">
            <tr>
                <td>${car.carNumber}</td>
                <td>${car.carName}</td>
                <td>${car.carColor}</td>
                <td>${car.manufacturer}</td>
                <td>${car.yearOfMfg}</td>
                <td>₹${car.rentRate}/day</td>
                <td>
                    <c:set var="carVariant" value="${variantMap[car.variantId]}" />
                    <c:if test="${carVariant != null}">
                        <table class="variant-table">
                            <tr>
                                <th>Variant Id</th>
                                <td>${carVariant.variantId}</td>
                            </tr>
                            <tr>
                                <th>Variant Name</th>
                                <td>${carVariant.variantName}</td>
                            </tr>
                            <tr>
                                <th>No. of Seats</th>
                                <td>${carVariant.numberOfSeat}</td>
                            </tr>
                            <tr>
                                <th>Fuel</th>
                                <td>${carVariant.fuel}</td>
                            </tr>
                        </table>
                    </c:if>
                </td>
                <td>
                    <c:choose>
                        <c:when test="${car.available == true}">Available</c:when>
                        <c:otherwise>Not Available</c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="carUpdate/${car.carNumber}">Update</a> |
                    <a href="/carDelete/${car.carNumber}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h3><a href="/index">Return</a></h3>
</body>
</html>

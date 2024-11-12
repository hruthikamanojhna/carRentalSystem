<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #333;
        }

        header {
            width: 100%;
            padding: 20px;
            background-color: #007BFF;
            color: #fff;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 24px;
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
        }

        h1 {
            color: #333;
            font-size: 24px;
            margin-top: 20px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        td {
            color: #333;
        }

        .variant-table {
            width: 100%;
            background-color: #f9f9f9;
            border-radius: 5px;
            margin-top: 10px;
        }

        .variant-table th, .variant-table td {
            padding: 8px;
            border: none;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3;
        }

        h3 {
            margin-top: 20px;
            font-size: 18px;
        }

        button {
            background-color: #007BFF;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <h1>Rent & Drive</h1>
        <nav>
            <a href="/index">Home</a>
        </nav>
    </header>

    <h1>Car Report</h1>
  
    <table>
        <tr>
            <th>Car Number</th>
            <th>Car Name</th>
            <th>Color</th>
            <th>Manufacturer</th>
            <th>Year Of Mfg</th>
            <th>Rent Rate</th>
            <th>Variant Detail</th>
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
                <td>₹${car.rentRate}/hour</td>
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

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
            background-color: #f5f6fa;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #2f3640;
        }

        header {
            width: 100%;
            padding: 15px;
            background-color: #3498db;
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
            padding: 0 10px;
        }

        h1 {
            color: #333;
            font-size: 26px;
            margin-top: 20px;
            text-align: center;
        }

        table {
            width: 90%;
            max-width: 1200px;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        th, td {
            padding: 10px 15px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
            font-weight: bold;
            text-align: left;
        }

        td {
            color: #333;
        }

        .variant-table {
            width: 100%;
            margin-top: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .variant-table th, .variant-table td {
            padding: 6px;
            border: none;
            text-align: left;
        }

        a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #2980b9;
        }

        h3 {
            margin-top: 20px;
            font-size: 18px;
            text-align: center;
        }

        h3 a {
            color: #3498db;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <header>
        <h1>Rent & Drive</h1>
        <nav>
            <a href="${pageContext.request.contextPath}/index">Home</a>
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
            </tr>
        </c:forEach>
    </table>

    <br />
    <h3><a href="${pageContext.request.contextPath}/index">Return</a></h3>
</body>
</html>

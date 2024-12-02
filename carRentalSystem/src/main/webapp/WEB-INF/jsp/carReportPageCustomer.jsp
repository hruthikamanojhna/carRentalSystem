<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cars</title>
    <style>
        /* Header Styling */
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background-color: #333;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar-left {
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

        /* Main container styling */
        .main-container {
            padding: 20px 40px;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        .primary-heading {
            font-size: 28px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Table Styling */
        .table-container {
            overflow-x: auto;
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 90%;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th, .table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        .table-header {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        .table-row:nth-child(even) {
            background-color: #f9f9f9;
        }

        .table-row:hover {
            background-color: #f1f1f1;
        }

        /* Inner table for variant details */
        .inner-table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }

        .inner-table th, .inner-table td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .inner-table th {
            background-color: #f0f0f0;
            font-weight: bold;
        }

        /* Action button styling */
        .action-cell {
            display: flex;
            justify-content: center;
        }

        .action-btn {
            text-decoration: none;
            padding: 8px 12px;
            border-radius: 5px;
            color: white;
            font-size: 14px;
            background-color: #28a745;
            transition: background-color 0.3s ease;
        }

        .action-btn:hover {
            background-color: #218838;
        }

        /* Return link styling */
        .return-link {
            text-decoration: none;
            color: #007BFF;
            font-size: 18px;
        }

        .return-link:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="header-content">
            <!-- Left Navbar: Logo and Home Button -->
            <div class="navbar-left">
                <h1 class="logo">RoadTripRental</h1>
                <a href="/index" class="btn" id="home-btn">Home</a>
            </div>
            <!-- Right Navbar: Logout Button -->
            <div class="navbar-right">
                <a href="/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-container" id="carReportMainContainer">
        <h1 class="primary-heading">Car Report</h1>
        <br />
        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Car Number</th>
                    <th>Car Name</th>
                    <th>Color</th>
                    <th>Manufacturer</th>
                    <th>Year Of Mfg</th>
                    <th>Rent Rate / day</th>
                    <th>Variant Detail</th>
                    <th>Availability</th>
                    <th>Actions</th>
                </tr>

                <c:forEach items="${carList}" var="car">
                    <tr class="table-row">
                        <td>${car.carNumber}</td>
                        <td>${car.carName}</td>
                        <td>${car.carColor}</td>
                        <td>${car.manufacturer}</td>
                        <td>${car.yearOfMfg}</td>
                        <td>₹${car.rentRate}/hour</td>
                        <td>
                            <c:set var="carVariant" value="${variantMap[car.variantId]}" />
                            <c:if test="${carVariant != null}">
                                <table class="inner-table">
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
                        <td class="action-cell">
                            <a href="/newBooking/${car.carNumber}" class="action-btn book-btn">Book</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <br />
        <h3><a class="return-link" href="/index">Return</a></h3>
    </div>
</body>
</html>

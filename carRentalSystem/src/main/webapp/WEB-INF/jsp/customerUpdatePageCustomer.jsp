<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Customer Information</title>
</head>
<body>
    <div align="center">
        <h1>Update Your Information</h1>
        <hr/>

        <form:form method="post" modelAttribute="customerRecord">
            <!-- Hidden License Field -->
            <form:hidden path="license" />

            <!-- Display Fields -->
            User Name: <form:input path="username" disabled="true" />
            <br/><br/>

            Email: <form:input path="email" disabled="true" />
            <br/><br/>

            First Name: <form:input path="firstName" disabled="true" />
            <br/><br/>

            <!-- Updatable Fields -->
            Update Last Name: <form:input path="lastName" />
            <br/><br/>

            Update Address: <form:input path="address" />
            <br/><br/>

            Mobile Number: <form:input path="mobile" disabled="true" />
            <br/><br/>

            License Number: <form:input path="license" disabled="true" />
            <br/><br/>

            Update License Expiry Date: <form:input path="expiryDate" type="date" placeholder="dd-mm-yyyy" />
            <br/><br/>

            Update Status: <form:input path="status" />
            <br/><br/>

            <!-- Submit and Reset Buttons -->
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Submitted</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Application Submitted Successfully</h1>
    <p>Below is the data you entered:</p>

    <%
        // Retrieve form parameters from request
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String experience = request.getParameter("experience");
        String position = request.getParameter("position");
        String comments = request.getParameter("comments");
    %>

    <!-- display the data in a table -->
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= fullname %></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Years of Experience</td>
            <td><%= experience %></td>
        </tr>
        <tr>
            <td>Position Applied For</td>
            <td><%= position %></td>
        </tr>
        <tr>
            <td>Additional Comments</td>
            <td><%= comments %></td>
        </tr>
    </table>
</body>
</html>
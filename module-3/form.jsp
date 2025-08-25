<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Job Application Form</h1>
    <p>Please fill out the following information for your job application:</p>

    <!-- form submits data to display.jsp -->
    <form action="display.jsp" method="post">
        <!-- text input -->
        <label for="fullname">Full Name:</label>
        <input type="text" name="fullname" id="fullname" required><br><br>

        <!-- email input -->
        <label for="email">Email Address:</label>
        <input type="email" name="email" id="email" required><br><br>

        <!-- number input -->
        <label for="experience">Years of Experience:</label>
        <input type="number" name="experience" id="experience" min="0" max="50" required><br><br>

        <!-- dropdown menu -->
        <label for="position">Position Applied For:</label>
        <select name="position" id="position">
            <option value="Developer">Developer</option>
            <option value="Designer">Designer</option>
            <option value="Project Manager">Project Manager</option>
            <option value="QA Tester">QA Tester</option>
        </select><br><br>

        <!-- text area -->
        <label for="comments">Additional Comments:</label><br>
        <textarea name="comments" id="comments" rows="4" cols="40"></textarea><br><br>

        <input type="submit" value="Submit Application">
    </form>
</body>
</html>
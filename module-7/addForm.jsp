<%@ page language="java" %>
<html>
<head>
    <title>Add a New Movie</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Add a New Movie</h2>

<form method="post" action="addMovie.jsp">
    <label>Title:</label><br>
    <input type="text" name="title" required><br><br>

    <label>Director:</label><br>
    <input type="text" name="director" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" required><br><br>

    <label>Rating:</label><br>
    <input type="number" step="0.1" name="rating" required><br><br>

    <input type="submit" value="Add Movie">
</form>

<a href="index.jsp">Back</a>
</body>
</html>
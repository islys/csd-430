<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="beans.Movie" %>
<%
    // Create an array of Movie beans
    Movie[] movies = {
        new Movie("Halloween", "John Carpenter", 1978, "Slasher", "R"),
        new Movie("A Nightmare on Elm Street", "Wes Craven", 1984, "Supernatural Horror", "R"),
        new Movie("Friday the 13th", "Sean S. Cunningham", 1980, "Slasher", "R"),
        new Movie("Child's Play", "Tom Holland", 1988, "Doll Horror", "R"),
        new Movie("Sleepaway Camp", "Robert Hiltzik", 1983, "Slasher", "R")
    };
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Slasher Horror Movie Collection</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Slasher Horror Movie Collection</h1>
    <p>This table displays five classic horror films, including their title, director, release year, genre, and rating.</p>

    <table>
        <tr>
            <th>Title</th>
            <th>Director</th>
            <th>Release Year</th>
            <th>Genre</th>
            <th>Rating</th>
        </tr>
        <%
            for(Movie m : movies) {
        %>
        <tr>
            <td><%= m.getTitle() %></td>
            <td><%= m.getDirector() %></td>
            <td><%= m.getYear() %></td>
            <td><%= m.getGenre() %></td>
            <td><%= m.getRating() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

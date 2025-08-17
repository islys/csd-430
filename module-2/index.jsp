<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    // Java Scriptlet: creating movie records
    class Movie {
        String title;
        String director;
        int year;
        Movie(String title, String director, int year) {
            this.title = title;
            this.director = director;
            this.year = year;
        }
    }

    // Creating an array of movies
    Movie[] movies = {
        new Movie("Halloween", "John Carpenter", 1978),
        new Movie("A Nightmare on Elm Street", "Wes Craven", 1984),
        new Movie("Friday the 13th", "Sean S. Cunningham", 1980),
        new Movie("Child's Play", "Tom Holland", 1988),
        new Movie("Sleepaway Camp", "Robert Hiltzik", 1983)
    };
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Favorite Movies</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Top 5 Slasher Horror Movies I Enjoyed</h1>
    <p>    <p>Below is a list of classic horror movies I’ve enjoyed, along with their directors and release years.</p>
</p>

    <table>
        <tr>
            <th>Title</th>
            <th>Director</th>
            <th>Release Year</th>
        </tr>
        <%
            // Loop through the movies array and display each record
            for(Movie m : movies) {
        %>
        <tr>
            <td><%= m.title %></td>
            <td><%= m.director %></td>
            <td><%= m.year %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
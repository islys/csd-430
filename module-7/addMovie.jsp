<%@ page import="java.sql.ResultSet, beans.MovieBean" %>
<html>
<head>
    <title>All Movies</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>All Movies in the Database</h2>

<%
    // gather form inputs
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseYearStr = request.getParameter("release_year");
    String genre = request.getParameter("genre");
    String ratingStr = request.getParameter("rating");

    MovieBean bean = new MovieBean();

    if (title != null && director != null && releaseYearStr != null && genre != null && ratingStr != null) {
        int releaseYear = Integer.parseInt(releaseYearStr);
        double rating = Double.parseDouble(ratingStr);

        // insert new record
        bean.addMovie(title, director, releaseYear, genre, rating);
    }

    // get all records
    ResultSet rs = bean.getAllMovies();
%>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Release Year</th>
            <th>Genre</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
<%
    while (rs.next()) {
%>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
<%
    }
    rs.close();
    bean.close();
%>
    </tbody>
</table>

<a href="addForm.jsp">Add Another Movie</a> | <a href="index.jsp">Home</a>
</body>
</html>

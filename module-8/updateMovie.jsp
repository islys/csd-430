<%@ page import="java.sql.ResultSet, beans.MovieBean" %>
<html>
<head>
    <title>Movie Updated</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Movie Updated</h2>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    int releaseYear = Integer.parseInt(request.getParameter("release_year"));
    String genre = request.getParameter("genre");
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieBean bean = new MovieBean();
    bean.updateMovie(movieId, title, director, releaseYear, genre, rating);

    ResultSet rs = bean.getMovieById(movieId);

    if (rs.next()) {
%>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Year Released</th>
            <th>Genre</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
    </tbody>
</table>
<%
    } else {
%>
<p>Error: record not found.</p>
<%
    }
    rs.close();
    bean.close();
%>

<a href="form.jsp">Back to Select</a> | <a href="index.jsp">Home</a>
</body>
</html>

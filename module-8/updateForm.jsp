<%@ page import="java.sql.ResultSet, beans.MovieBean" %>
<html>
<head>
    <title>Update Movie</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Update Movie</h2>

<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getMovieById(movieId);

    if (rs.next()) {
%>
<form method="post" action="updateMovie.jsp">
    <p><b>ID:</b> <%= rs.getInt("movie_id") %></p>
    <input type="hidden" name="movie_id" value="<%= rs.getInt("movie_id") %>">

    <label>Title:</label><br>
    <input type="text" name="title" value="<%= rs.getString("title") %>" required><br><br>

    <label>Director:</label><br>
    <input type="text" name="director" value="<%= rs.getString("director") %>" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" value="<%= rs.getInt("release_year") %>" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" value="<%= rs.getString("genre") %>" required><br><br>

    <label>Rating:</label><br>
    <input type="number" step="0.1" name="rating" value="<%= rs.getDouble("rating") %>" required><br><br>

    <input type="submit" value="Update Movie">
</form>
<%
    } else {
%>
    <p>No movie found!</p>
<%
    }
    rs.close();
    bean.close();
%>

<a href="form.jsp">Back</a>
</body>
</html>

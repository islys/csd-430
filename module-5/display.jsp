<%@ page import="java.sql.ResultSet, beans.MovieBean, java.util.List" %>
<html>
<head>
    <title>Movie Details</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Movie Details</h2>

<%
    // get movie ID
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    // get movie record
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getMovieById(movieId);

    // display in table
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
    <p>No movie found!</p>
<%
    }
    rs.close();
    bean.close();
%>

<a href="form.jsp">Back</a>
</body>
</html>
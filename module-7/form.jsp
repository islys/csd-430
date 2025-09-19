<%@ page import="beans.MovieBean, java.util.List" %>
<html>
<head>
    <title>Select a Movie</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Select a Movie</h2>

<!-- dropdown form  -->
<form method="get" action="display.jsp">
    <select name="movieId">
        <%
            // bean for movie data
            MovieBean bean = new MovieBean();
            List<Integer> ids = bean.getAllMovieIds();
            for (Integer id : ids) {
        %>
            <option value="<%=id%>"><%=id%></option>
        <%
            }
            bean.close();
        %>
    </select>
    <br>
    <input type="submit" value="View Movie">
</form>

</body>
</html>
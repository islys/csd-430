<%@ page import="beans.MovieBean, java.util.List" %>
<html>
<head>
    <title>Select a Movie to Update</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Select a Movie to Update</h2>

<!-- dropdown form  -->
<form method="get" action="updateForm.jsp">
    <select name="movieId">
        <%
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
    <input type="submit" value="Edit Movie">
</form>

<a href="index.jsp">Back</a>
</body>
</html>

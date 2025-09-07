package beans; //package declaration

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieBean {
    private Connection con;

    // connect to databsae
    public MovieBean() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/CSD430";
        con = DriverManager.getConnection(url, "student1", "pass");
    }
    // get all movie IDs from database
    public List<Integer> getAllMovieIds() throws SQLException {
        List<Integer> ids = new ArrayList<>();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT movie_id FROM ryan_movies_data");
        while (rs.next()) {
            ids.add(rs.getInt("movie_id"));
        }
        rs.close();
        stmt.close();
        return ids;
    }
    // get movie details by ID
    public ResultSet getMovieById(int movieId) throws SQLException {
        PreparedStatement ps = con.prepareStatement("SELECT * FROM ryan_movies_data WHERE movie_id=?");
        ps.setInt(1, movieId);
        return ps.executeQuery();
    }
    // close con
    public void close() throws SQLException {
        if (con != null) con.close();
    }
}

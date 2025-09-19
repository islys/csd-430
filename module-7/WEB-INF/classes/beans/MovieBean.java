package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * MovieBean handles database operations for the ryan_movies_data table.
 * It connects to the database, retrieves records, and allows adding new movies.
 * Always call close() when done to release the connection.
 */
public class MovieBean {
    private Connection conn;

    /**
     * Constructor: opens DB connection to CSD430 database.
     */
    public MovieBean() {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to CSD430 database
            String url = "jdbc:mysql://localhost:3306/CSD430";
            conn = DriverManager.getConnection(url, "student1", "pass");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Get a single movie by its ID.
     */
    public ResultSet getMovieById(int movieId) throws SQLException {
        String sql = "SELECT * FROM ryan_movies_data WHERE movie_id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, movieId);
        return ps.executeQuery();
    }

    /**
     * Get all movie IDs (for dropdowns in forms).
     */
    public List<Integer> getAllMovieIds() throws SQLException {
        List<Integer> ids = new ArrayList<>();
        String sql = "SELECT movie_id FROM ryan_movies_data ORDER BY movie_id";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            ids.add(rs.getInt("movie_id"));
        }

        rs.close();
        stmt.close();
        return ids;
    }

    /**
     * Insert a new movie record into ryan_movies_data.
     */
    public void addMovie(String title, String director, int releaseYear, String genre, double rating) throws SQLException {
        String sql = "INSERT INTO ryan_movies_data (title, director, release_year, genre, rating) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, title);
        ps.setString(2, director);
        ps.setInt(3, releaseYear);
        ps.setString(4, genre);
        ps.setDouble(5, rating);
        ps.executeUpdate();
        ps.close();
    }

    /**
     * Get all movies (full table) for display.
     */
    public ResultSet getAllMovies() throws SQLException {
        String sql = "SELECT * FROM ryan_movies_data ORDER BY movie_id";
        Statement stmt = conn.createStatement();
        return stmt.executeQuery(sql);
    }

    /**
     * Close DB connection to release resources.
     */
    public void close() {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

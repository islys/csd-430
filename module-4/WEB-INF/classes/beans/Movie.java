package beans;

import java.io.Serializable;

/**
 * Movie JavaBean to hold movie data for display in JSP.
 * Implements Serializable as required.
 */
public class Movie implements Serializable {
    private static final long serialVersionUID = 1L;

    private String title;
    private String director;
    private int year;
    private String genre;
    private String rating;

    // Default constructor (required for JavaBeans)
    public Movie() {}

    // Full constructor
    public Movie(String title, String director, int year, String genre, String rating) {
        this.title = title;
        this.director = director;
        this.year = year;
        this.genre = genre;
        this.rating = rating;
    }

    // Getters and setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public int getYear() { return year; }
    public void setYear(int year) { this.year = year; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public String getRating() { return rating; }
    public void setRating(String rating) { this.rating = rating; }
}
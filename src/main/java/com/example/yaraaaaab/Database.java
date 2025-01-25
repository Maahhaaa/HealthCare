package com.example.yaraaaaab;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    // Database credentials
    private static final String URL = "jdbc:mysql://localhost:3306/mydb";  // Replace with your database URL
    private static final String USER = "root";  // Replace with your database username
    private static final String PASSWORD = "password";  // Replace with your database password

    // Method to establish a database connection
    public Connection connection() {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create and return the connection
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection Successful");

            return con;  // Return the connection object

        } catch (ClassNotFoundException | SQLException e) {
            // Handle and print any errors that occur
            System.out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
        return null;  // Return null if connection fails
    }

    public static void main(String[] args) {
        Database db = new Database();
        db.connection();  // Test the connection method
    }
}

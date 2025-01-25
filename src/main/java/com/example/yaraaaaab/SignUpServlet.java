package com.example.yaraaaaab;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        // Check if any parameter is missing
        if (username == null || password == null || email == null || fullName == null) {
            request.setAttribute("error", "All fields are required.");
            request.getRequestDispatcher("signUp.jsp").forward(request, response);
            return;
        }

        try (Connection con = new Database().connection()) {
            // Check if the username already exists
            String checkQuery = "SELECT * FROM users WHERE username = ?";
            PreparedStatement checkStmt = con.prepareStatement(checkQuery);
            checkStmt.setString(1, username);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                // Username already exists
                request.setAttribute("error", "Username already exists.");
                request.getRequestDispatcher("signUp.jsp").forward(request, response);
            } else {
                // Insert new user into the database
                String query = "INSERT INTO users (username, password, email, full_name) VALUES (?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, email);
                ps.setString(4, fullName);  // Make sure fullName is also stored
                ps.executeUpdate();

                // User inserted successfully, redirect to the home page or login page
                response.sendRedirect(request.getContextPath() + "/index.jsp");  // Ensures proper path handling
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Log the exception for debugging
            request.setAttribute("error", "An error occurred during registration.");
            request.getRequestDispatcher("signUp.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();  // Log any other unexpected errors
            request.setAttribute("error", "Unexpected error.");
            request.getRequestDispatcher("signUp.jsp").forward(request, response);
        }
    }
}

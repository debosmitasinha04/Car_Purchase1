package util; // Make sure this matches your project's package name

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() {
        Connection con = null;
        try {
            // 1. The MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Your Clever Cloud Credentials
            String url = "jdbc:mysql://bic9jbmocsw0fko7w6aw-mysql.services.clever-cloud.com:3306/bic9jbmocsw0fko7w6aw";
            String user = "u0goidzvxbkbiikn";
            String pass = "YJxGQkjZAaJt6E5zhEtc";

            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Cloud Database Connected Successfully!");
        } catch (Exception e) {
            System.out.println("Database Connection Failed!");
            e.printStackTrace();
        }
        return con;
    }
}
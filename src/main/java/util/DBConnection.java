package util;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	 private static final String URL = "jdbc:mysql://localhost:3306/car_purchase";
	    private static final String USER = "root";
	    private static final String PASSWORD = "password";  // change if your MySQL password is different

	    public static Connection getConnection() {
	        Connection con = null;

	        try {
	            // Load Driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Create Connection
	            con = DriverManager.getConnection(URL, USER, PASSWORD);

	            System.out.println("Database Connected Successfully ✅");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return con;
	    }
}

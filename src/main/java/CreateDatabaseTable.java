import java.sql.Connection;
import java.sql.Statement;
import util.DBConnection; // This uses the code we fixed earlier

public class CreateDatabaseTable {
    public static void main(String[] args) {
        // The SQL command to create your user table
        String sql = "CREATE TABLE IF NOT EXISTS users (" +
                     "id INT AUTO_INCREMENT PRIMARY KEY, " +
                     "name VARCHAR(100) NOT NULL, " +
                     "email VARCHAR(100) NOT NULL UNIQUE, " +
                     "password VARCHAR(100) NOT NULL, " +
                     "phone VARCHAR(15))";
        
        try (Connection con = DBConnection.getConnection();
             Statement stmt = con.createStatement()) {
            
            System.out.println("Attempting to create table...");
            stmt.executeUpdate(sql);
            System.out.println("Success! Your 'users' table is now ready in Clever Cloud.");
            
        } catch (Exception e) {
            System.out.println("Connection failed. Check your DBConnection.java details.");
            e.printStackTrace();
        }
    }
}
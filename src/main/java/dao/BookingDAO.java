package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DBConnection;

public class BookingDAO {

    public static boolean bookCar(String name, String email, String carName, double amount) {

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO booking(name,email,car_name,amount) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, carName);
            ps.setDouble(4, amount);

            int i = ps.executeUpdate();

            return i > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}

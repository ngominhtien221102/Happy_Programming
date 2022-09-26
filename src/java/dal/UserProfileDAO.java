package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import model.UserProfile;

/**
 *
 * @author Lenovo
 */
public class UserProfileDAO {

    private ArrayList<UserProfile> usProList;
    private Connection con;

    public UserProfileDAO() {
    }

    public ArrayList<UserProfile> getUsProList() {
        return usProList;
    }

    public Connection getCon() {
        return con;
    }

    public void setUsProList(ArrayList<UserProfile> usProList) {
        this.usProList = usProList;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public ArrayList<UserProfile> load() {
        usProList = new ArrayList<>();
        String sql = "Select * from User";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usProList.add(new UserProfile(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6).toLocalDate(), rs.getInt(7), rs.getBoolean(8), rs.getDate(9).toLocalDate()));
            }
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return usProList;
    }

    public void insert(int userID, String firstName, String lastName, String Avatar, String Email, String Dob, int addressID, boolean Gender) {
        LocalDate curDate = LocalDate.now();
        String createAt = curDate.toString();

        String sql = "Insert into User_Profile values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, Avatar);
            ps.setString(5, Email);
            ps.setString(6, Dob);
            ps.setInt(7, addressID);
            ps.setBoolean(8, Gender);
            ps.setString(9, createAt);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public void update(int userID, String firstName, String lastName,
            String Avatar, String Email, String Dob, int addressID, boolean Gender) {
        String sql = "Update [User_Profile] set Firstname=?, Lastname=?, Avatar=?, Email=?,Dob=?,"
                + "Address_ID=?, Gender=? where User_ID=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(8, userID);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, Avatar);
            ps.setString(4, Email);
            ps.setString(5, Dob);
            ps.setInt(6, addressID);
            ps.setBoolean(7, Gender);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public void delete(int userID) {
        String sql = "Delete from User_Profile where User_ID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
}

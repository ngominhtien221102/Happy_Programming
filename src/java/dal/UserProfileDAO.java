package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.UserProfile;

/**
 *
 * @author Lenovo
 */
public class UserProfileDAO extends DBContext {

    private ArrayList<UserProfile> usProList;

    public UserProfileDAO() {
    }

    public ArrayList<UserProfile> getUsProList() {
        load();
        return usProList;
    }

    public void setUsProList(ArrayList<UserProfile> usProList) {
        this.usProList = usProList;
    }

    public void load() {
        usProList = new ArrayList<>();
        String sql = "Select * from User_Profile";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usProList.add(new UserProfile(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getBoolean(8), rs.getString(9)));
            }
        } catch (SQLException e) {
            System.out.println("Error");
        }
        
    }

    public void insert(UserProfile u) {
        String sql = "Insert into User_Profile values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, u.getID());
            ps.setString(2, u.getFirstName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getAvatar());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getDob());
            ps.setInt(7, u.getAddressID());
            ps.setBoolean(8, u.isGender());
            ps.setString(9, u.getCreateAt());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public void update(UserProfile u) {
        String sql = "Update [User_Profile] set Firstname=?, Lastname=?, Avatar=?, Email=?,Dob=?,"
                + "Address_ID=?, Gender=? where User_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(8, u.getID());
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getAvatar());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getDob());
            ps.setInt(6, u.getAddressID());
            ps.setBoolean(7, u.isGender());
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public void delete(int userID) {
        String sql = "Delete from User_Profile where User_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, userID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
    
    public static void main(String[] args) {
        UserProfileDAO u = new UserProfileDAO();
        ArrayList<Integer> listID = new ArrayList<>();
        listID.add(6);
        listID.add(7);
        
        for (UserProfile userProfile : u.getUsProList()) {
            if(listID.contains(userProfile.getID()))
            {
                System.out.println(userProfile);
            }
        }
    }
 
    

}



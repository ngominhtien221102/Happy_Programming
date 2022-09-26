package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author Lenovo
 */
public class UserDAO extends DBContext {
    private ArrayList<User> usList;

    public ArrayList<User> getUsList() {
        return usList;
    }


    public void setUsList(ArrayList<User> usList) {
        this.usList = usList;
    }

    
      public ArrayList<User> load() {
         usList = new ArrayList<>();
        String sql = "Select * from User";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usList.add(new User(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getBoolean(5)));
            }
        } catch (SQLException e) {
            
        }
        return usList;
    }

    

    public void insert(int roleID, String accountName, String passWord) {
        boolean Status = false;
        String sql = "Insert into [User] values (?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, roleID);
            ps.setString(2, accountName);
            ps.setString(3, passWord);
            ps.setBoolean(4, Status);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
    
    public void update(int userID,int roleID, String passWord, boolean Status)
    {
         String sql = "Update [User] set Role_ID=?, Password=?, Status=?  where User_ID =?";
         try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(4, userID);
            ps.setInt(1, roleID);
            ps.setString(2, passWord);
            ps.setBoolean(3, Status);
            ps.execute();
        } catch (Exception e) {
             System.out.println("Error");
        }
    }
    
     public void delete(int id) {
        String sql = "delete from [User] where User_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            UserProfileDAO u = new UserProfileDAO();
            u.delete(id);
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
}
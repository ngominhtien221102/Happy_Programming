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
        load();
        return usList;
    }

    public void setUsList(ArrayList<User> usList) {
        this.usList = usList;
    }

    public void load() {
        usList = new ArrayList<>();
        String sql = "Select * from [User]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usList.add(new User(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getBoolean(5)));
            }
        } catch (SQLException e) {

        }

    }

    public User insert(User u) {
        boolean Status = false;
        String sql = "Insert into [User] values (?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, u.getRoleID());
            ps.setString(2, u.getAccountName());
            ps.setString(3, u.getPassWord());
            ps.setBoolean(4, u.isStatus());
            ps.executeUpdate();
            sql = "SELECT top(1) [User_ID]\n"
                    + "  FROM [dbo].[User]\n"
                    + "  order by User_ID desc";
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                u.setID(rs.getInt(1));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return u;
    }

    public void update(User u) {
        String sql = "Update [User] set Role_ID=?, Password=?, Status=?  where User_ID =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(4, u.getID());
            ps.setInt(1, u.getRoleID());
            ps.setString(2, u.getPassWord());
            ps.setBoolean(3, u.isStatus());
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
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
}

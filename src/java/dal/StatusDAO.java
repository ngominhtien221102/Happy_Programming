/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import model.Status;

/**
 *
 * @author minhd
 */
public class StatusDAO extends DBContext{
    private HashMap<Integer,String> statusHash;

    public StatusDAO() {
    }

    public void setStatusHash(HashMap<Integer,String> statusHash) {
        this.statusHash = statusHash;
    }

    public HashMap<Integer,String> getStatusHash() {
        load();
        return statusHash;
    }

     public Status insert(Status s) {
        String sql = "INSERT INTO [dbo].[Status]\n"
                + "           ([Status_ID]\n"
                + "           ,[Status_Name])\n"
                + "     VALUES\n"
                + "           (?, ?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, s.getID());
            ps.setString(2, s.getName());
            ps.executeUpdate();
            sql = "SELECT top(1) [Status_ID]\n"
                    + "  FROM [dbo].[Status]\n"
                    + "  order by Status_ID desc";
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                s.setID(rs.getInt(1));
            }
        } catch (SQLException e) {

        }
        return s;
    }

    public void update(Status s) {
        String sql = "UPDATE [dbo].[Status]\n"
                + "   SET [Status_Name] = ?\n"
                + " WHERE Status_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, s.getID());
            ps.setString(1, s.getName());
            ps.execute();
        } catch (SQLException e) {

        }
    }

    public void load() {
        statusHash = new HashMap<>();
        String sql = "SELECT * FROM Status";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                statusHash.put(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException e) {

        }

    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Status]\n"
                + "      WHERE Status_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {

        }
    }
}

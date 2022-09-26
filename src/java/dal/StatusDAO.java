/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Status;

/**
 *
 * @author minhd
 */
public class StatusDAO extends DBContext{
    private String status = "ok";
    private ArrayList<Status> statuslst;

    public StatusDAO() {
    }

    public String getStatus() {
        return status;
    }  

    public ArrayList<Status> getStatuslst() {
        return statuslst;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
     public void Insert(int id, String name) {
        String sql = "INSERT INTO [dbo].[Status]\n"
                + "           ([Status_ID]\n"
                + "           ,[Status_Name])\n"
                + "     VALUES\n"
                + "           (?, ?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.execute();
        } catch (SQLException e) {
            status = "error at insert Status " + e.getMessage();
        }
    }

    public void Update(int id, String name) {
        String sql = "UPDATE [dbo].[Status]\n"
                + "   SET [Status_Name] = ?\n"
                + " WHERE Status_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, id);
            ps.setString(1, name);
            ps.execute();
        } catch (SQLException e) {
            status = "error at update Status " + e.getMessage();
        }
    }

    public void Load() {
        statuslst = new ArrayList<>();
        String sql = "SELECT * FROM Status";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Status status = new Status();
                status.setId(rs.getInt(1));
                status.setName(rs.getString(2));
                statuslst.add(status);
            }
        } catch (SQLException e) {
            status = "error at load Status " + e.getMessage();
        }

    }

    public void Delete(int id) {
        String sql = "DELETE FROM [dbo].[Status]\n"
                + "      WHERE Status_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            status = "error at delete Status " + e.getMessage();
        }
    }
}

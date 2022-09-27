/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

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
    private ArrayList<Status> statuslst;

    public StatusDAO() {
    }

    public void setStatuslst(ArrayList<Status> statuslst) {
        this.statuslst = statuslst;
    }

    public ArrayList<Status> getStatuslst() {
        return statuslst;
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

        }
    }
}

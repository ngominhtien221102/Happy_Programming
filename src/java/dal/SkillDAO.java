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
import model.Skill;

/**
 *
 * @author minhd
 */
public class SkillDAO extends DBContext{

    private String status = "ok";
    private ArrayList<Skill> skilllst;

    public SkillDAO() {
    }

    public String getStatus() {
        return status;
    }

    public ArrayList<Skill> getSkilllst() {
        return skilllst;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    public void Insert(String name) {
        String sql =  "INSERT INTO [dbo].[Skill]\n"
                + "           ([Name])\n"
                + "     VALUES\n"
                + "           (?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.execute();
        } catch (SQLException e) {
            status = "error at insert Skill " + e.getMessage();
        }
    }

    public void Update(int id, String name) {
        String sql = "UPDATE [dbo].[Skill]\n"
                + "   SET [Name] = ?\n"
                + " WHERE Skill_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, id);
            ps.setString(1, name);
            ps.execute();
        } catch (SQLException e) {
            status = "error at update Skill " + e.getMessage();
        }
    }

    public void Load() {
        skilllst = new ArrayList<>();
        String sql = "SELECT * FROM Skill";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skill skill = new Skill();
                skill.setId(rs.getInt(1));
                skill.setName(rs.getString(2));
                skilllst.add(skill);
            }
        } catch (SQLException e) {
            status = "error at load Skill " + e.getMessage();
        }

    }

    public void Delete(int id) {
        String sql = "DELETE FROM [dbo].[Skill]\n"
                + "      WHERE Skill_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            status = "error at delete Skill " + e.getMessage();
        }
    }
    
}

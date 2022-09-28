/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

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
    private ArrayList<Skill> skilllst;

    public SkillDAO() {
    }

    public ArrayList<Skill> getRateList() {
        load();
        return skilllst;
    }
    
    public void setSkilllst(ArrayList<Skill> skilllst) {
        this.skilllst = skilllst;
    }

    public ArrayList<Skill> getSkilllst() {
        return skilllst;
    }
    
    public Skill insert(Skill skill) {
        String sql =  "INSERT INTO [dbo].[Skill]\n"
                + "           ([Name])\n"
                + "     VALUES\n"
                + "           (?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, skill.getName());
            ps.execute();
            
            String sql1 = "SELECT top(1) [Skill_ID]\n"
                    + "  FROM [dbo].[Skill]\n"
                    + "  order by Skill_ID desc";

            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                skill.setID(rs.getInt(1));
            }
            
        } catch (SQLException e) {
        }
        return skill;
    }

    public void update(Skill skill) {
        String sql = "UPDATE [dbo].[Skill]\n"
                + "   SET [Name] = ?\n"
                + " WHERE Skill_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, skill.getID());
            ps.setString(1, skill.getName());
            ps.execute();
        } catch (SQLException e) {
        }
    }

    public void load() {
        skilllst = new ArrayList<>();
        String sql = "SELECT * FROM Skill";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skill skill = new Skill();
                skill.setID(rs.getInt(1));
                skill.setName(rs.getString(2));
                skilllst.add(skill);
            }
        } catch (SQLException e) {

        }

    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Skill]\n"
                + "      WHERE Skill_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
        }
    }
    
}

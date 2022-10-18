/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.*;

/**
 *
 * @author ASUS
 */
public class MentorCVDAO extends DBContext {

    private ArrayList<MentorCV> mentorCVList;

    public ArrayList<MentorCV> getMentorCVList() {
        load();
        return mentorCVList;
    }

    public void setMentorCVList(ArrayList<MentorCV> mentorCVList) {
        this.mentorCVList = mentorCVList;
    }

    // Load Mentor CV 
    public void load() {
        mentorCVList = new ArrayList<>();

        String sql = "select * from Mentor_CV";
        String sql1 = "select Skill.Skill_ID,Skill.Name from Skill,Mentor_Skills "
                + "where Skill.Skill_ID = Mentor_Skills.Skill_ID and Mentor_ID = ?";
        try {
            PreparedStatement ps1 = connection.prepareStatement(sql);
            ResultSet rs1 = ps1.executeQuery();
            while (rs1.next()) {
                int id = rs1.getInt(1);
                String profession = rs1.getString(2);
                String introduction = rs1.getString(3);
                String serviceDescription = rs1.getString(4);
                String achivements = rs1.getString(5);

                ArrayList<Skill> skillList = new ArrayList<>();
                PreparedStatement ps2 = connection.prepareStatement(sql1);
                ps2.setInt(1, id);
                ResultSet rs2 = ps2.executeQuery();
                while (rs2.next()) {
                    skillList.add(new Skill(rs2.getInt(1), rs2.getString(2)));
                }
                mentorCVList.add(new MentorCV(id, profession, introduction, serviceDescription, achivements, skillList));
            }

        } catch (Exception e) {

        }
    }

    // Insert MentorCV, insert Mentor_Skills
    public void insert(MentorCV m) {
        String sql = "INSERT INTO [Mentor_CV]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Profession]\n"
                + "           ,[Introduction]\n"
                + "           ,[Service_Description]\n"
                + "           ,[Achivements])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, m.getID());
            ps.setString(2, m.getProfession());
            ps.setString(3, m.getIntroduction());
            ps.setString(4, m.getProfession());
            ps.setString(5, m.getAchivements());
            ps.execute();

        } catch (Exception e) {

        }

        try {
            String sql1 = "INSERT INTO [Mentor_Skills]\n"
                    + "           ([Mentor_ID]\n"
                    + "           ,[Skill_ID])\n"
                    + "     VALUES\n"
                    + "           (?,?)";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            for (Skill skill : m.getSkillList()) {
                ps1.setInt(1, m.getID());
                ps1.setInt(2, skill.getID());
                ps1.execute();
            }
        } catch (Exception e) {
        }

    }
    // update Mentor_CV

    public void update(MentorCV m) {
        String sql = "UPDATE [dbo].[Mentor_CV]\n"
                + "   SET [Profession] = ?\n"
                + "      ,[Introduction] = ?\n"
                + "      ,[Service_Description] = ?\n"
                + "      ,[Achivements] = ?\n"
                + " WHERE [Mentor_ID] = ?",
                sql1 = "DELETE FROM [dbo].[Mentor_Skills]\n"
                + "       WHERE [Mentor_ID] = ?",
                sql2 = "INSERT INTO [Mentor_Skills]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Skill_ID])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, m.getProfession());
            ps.setString(2, m.getIntroduction());
            ps.setString(3, m.getServiceDescription());
            ps.setString(4, m.getAchivements());
            ps.setInt(5, m.getID());
            ps.execute();
            
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setInt(1, m.getID());
            ps1.execute();
            
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            for (Skill skill : m.getSkillList()) {
                ps2.setInt(1, m.getID());
                ps2.setInt(2, skill.getID());
                ps2.execute();
            }
        } catch (Exception e) {

        }
    }

    // delete Mentor_CV -> Delete Mentor_Skills
    public void delete(int id) {
        String sql = "delete from Mentor_CV where Mentor_ID = ?",
                sql1 = "delete from Mentor_Skills where Mentor_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setInt(1, id);
            ps1.executeUpdate();
        } catch (Exception e) {

        }

    }
}

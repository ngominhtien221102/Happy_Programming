/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.*;

/**
 *
 * @author ASUS
 */
public class MentorCVDAO extends DBContext {

    private ArrayList<MentorCV> mentorCVList;

    public ArrayList<MentorCV> getMentorCVList() {
        return mentorCVList;
    }

    public void setMentorCVList(ArrayList<MentorCV> mentorCVList) {
        this.mentorCVList = mentorCVList;
    }

    // Load Mentor CV 
    public void load() {
        mentorCVList = new ArrayList<>();
        ArrayList<Skill> skillList = new ArrayList<>();
        String sql = "select * from Mentor_CV";
        String sql1 = "select Skill.Skill_ID,Skill.Name from Skill,Mentor_Skills "
                + "where Skill.Skill_ID = Mentor_Skills.Skill_ID and Mentor_ID = ?";
        try {

            PreparedStatement ps1 = connection.prepareStatement(sql);
            ResultSet rs1 = ps1.executeQuery();
            while (rs1.next()) {
                int id = rs1.getInt(1);
                String profession = rs1.getString(2);
                String serviceDescription = rs1.getString(3);
                String achivements = rs1.getString(4);
                PreparedStatement ps2 = connection.prepareStatement(sql1);
                ps2.setInt(1, id);
                ResultSet rs2 = ps2.executeQuery();
                while (rs2.next()) {
                    skillList.add(new Skill(rs2.getInt(1), rs2.getString(2)));
                }
                mentorCVList.add(new MentorCV(id, profession, profession, serviceDescription, achivements, skillList));
            }

        } catch (Exception e) {

        }
    }

    // Insert MentorCV, insert Mentor_Skills
    public void insert(int id, String profession, String introduction, String serviceDescription, String achivements, List<Skill> skillList) {
        String sql = "insert into Mentor_CV values(?,?,?,?)",
                sql1 = "insert into Mentor_Skill values(?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, profession);
            ps.setString(3, introduction);
            ps.setString(4, serviceDescription);
            ps.setString(5, achivements);
            ps.executeUpdate();
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            for (Skill skill : skillList) {
                ps1.setInt(1, id);
                ps1.setInt(2, skill.getId());
                ps1.executeUpdate();
            }
        } catch (Exception e) {

        }
    }
    // update Mentor_CV

    public void update(int id, String profession, String introduction, String serviceDescription, String achivements,List<Skill> skillList) {
        String sql = "Update Mentor_CV set Profession=?, Introduction=?,Service_Description=?,Achivements=? where Mentor_ID=?",
        sql1 = "delete from Mentor_Skills where Mentor_ID = ?",
        sql2 = "insert into Mentor_Skill values(?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, profession);
            ps.setString(3, introduction);
            ps.setString(4, serviceDescription);
            ps.setString(5, achivements);
            ps.executeUpdate();
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setInt(1, id);
            ps1.executeUpdate();
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            for (Skill skill : skillList) {
                ps2.setInt(1, id);
                ps2.setInt(2, skill.getId());
                ps2.executeUpdate();
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

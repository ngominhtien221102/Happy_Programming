/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Invitation;
import model.MentorCV;
import model.Skill;

/**
 *
 * @author ASUS
 */
public class InvitationDAO extends DBContext {

    private ArrayList<Invitation> Invitation;

    public ArrayList<Invitation> getInvitation() {
        return Invitation;
    }

    public void setInvitation(ArrayList<Invitation> Invitation) {
        this.Invitation = Invitation;
    }

    // Load Invitation
    public void load() {
        Invitation = new ArrayList<>();
        String sql = "select * from Invitation";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                int mentorId = rs.getInt(2);
                int menteeId = rs.getInt(3);
                int skillId = rs.getInt(4);
                int statusId = rs.getInt(5);
                String title = rs.getString(6);
                String deadlineDate = rs.getString(7);
                String content = rs.getString(8);
                Invitation.add(new Invitation(id, mentorId, menteeId, skillId, statusId, title, deadlineDate, content));
            }

        } catch (Exception e) {

        }
    }

    // Insert Invitation
    public void insert(int mentorId, int menteeId, int skillId, boolean status, String title, String deadlineDate, String content) {
        String sql = "insert into Mentor_CV values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, mentorId);
            ps.setInt(2, menteeId);
            ps.setInt(3, skillId);
            ps.setBoolean(4, status);
            ps.setString(5, title);
            ps.setString(6, deadlineDate);
            ps.setString(7, content);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    // update Invitation

    public void update(int id, int skillId, String title, String deadlineDate, String content) {
        String sql = "Update Invitation set Skill_ID=?,Title=?,Deadline_date=?,[Content]=? where Invitation_ID=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, skillId);
            ps.setString(2, title);
            ps.setString(3, deadlineDate);
            ps.setString(4, content);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    // delete Mentor_CV -> Delete Mentor_Skills
    public void delete(int id) {
        String sql = "delete from Invitation where Invitation_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (Exception e) {

        }
    }
}

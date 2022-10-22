/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import model.Invitation;

/**
 *
 * @author ASUS
 */
public class InvitationDAO extends DBContext {

    private ArrayList<Invitation> Invitation;

    public ArrayList<Invitation> getInvitation() {
        load();
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
                String createdAt = rs.getString(9);
                Invitation.add(new Invitation(id, mentorId, menteeId, skillId, statusId, title, deadlineDate, content,createdAt));
            }

        } catch (Exception e) {

        }
    }

    // Insert Invitation
    public Invitation insert(Invitation i) {
        String sql = "insert into Invitation values(?,?,?,?,?,?,?,?)";
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, i.getMentorID());
            ps.setInt(2, i.getMenteeID());
            ps.setInt(3, i.getSkillID());
            ps.setInt(4, i.getStatusID());
            ps.setString(5, i.getTitle());
            ps.setString(6, i.getDeadlineDate());
            ps.setString(7, i.getContent());
            ps.setString(8, date);
            ps.executeUpdate();

            sql = "SELECT top(1) [Invitation_ID]\n"
                    + "  FROM [dbo].[Invitation]\n"
                    + "  order by Invitation_ID desc";
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                i.setID(rs.getInt(1));
                i.setCreatedAt(date);
            }
            
        } catch (Exception e) {

        }
        return i;
    }
    // update Invitation

    public void update(Invitation i) {
        String sql = "Update Invitation set Skill_ID=?,Title=?,Deadline_date=?,[Content]=?,Status_ID=? where Invitation_ID=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, i.getSkillID());
            ps.setString(2, i.getTitle());
            ps.setString(3, i.getDeadlineDate());
            ps.setString(4, i.getContent());
            ps.setInt(5, i.getStatusID());
            ps.setInt(6, i.getID());
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

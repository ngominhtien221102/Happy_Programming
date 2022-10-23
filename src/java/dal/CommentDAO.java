/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import model.Comment;

/**
 *
 * @author ADMIN
 */
public class CommentDAO extends DBContext {

    private ArrayList<Comment> cmList;

    public CommentDAO() {
    }

    public ArrayList<Comment> getCmList() {
        load();
        return cmList;
    }

    public void setCmList(ArrayList<Comment> cmList) {
        this.cmList = cmList;
    }

    public void load() {
        cmList = new ArrayList<>();
        String sql = "select * from [dbo].[Comment]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Comment_ID = rs.getInt(1);
                int Mentor_ID = rs.getInt(2);
                int Mentee_ID = rs.getInt(3);
                int Skill_ID = rs.getInt(4);
                String Date = rs.getString(5);
                String Content = rs.getString(6);

                cmList.add(new Comment(Comment_ID, Mentor_ID, Mentee_ID, Skill_ID, Date, Content));
            }
        } catch (Exception e) {
            System.out.println("Error Comment" + e.getMessage());
        }
    }

    public Comment insert(Comment cmt) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();

        String sql = "INSERT INTO [dbo].[Comment]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Mentee_ID]\n"
                + "           ,[Skill_ID]\n"
                + "           ,[Created_at]\n"
                + "           ,[Content])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cmt.getMentorID());
            ps.setInt(2, cmt.getMenteeID());
            ps.setInt(3, cmt.getSkillID());
            ps.setString(4, date);
            ps.setString(5, cmt.getContent());
            ps.execute();

            String sql1 = "SELECT top(1) [Comment_ID]\n"
                    + "  FROM [dbo].[Comment]\n"
                    + "  order by Comment_ID desc";

            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                cmt.setID(rs.getInt(1));
            }

        } catch (Exception e) {
            System.out.println("Error Comment" + e.getMessage());
        }
        return cmt;
    }

    public void delete(int Comment_ID) {
        String sql = "delete from [dbo].[Comment] where Comment_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Comment_ID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error Comment" + e.getMessage());

        }
    }

    public void update(Comment cmt) {
        String sql = "UPDATE [dbo].[Comment]\n"
                + "   SET [Mentor_ID] = ?\n"
                + "      ,[Mentee_ID] = ?\n"
                + "      ,[Skill_ID] = ?\n"
                + "      ,[Created_at] = ?\n"
                + "      ,[Content] = ?\n"
                + " WHERE Comment_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cmt.getMentorID());
            ps.setInt(2, cmt.getMenteeID());
            ps.setInt(3, cmt.getSkillID());
            ps.setString(4, cmt.getCreatedAt());
            ps.setString(5, cmt.getContent());
            ps.setInt(6, cmt.getID());
            ps.execute();

        } catch (Exception e) {
            System.out.println("Error Comment" + e.getMessage());

        }
    }

}

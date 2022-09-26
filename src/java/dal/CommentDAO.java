/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import model.Comment;

/**
 *
 * @author ADMIN
 */
public class CommentDAO extends DBContext{
    public String status = "ok";

    public CommentDAO() {
    }   

    public ArrayList<Comment> loadCommentList() {
        ArrayList<Comment> cmList = new ArrayList<Comment>();
        String sql = "select * from [dbo].[Comment]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Comment_ID = rs.getInt(1);
                int Mentor_ID = rs.getInt(2);
                int Mentee_ID = rs.getInt(3);
                int Skill_ID = rs.getInt(4);
                Date email = rs.getDate(5);
                String Content = rs.getString(6);
       
                cmList.add(new Comment(Comment_ID, Mentor_ID, Mentee_ID, Skill_ID, email, Content));
            }
        } catch (Exception e) {
            status = "Error Comment" + e.getMessage();
        }
        return cmList;
    }   

    public void Insert(int Mentor_ID, int Mentee_ID, int Skill_ID, String Content) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        
        String sql = "INSERT INTO [dbo].[Comment]\n" +
"           ([Mentor_ID]\n" +
"           ,[Mentee_ID]\n" +
"           ,[Skill_ID]\n" +
"           ,[Created_at]\n" +
"           ,[Content])\n" +
"     VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Mentor_ID);
            ps.setInt(2, Mentee_ID);
            ps.setInt(3, Skill_ID);
            ps.setString(4, date);
            ps.setString(5, Content);
            ps.execute();
        } catch (Exception e) {
            status = "Error " + e.getMessage();
        }
    }

    public void Del(int Comment_ID) {
        String sql = "delete from [dbo].[Comment] where Comment_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Comment_ID);
            ps.execute();
        } catch (Exception e) {
            status = "Error at delete comment" + e.getMessage();
        }
    }

    public void Update(int Comment_ID,String Content) {
        String sql = "UPDATE [dbo].[Comment] set Content = ? where Comment_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, Content);
            ps.setInt(2, Comment_ID);
            ps.execute();

        } catch (Exception e) {
            status = "Error at Update comment " + e.getMessage();
        }
    }

}

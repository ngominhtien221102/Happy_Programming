/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Post;

/**
 *
 * @author Lenovo
 */
public class PostDAO extends DBContext {

    private ArrayList<Post> postList;

    public PostDAO() {
    }

    public ArrayList<Post> getPostList() {
        load();
        return postList;
    }

    public void setPostList(ArrayList<Post> postList) {
        this.postList = postList;
    }

    public void load() {
        postList = new ArrayList<>();
        String sql = "select * from [dbo].[Post]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt(1);
                String Title = rs.getString(2);
                String Content = rs.getString(3);
                postList.add(new Post(ID, Title, Content));
            }
        } catch (SQLException e) {
            System.out.println("Error Post" + e.getMessage());
        }
    }

    public Post insert(Post post) {

        String sql = "INSERT INTO [dbo].[Post]\n"
                + "           (Title\n"
                + "           ,[Content])\n"
                + "     VALUES(?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, post.getTitle());
            ps.setString(2, post.getContent());
            ps.execute();

            String sql1 = "SELECT top(1) [PostID]\n"
                    + "  FROM [dbo].[Post]\n"
                    + "  order by PostID desc";
            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                post.setID(rs.getInt(1));
            }
        } catch (SQLException e) {
            System.out.println("Error Request" + e.getMessage());
        }
        return post;
    }

    public void delete(int postID) {
        String sql = "delete from [dbo].[Post] where PostID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, postID);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error Post" + e.getMessage());
        }
    }

    public void update(Post post) {
        String sql = "UPDATE [dbo].[Post]\n"
                + "   SET [Title] = ?\n"
                + "      ,[Content] = ?\n"
                + " WHERE PostID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, post.getTitle());
            ps.setString(2, post.getContent());
            ps.setInt(3, post.getID());
            ps.execute();

        } catch (SQLException e) {
            System.out.println("Error Post" + e.getMessage());
        }
    }
    
    
    
}

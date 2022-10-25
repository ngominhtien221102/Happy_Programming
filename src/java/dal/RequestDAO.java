/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import model.Request;

/**
 *
 * @author ADMIN
 */
public class RequestDAO extends DBContext {

    private ArrayList<Request> reqList;

    public RequestDAO() {
    }

    public ArrayList<Request> getReqList() {
        load();
        return reqList;
    }

    public void setReqList(ArrayList<Request> reqList) {
        this.reqList = reqList;
    }

    public void load() {
        reqList = new ArrayList<>();
        String sql = "select * from [dbo].[Request]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Request_ID = rs.getInt(1);
                int Mentor_ID = rs.getInt(2);
                int Mentee_ID = rs.getInt(3);
                String Content = rs.getString(4);
                String Date = rs.getString(5);
                String Title = rs.getString(6);
                reqList.add(new Request(Request_ID, Mentor_ID, Mentee_ID, Date, Content, Title));
            }
        } catch (SQLException e) {
            System.out.println("Error Request" + e.getMessage());
        }
    }

    public Request insert(Request req) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String sql = "INSERT INTO [dbo].[Request]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Mentee_ID]\n"
                + "           ,[Content]\n"
                + "           ,[Created_at]\n"
                + "           ,[Title])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, req.getMentorID());
            ps.setInt(2, req.getMenteeID());
            ps.setString(3, req.getContent());
            ps.setString(4, date);
            ps.setString(5, req.getTitle());
            ps.execute();

            String sql1 = "SELECT top(1) [Request_ID]\n"
                    + "  FROM [dbo].[Request]\n"
                    + "  order by Request_ID desc";

            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                req.setCreatedAt(date);
                req.setID(rs.getInt(1));
            }

        } catch (SQLException e) {
            System.out.println("Error Request" + e.getMessage());
        }
        return req;
    }

    public void delete(int Request_ID) {
        String sql = "delete from [dbo].[Request] where Request_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Request_ID);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error Request" + e.getMessage());
        }
    }

    public void update(Request req) {
        String sql = "UPDATE [dbo].[Request]\n"
                + "   SET [Mentor_ID] = ?\n"
                + "      ,[Mentee_ID] = ?\n"
                + "      ,[Content] = ?\n"
                + "      ,[Created_at] = ?\n"
                + "      ,[Title] = ?\n"
                + " WHERE Rate_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, req.getMentorID());
            ps.setInt(2, req.getMenteeID());
            ps.setString(3, req.getContent());
            ps.setString(4, req.getCreatedAt());
            ps.setString(5, req.getTitle());
            ps.setInt(6, req.getID());
            ps.execute();

        } catch (SQLException e) {
            System.out.println("Error Request" + e.getMessage());
        }
    }
}

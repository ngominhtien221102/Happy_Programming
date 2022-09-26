/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import model.Request;

/**
 *
 * @author ADMIN
 */
public class RequestDAO extends DBContext{
    public String status = "ok";

    private ArrayList<Request> reqList;
    
    public RequestDAO() {
    }   

    public ArrayList<Request> getReqList() {
        return reqList;
    }

    public void setReqList(ArrayList<Request> reqList) {
        this.reqList = reqList;
    }
     

    public void loadRequestList() {
        reqList = new ArrayList<>();
        String sql = "select * from [dbo].[Request]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Request_ID = rs.getInt(1);
                int Mentor_ID = rs.getInt(2);
                int Mentee_ID = rs.getInt(3);
                Date email = rs.getDate(4);
                String Content = rs.getString(5);
       
                reqList.add(new Request(Request_ID, Mentor_ID, Mentee_ID, email, Content));
            }
        } catch (Exception e) {
            status = "Error Request" + e.getMessage();
        }
    }   

    public void Insert(int Mentor_ID, int Mentee_ID, int Skill_ID, String Content) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        
        String sql = "INSERT INTO [dbo].[Request]\n" +
"           ([Mentor_ID]\n" +
"           ,[Mentee_ID]\n" +
"           ,[Content]\n" +
"           ,[Created_at])\n" +
"     VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Mentor_ID);
            ps.setInt(2, Mentee_ID);
            ps.setString(3, date);
            ps.setString(4, Content);
            ps.execute();
        } catch (Exception e) {
            status = "Error " + e.getMessage();
        }
    }

    public void Del(int Request_ID) {
        String sql = "delete from [dbo].[Request] where Request_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Request_ID);
            ps.execute();
        } catch (Exception e) {
            status = "Error at delete request" + e.getMessage();
        }
    }

    public void Update(int Request_ID,String Content) {
        String sql = "UPDATE [dbo].[Request] set Content = ? where Request_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, Content);
            ps.setInt(2, Request_ID);
            ps.execute();

        } catch (Exception e) {
            status = "Error at Update request " + e.getMessage();
        }
    }
}

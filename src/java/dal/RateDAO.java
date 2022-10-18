/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import model.Rate;

/**
 *
 * @author ADMIN
 */
public class RateDAO extends DBContext {

    private ArrayList<Rate> rateList;

    public RateDAO() {

    }

    public ArrayList<Rate> getRateList() {
        load();
        return rateList;
    }

    public void setRateList(ArrayList<Rate> rateList) {
        this.rateList = rateList;
    }

    public HashMap<Integer, Float> getHmAvgRate() {
        HashMap<Integer, Float> avgRateHm = new HashMap<>();
        String sql = "SELECT Mentor_ID, avg (1.0 * [Rate])\n"
                + "  FROM [dbo].[Rate]\n"
                + "  Group by Mentor_ID";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int MentorId = rs.getInt(1);
                float rate = rs.getFloat(2);
                avgRateHm.put(MentorId, rate);
            }
        } catch (Exception e) {
            System.out.println("Error get average rate " + e.getMessage());

        }
        return avgRateHm;
        
    }

    public void load() {
        rateList = new ArrayList<>();
        String sql = "select * from [dbo].[Rate]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Rate_ID = rs.getInt(1);
                int Mentee_ID = rs.getInt(2);
                int Mentor_ID = rs.getInt(3);
                int Skill_ID = rs.getInt(4);
                int Rate = rs.getInt(5);

                rateList.add(new Rate(Rate_ID, Mentor_ID, Mentee_ID, Skill_ID, Rate));
            }
        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }

    public Rate insert(Rate rate) {
        String sql = "INSERT INTO [dbo].[Rate]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Mentee_ID]\n"
                + "           ,[Skill_ID]\n"
                + "           ,[Rate])\n"
                + "     VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, rate.getMentorID());
            ps.setInt(2, rate.getMenteeID());
            ps.setInt(3, rate.getSkillID());
            ps.setInt(4, rate.getRate());
            ps.execute();

            String sql1 = "SELECT top(1) [Rate_ID]\n"
                    + "  FROM [dbo].[Rate]\n"
                    + "  order by Rate_ID desc";

            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                rate.setID(rs.getInt(1));
            }

        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
        return rate;
    }

    public void delete(int Rate_ID) {
        String sql = "delete from [dbo].[Rate] where Rate_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Rate_ID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }

    public void update(Rate rate) {
        String sql = "UPDATE [dbo].[Rate]\n"
                + "   SET [Mentee_ID] = ?\n"
                + "      ,[Mentor_ID] = ?\n"
                + "      ,[Skill_ID] = ?\n"
                + "      ,[Rate] = ?\n"
                + " WHERE Rate_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, rate.getMenteeID());
            ps.setInt(2, rate.getMentorID());
            ps.setInt(3, rate.getSkillID());
            ps.setInt(4, rate.getRate());
            ps.setInt(5, rate.getID());
            ps.execute();

        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }
}

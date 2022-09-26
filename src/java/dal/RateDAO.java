/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
        return rateList;
    }

    public void setRateList(ArrayList<Rate> rateList) {
        this.rateList = rateList;
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

    public void Insert(int Mentor_ID, int Mentee_ID, int Skill_ID, String Content) {
        String sql = "INSERT INTO [dbo].[Rate]\n"
                + "           ([Mentor_ID]\n"
                + "           ,[Skill_ID]\n"
                + "           ,[Rate])\n"
                + "     VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Mentor_ID);
            ps.setInt(2, Mentee_ID);
            ps.setInt(3, Skill_ID);
            ps.setString(4, Content);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }

    public void Del(int Rate_ID) {
        String sql = "delete from [dbo].[Rate] where Rate_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Rate_ID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }

    public void Update(int Rate_ID, int Rate) {
        String sql = "UPDATE [dbo].[Rate] set Rate = ? where Rate_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Rate);
            ps.setInt(2, Rate_ID);
            ps.execute();

        } catch (Exception e) {
            System.out.println("Error Rate" + e.getMessage());

        }
    }
}

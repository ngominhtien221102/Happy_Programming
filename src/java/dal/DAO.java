/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Lenovo
 */
public class DAO {

    private ArrayList<Users> usList;
    private ArrayList<UserProfiles> usProList;
    private String status;
    private Connection con;

    public DAO() {
    }

    public ArrayList<Users> getUsList() {
        return usList;
    }

    public ArrayList<UserProfiles> getUsProList() {
        return usProList;
    }

    public void setUsList(ArrayList<Users> usList) {
        this.usList = usList;
    }

    public void setUsProList(ArrayList<UserProfiles> usProList) {
        this.usProList = usProList;
    }

    public ArrayList<Users> getUserList() {
        ArrayList<Users> uList = new ArrayList<>();
        String sql = "Select * from User";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                uList.add(new Users(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getBoolean(5)));
            }
        } catch (SQLException e) {
            status = "Error at read User" + e.getMessage();
        }
        return uList;
    }

    public ArrayList<UserProfiles> getUserProList() {
        ArrayList<UserProfiles> uProList = new ArrayList<>();
        String sql = "Select * from User";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                uProList.add(new UserProfiles(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6).toLocalDate(), rs.getInt(7), rs.getBoolean(8), rs.getDate(9).toLocalDate()));
            }
        } catch (SQLException e) {
            status = "Error at read User_Profile" + e.getMessage();
        }
        return uProList;
    }

    public void inserUser(int roleID, String accountName, String passWord) {
        boolean Status = false;
        String sql = "Insert into [User] values (?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, roleID);
            ps.setString(2, accountName);
            ps.setString(3, passWord);
            ps.setBoolean(4, Status);
            ps.execute();
        } catch (Exception e) {
            status = "Error at insert User " + e.getMessage();
        }
    }
    
    public void updateUser(int userID,int roleID, String passWord, boolean Status)
    {
         String sql = "Update [User] set Role_ID=?, Password=?, Status=?  where User_ID =?";
         try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(4, userID);
            ps.setInt(1, roleID);
            ps.setString(2, passWord);
            ps.setBoolean(3, Status);
            ps.execute();
        } catch (Exception e) {
            status = "Error at Update User" + e.getMessage();
        }
    }
    
    

    public void insertUseProfile(int userID, String firstName, String lastName, String Avatar, String Email, String Dob, int addressID, boolean Gender) {
        LocalDate curDate = LocalDate.now();
        String createAt = curDate.toString();

        String sql = "Insert into User_Profile values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, Avatar);
            ps.setString(5, Email);
            ps.setString(6, Dob);
            ps.setInt(7, addressID);
            ps.setBoolean(8, Gender);
            ps.setString(9, createAt);
            ps.execute();
        } catch (Exception e) {
            status = "Error at insert User_Profile " + e.getMessage();
        }
    }
    
    public void updateUserProfile(int userID, String firstName, String lastName, 
            String Avatar, String Email, String Dob, int addressID, boolean Gender)
    {
        String sql = "Update [User_Profile] set Firstname=?, Lastname=?, Avatar=?, Email=?,Dob=?,"
                + "Address_ID=?, Gender=? where User_ID=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(8, userID);
            ps.setString(1, firstName );
            ps.setString(2, lastName);
            ps.setString(3,Avatar);
            ps.setString(4, Email);
            ps.setString(5, Dob);
            ps.setInt(6, addressID);
            ps.setBoolean(7, Gender);
            ps.execute();
        } catch (Exception e) {
            status = "Error at Update User_Profile" + e.getMessage();
        }
    }
    
}

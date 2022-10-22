/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Contact;

/**
 *
 * @author minhd
 */
public class ContactDAO extends DBContext{
    private ArrayList<Contact> cList;

    public ContactDAO() {
    }
    public ArrayList<Contact> getcList() {
        load();
        return cList;
    }
    public void load() {
        cList = new ArrayList<>();
        String sql = "select * from [dbo].[Contact]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int contactID = rs.getInt(1);
                String name = rs.getString(2);
                String mail = rs.getString(3);
                String subject = rs.getString(4);
                String message = rs.getString(5);
                cList.add(new Contact(contactID, name, mail, subject, message));
            }
        } catch (Exception e) {
            System.out.println("Error Contact" + e.getMessage());
        }
    }
    public Contact insert(Contact con) {
        String sql = "INSERT INTO [dbo].[Contact]\n"
                + "           ([Name]\n"
                + "           ,[Mail]\n"
                + "           ,[Subject]\n"
                + "           ,[Message])\n"
                + "     VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, con.getName());
            ps.setString(2, con.getMail());
            ps.setString(3, con.getSubject());
            ps.setString(4, con.getMessage());
            ps.execute();

            String sql1 = "SELECT top(1) [ContactID]\n"
                    + "  FROM [dbo].[Contact]\n"
                    + "  order by ContactID desc";

            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                con.setContactID(rs.getInt(1));
            }

        } catch (Exception e) {
            System.out.println("Error Contact" + e.getMessage());
        }
        return con;
    }
     public void delete(int contactID) {
        String sql = "delete from [dbo].[Contact] where ContactID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, contactID);
            ps.execute();
        } catch (Exception e) {
            System.out.println("Error Contact" + e.getMessage());

        }
    }
}

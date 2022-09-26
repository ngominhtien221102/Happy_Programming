/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Address;

/**
 *
 * @author minhd
 */
public class AddressDAO extends DBContext {

    private String status = "ok";
    private ArrayList<Address> addresslst;

    public AddressDAO() {

    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public ArrayList<Address> getAddresslst() {
        return addresslst;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void Insert(String tinh, String huyen, String xa) {
        String sql
                = "INSERT INTO [Happy_Programming].[dbo].[Address]\n"
                + "           ([Tinh]\n"
                + "           ,[Huyen]\n"
                + "           ,[Xa])\n"
                + "     VALUES (?,?,?);\n";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, tinh);
            ps.setString(2, huyen);
            ps.setString(3, xa);
            ps.execute();
        } catch (SQLException e) {
            status = "error at insert Address " + e.getMessage();
        }
    }

    public void Update(int id, String tinh, String huyen, String xa) {
        String sql = "UPDATE [dbo].[Address]\n"
                + "   SET [Tinh] = ?\n"
                + "      ,[Huyen] = ?\n"
                + "      ,[Xa] = ?\n"
                + " WHERE Address_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(4, id);
            ps.setString(1, tinh);
            ps.setString(2, huyen);
            ps.setString(3, xa);
            ps.execute();
        } catch (SQLException e) {
            status = "error at update Address " + e.getMessage();
        }
    }

    public void Load() {
        addresslst = new ArrayList<>();
        String sql = "SELECT * FROM Address";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Address address = new Address();
                address.setId(rs.getInt(1));
                address.setTinh(rs.getString(2));
                address.setHuyen(rs.getString(3));
                address.setXa(rs.getString(4));
                addresslst.add(address);
            }
        } catch (SQLException e) {
            status = "error at load Address " + e.getMessage();
        }

    }

    public void Delete(int id) {
        String sql = "DELETE FROM [dbo].[Address]\n"
                + "      WHERE Address_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            status = "error at delete Address " + e.getMessage();
        }
    }
}

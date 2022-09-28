/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Response;

/**
 *
 * @author minhd
 */
public class ResponseDAO extends DBContext {

    private ArrayList<Response> responselst;

    public ResponseDAO() {
    }

    public void setResponselst(ArrayList<Response> responselst) {
        this.responselst = responselst;
    }


    public ArrayList<Response> getResponselst() {
        load();
        return responselst;
    }

    public void insert(Response response) {

        String sql = "INSERT INTO [dbo].[Response]\n"
                + "           ([Request_ID]\n"
                + "           ,[Content]\n"
                + "           ,[Created_at])\n"
                + "     VALUES\n"
                + "           (?,?,?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, response.getId());
            ps.setString(2, response.getContent());
            ps.setString(3, response.getCreate_at());
            ps.execute();
        } catch (SQLException e) {

        }
    }

    public void update(Response response) {
        Date date = new Date(System.currentTimeMillis());
        String sql = "UPDATE [dbo].[Response]\n"
                + "   SET [Content] = ?\n"
                + " WHERE Response_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, response.getId());
            ps.setString(1, response.getContent());
            ps.execute();
        } catch (SQLException e) {

        }
    }

    public void load() {
        responselst = new ArrayList<>();
        String sql = "SELECT * FROM Response";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Response response = new Response();
                response.setId(rs.getInt(1));
                response.setRequest_id(rs.getInt(2));
                response.setContent(rs.getString(3));
                response.setCreate_at(rs.getString(4));
                responselst.add(response);
            }
        } catch (SQLException e) {

        }

    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Response]\n"
                + "      WHERE Response_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {

        }
    }
}

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
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String sql = "INSERT INTO [dbo].[Response]\n"
                + "           ([Request_ID]\n"
                + "           ,[Content]\n"
                + "           ,[Created_at]\n"
                + "           ,[User_ID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, response.getRequestID());
            ps.setString(2, response.getContent());
            ps.setString(3, date);
            ps.setInt(4, response.getUserID());
            ps.execute();
            String sql1 = "SELECT top(1) [Response_ID]\n"
                    + "  FROM [dbo].[Response]\n"
                    + "  order by [Response_ID] desc";
            ps = connection.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                response.setID(rs.getInt(1));
                response.setCreateAt(date);
            }
        } catch (SQLException e) {

        }
    }

    public void update(Response response) {
        String sql = "UPDATE [dbo].[Response]\n"
                + "   SET [Content] = ?\n"
                + " WHERE Response_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, response.getID());
            ps.setString(1, response.getContent());
            ps.execute();
        } catch (SQLException e) {

        }
    }

    public void load() {
        responselst = new ArrayList<>();
        String sql = "SELECT [Response_ID]\n"
                + "      ,[Request_ID]\n"
                + "      ,[Content]\n"
                + "      ,[Created_at]\n"
                + "      ,[User_ID]\n"
                + "  FROM [dbo].[Response]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Response response = new Response();
                response.setID(rs.getInt(1));
                response.setRequestID(rs.getInt(2));
                response.setContent(rs.getString(3));
                response.setCreateAt(rs.getString(4));
                response.setUserID(rs.getInt(5));
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


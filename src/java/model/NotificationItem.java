/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class NotificationItem {

    private int ID;
    // kieu notification, vd: invitation, request, response
    private String type;
    private int menteeID;
    private String createAt;

    public NotificationItem() {
    }

    public NotificationItem(int ID, String type, int menteeID, String createAt) {
        this.ID = ID;
        this.type = type;
        this.menteeID = menteeID;
        this.createAt = createAt;
    }

    

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getMenteeID() {
        return menteeID;
    }

    public void setMenteeID(int menteeID) {
        this.menteeID = menteeID;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;



/**
 *
 * @author ASUS
 */
public class Invitation {
    private int ID;
    private int mentorID;
    private int menteeID;
    private int skillID;
    private int statusID;
    private String title;
    private String deadlineDate;
    private String content;

    public Invitation() {
    }

    public Invitation(int id, int mentorId, int menteeId, int skillId, int status, String title, String deadlineDate, String content) {
        this.ID = id;
        this.mentorID = mentorId;
        this.menteeID = menteeId;
        this.skillID = skillId;
        this.statusID = status;
        this.title = title;
        this.deadlineDate = deadlineDate;
        this.content = content;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getMentorID() {
        return mentorID;
    }

    public void setMentorID(int mentorID) {
        this.mentorID = mentorID;
    }

    public int getMenteeID() {
        return menteeID;
    }

    public void setMenteeID(int menteeID) {
        this.menteeID = menteeID;
    }

    public int getSkillID() {
        return skillID;
    }

    public void setSkillID(int skillID) {
        this.skillID = skillID;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Invitation{" + "id=" + ID + ", mentorId=" + mentorID + ", menteeId=" + menteeID + ", skillId=" + skillID + ", status=" + statusID + ", title=" + title + ", deadlineDate=" + deadlineDate + ", content=" + content + '}';
    }

    

    
    
}

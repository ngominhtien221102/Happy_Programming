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
    private String createdAt;

    public Invitation() {
    }

    public Invitation(int ID, int mentorID, int menteeID, int skillID, int statusID, String title, String deadlineDate, String content, String createdAt) {
        this.ID = ID;
        this.mentorID = mentorID;
        this.menteeID = menteeID;
        this.skillID = skillID;
        this.statusID = statusID;
        this.title = title;
        this.deadlineDate = deadlineDate;
        this.content = content;
        this.createdAt = createdAt;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
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
    
    public String getTitleLimit(){
        if (title.length()>26){
            return title.substring(0, 26);
        }
        return title;
    }

    @Override
    public String toString() {
        return "Invitation{" + "id=" + ID + ", mentorId=" + mentorID + ", menteeId=" + menteeID + ", skillId=" + skillID + ", status=" + statusID + ", title=" + title + ", deadlineDate=" + deadlineDate + ", content=" + content + '}';
    }

}
